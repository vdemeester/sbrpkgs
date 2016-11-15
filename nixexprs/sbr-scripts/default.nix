{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/scripts/archive/v${version}.tar.gz";
  sha256 = "8e0e4cbf297984c877a03ee17e463ca40a24b51c69014c60d30daec66884042c";
  name = "sbr-scripts";
  version = "1.0";
}
