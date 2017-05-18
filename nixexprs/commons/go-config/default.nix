{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "0rjbirxsa4b6973s32sjy62bjkzffkfkvp0jyhjpnxi3gxlbhml0";
  name = "sbr-go-config";
  version = "0.3.4";
}
