{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/scripts/archive/v${version}.tar.gz";
  sha256 = "0vrgb7893dnhrwbax8cvadfx0n6c0zbd4jqkmp0gzsgxp12af4nq";
  name = "sbr-scripts";
  version = "1.5";
}
