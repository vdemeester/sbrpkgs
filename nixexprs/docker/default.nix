{ stdenv, lib, fetchFromGitHub, makeWrapper, cmake, pkgconfig
, go-md2man, libapparmor, apparmor-parser, libseccomp, git
, go, sqlite, iproute, bridge-utils, devicemapper, systemd
, btrfs-progs, iptables, e2fsprogs, xz, utillinux, xfsprogs
, procps
}:

# https://github.com/docker/docker/blob/master/project/PACKAGERS.md
with lib;
let
  name = "docker-${version}";
  version = "1.13.0-rc2";
  dockerSrc = fetchFromGitHub {
    owner = "docker";
    repo = "docker";
    rev = "1f9b3ef9e9c74c2905780ac5347d018646a20022";
    sha256= "1z44k5csnjxqrsaxvc6faych8dyn4y150rgcwk0b19nqiy9ld0rg";
  };
  libnetworkSrc = fetchFromGitHub {
    owner = "docker";
    repo = "libnetwork";
    rev = "0f534354b813003a754606689722fe253101bc4e";
    sha256 = "1ah7h417llcq0xzdbp497pchb9m9qvjhrwajcjb0ybrs8v889m31";
  };
  runcSrc = fetchFromGitHub {
    owner = "docker";
    repo = "runc";
    rev = "51371867a01c467f08af739783b8beafc154c4d7";
    sha256 = "1vyc6c59npwv8xyc1qynzz5i7kwnjgf5yda4avfnap8z4zn14m0x";
  };
  containerdSrc = fetchFromGitHub {
    owner = "docker";
    repo = "containerd";
    rev = "03e5862ec0d8d3b3f750e19fca3ee367e13c090e";
    sha256 = "184sd9dwkcba3zhxnz9grw8p81x05977p36cif2dgkhjdhv12map";
  };
  tiniSrc = fetchFromGitHub {
    owner = "krallin";
    repo = "tini";
    rev = "949e6facb77383876aeff8a6944dde66b3089574";
    sha256 = "0zj4kdis1vvc6dwn4gplqna0bs7v6d1y2zc8v80s3zi018inhznw";
  };
