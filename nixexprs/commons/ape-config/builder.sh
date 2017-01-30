source $stdenv/setup

mkdir -p $out/nix-home/sbr-ape-config/.config
cp -v $src/ape.conf $out/nix-home/sbr-ape-config/.config/
