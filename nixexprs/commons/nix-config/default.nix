{ stdenv, system ? builtins.currentSystem }:

stdenv.mkDerivation rec {
  name = "sbr-nix-config-${version}";
  version = "0.6.4";
  builder = ./builder.sh;
  src = ./.;
}