in
stdenv.mkDerivation {
  inherit name version;

  srcs = [ dockerSrc libnetworkSrc runcSrc containerdSrc tiniSrc ];
  sourceRoot = ".";

  hardeningDisable = ["fortify"];

  buildInputs = [
    makeWrapper cmake pkgconfig go-md2man go git
    sqlite devicemapper btrfs-progs systemd
    libapparmor apparmor-parser libseccomp
  ];

  dontStrip = true;

  dontUseCmakeConfigure = true;

  DOCKER_BUILDTAGS = []
    ++ optional (systemd != null) [ "journald" ]
    ++ optional (btrfs-progs == null) "exclude_graphdriver_btrfs"
    ++ optional (devicemapper == null) "exclude_graphdriver_devicemapper";

    postUnpack = ''
    cp -fR ${dockerSrc} docker
    cp -fR ${libnetworkSrc} libnetwork
    cp -fR ${runcSrc} runc
    cp -fR ${containerdSrc} containerd
    cp -fR ${tiniSrc} tini
    chmod -R +w docker libnetwork runc containerd tini
    '';

  # systemd 230 no longer has libsystemd-journal as a separate entity from libsystemd
  postPatch = ''
    substituteInPlace docker/hack/make.sh                   --replace libsystemd-journal libsystemd
    substituteInPlace docker/daemon/logger/journald/read.go --replace libsystemd-journal libsystemd
    substituteInPlace runc/libcontainer/apparmor/apparmor.go \
      --replace /sbin/apparmor_parser ${apparmor-parser}/bin/apparmor_parser
  '';

  buildPhase = ''
    patchShebangs .

    # Build docker
    export AUTO_GOPATH=1
    # FIXME use docker.rev here
    export DOCKER_GITCOMMIT="1f9b3ef"
    cd docker
    hack/make.sh dynbinary
    cd ..

    # Build docker-proxy
    cd libnetwork
    mkdir -p .gopath/src/github.com/docker
    ln -sf $(pwd) .gopath/src/github.com/docker/libnetwork
    GOPATH="$(pwd)/.gopath:$(pwd)/Godeps/_workspace" go build -ldflags="$PROXY_LDFLAGS" -o docker-proxy ./cmd/proxy
    cd ..

    # Build runc
    cd runc
    make BUILDTAGS="seccomp apparmor"
    cd ..

    # Build containerd
    cd containerd
    mkdir -p .gopath/src/github.com/docker
    ln -s $(pwd) .gopath/src/github.com/docker/containerd
    GOPATH="$(pwd)/.gopath" make
    cd ..

    # Build tini
    cd tini
    cmake -DMINIMAL=ON
    make tini
    cd ..
  '';

  outputs = ["out" "man"];

  extraPath = makeBinPath [ iproute iptables e2fsprogs xz xfsprogs procps utillinux ];

  installPhase = ''
    install -Dm755 docker/bundles/${version}/dynbinary-client/docker-${version} $out/libexec/docker/docker
    install -Dm755 docker/bundles/${version}/dynbinary-daemon/dockerd-${version} $out/libexec/docker/dockerd

    install -Dm755 libnetwork/docker-proxy $out/libexec/docker/docker-proxy

    makeWrapper $out/libexec/docker/docker $out/bin/docker \
      --prefix PATH : "$out/libexec/docker:$extraPath"
    makeWrapper $out/libexec/docker/dockerd $out/bin/dockerd \
      --prefix PATH : "$out/libexec/docker:$extraPath"

    # docker uses containerd now
    install -Dm755 containerd/bin/containerd $out/libexec/docker/docker-containerd
    install -Dm755 containerd/bin/containerd-shim $out/libexec/docker/docker-containerd-shim

    install -Dm755 runc/runc $out/libexec/docker/docker-runc

    install -Dm755 tini/tini $out/libexec/docker/docker-init

    # systemd
    install -Dm644 docker/contrib/init/systemd/docker.service $out/etc/systemd/system/docker.service

    # completion
    install -Dm644 docker/contrib/completion/bash/docker $out/share/bash-completion/completions/docker
    install -Dm644 docker/contrib/completion/fish/docker.fish $out/share/fish/vendor_completions.d/docker.fish
    install -Dm644 docker/contrib/completion/zsh/_docker $out/share/zsh/site-functions/_docker

    # Include contributed man pages
    docker/man/md2man-all.sh -q
    manRoot="$man/share/man"
    mkdir -p "$manRoot"
    for manDir in man/man?; do
      manBase="$(basename "$manDir")" # "man1"
      for manFile in "$manDir"/*; do
        manName="$(basename "$manFile")" # "docker-build.1"
        mkdir -p "$manRoot/$manBase"
        gzip -c "$manFile" > "$manRoot/$manBase/$manName.gz"
      done
    done
  '';

  preFixup = ''
    # remove references to go compiler, gcc and glibc
    while read file; do
      sed -ri "s,${go},$(echo "${go}" | sed "s,$NIX_STORE/[^-]*,$NIX_STORE/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee,"),g" $file
      sed -ri "s,${stdenv.cc.cc},$(echo "${stdenv.cc.cc}" | sed "s,$NIX_STORE/[^-]*,$NIX_STORE/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee,"),g" $file
      sed -ri "s,${stdenv.glibc.dev},$(echo "${stdenv.glibc.dev}" | sed "s,$NIX_STORE/[^-]*,$NIX_STORE/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee,"),g" $file
    done < <(find $out -type f 2>/dev/null)
  '';

  meta = {
    homepage = http://www.docker.com/;
    description = "An open source project to pack, ship and run any application as a lightweight container";
    license = licenses.asl20;
    maintainers = with maintainers; [ offline tailhook ];
    platforms = platforms.linux;
  };
}
