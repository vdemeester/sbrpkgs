{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "1ncdbys1dbjnvnr62mpc0m4132skbnk3c3f89zjmvf2val1vj7mn";
  name = "sbr-sh-config";
  version = "2.0";
}
