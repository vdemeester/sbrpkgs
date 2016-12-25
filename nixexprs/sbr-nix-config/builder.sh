source $stdenv/setup

mkdir -p $out/nix-home/sbr-nix-config/.nixpkgs
cp $src/config.nix $out/nix-home/sbr-nix-config/.nixpkgs/
