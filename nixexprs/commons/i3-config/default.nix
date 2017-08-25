{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0s99wxdb54szn7kg7077cynawg1k51739dz0wp5d1pyrg2kbh8f3";
  name = "sbr-i3-config";
  version = "1.7.4";
}
