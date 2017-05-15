{ stdenv, system ? builtins.currentSystem }:

stdenv.mkDerivation rec {
  name = "sbr-nix-config-${version}";
  version = "0.5.1";
  builder = ./builder.sh;
  src = ./.;
}
