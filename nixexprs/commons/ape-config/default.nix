{ stdenv }:

stdenv.mkDerivation {
  name = "ape-config-0.1";
  builder = ./builder.sh;
  src = ./.;
}
