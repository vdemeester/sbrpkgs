{ stdenv }:

stdenv.mkDerivation rec {
  name = "sbr-config-strip";
  builder = ./builder.sh;
  src = ./.;
}
