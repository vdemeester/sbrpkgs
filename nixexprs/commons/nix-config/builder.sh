source $stdenv/setup

dest=$out/nix-home/sbr-nix-config/

# nixpkgs configuration
mkdir -p $dest/.nixpkgs
cp $src/config.nix $dest/.nixpkgs/

# go package direnv/nix-shells
mkdir -p $dest/src/github.com
cp $src/src/{.envrc,default.nix} $dest/src/
GO_PACKAGES=(vdemeester docker containous kubernetes moby linuxkit opencontainers containerd google gotestyourself)
for pkg in ${GO_PACKAGES[@]}; do
    mkdir -p $dest/src/github.com/${pkg}
done
