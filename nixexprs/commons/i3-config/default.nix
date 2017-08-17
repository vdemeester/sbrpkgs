{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "1dxnszvgyfqlf3y69aa6gnbjzw21fri0xiv8iarrr4n8x97zaxcd";
  name = "sbr-i3-config";
  version = "1.7.0";
}
