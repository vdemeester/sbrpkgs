{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "0ga0nmxch6j1x00r6djaqj8aarx014ag9jzj2r6q4xci34qjs38p";
  name = "sbr-sh-config";
  version = "1.4";
}
