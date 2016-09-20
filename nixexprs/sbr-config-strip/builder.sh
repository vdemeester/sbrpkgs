source $stdenv/setup

mkdir -p $out/bin
cp $src/sbr-config-* $out/bin/
chmod +x $out/bin/sbr-config-*
