{ stdenv, system ? builtins.currentSystem }:

stdenv.mkDerivation rec {
  name = "sbr-nix-config";
  builder = ./builder.sh;
  src = ./.;
}
