source $stdenv/setup

dest=$out/nix-home/sbr-nix-config/

# nixpkgs configuration
mkdir -p $dest/.nixpkgs
cp $src/config.nix $dest/.nixpkgs/

# go package direnv/nix-shells
GO_PACKAGES=(vdemeester docker containous kubernetes libkermit moby linuxkit opencontainers containerd google ldez)
for pkg in ${GO_PACKAGES[@]}; do
    mkdir -p $dest/src/github.com/${pkg}
    cp $src/go/{.envrc,default.nix} $dest/src/github.com/${pkg}
done
