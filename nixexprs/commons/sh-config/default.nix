{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "1j5vhw7bq6lhcvm9byqc480yi4g3bw2dfqvfby5506pg39rhh8z1";
  name = "sbr-sh-config";
  version = "1.7";
}
