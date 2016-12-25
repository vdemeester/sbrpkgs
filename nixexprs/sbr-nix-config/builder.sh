source $stdenv/setup

mkdir -p $out/nix-home/.nixpkgs
cp $src/config.nix $out/nix-home/.nixpkgs/
