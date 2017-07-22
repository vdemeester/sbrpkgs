source $stdenv/setup

# nixpkgs configuration
mkdir -p $out/nix-home/sbr-nix-config/.nixpkgs
cp $src/config.nix $out/nix-home/sbr-nix-config/.nixpkgs/

# go package direnv/nix-shells
GO_PACKAGES=(vdemeester docker containous kubernetes libkermit moby linuxkit opencontainers containerd google ldez)
for pkg in ${GO_PACKAGES[@]}; do
    mkdir -p $out/nix-home/src/github.com/${pkg}
    cp $src/go/{.envrc,default.nix} $out/nix-home/src/github.com/${pkg}
done
