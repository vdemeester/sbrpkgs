{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "19h6v00qrfi46v4yl6znckkyar388wfzpbvympvq9zmk15qa8a5g";
  name = "sbr-go-config";
  version = "0.3.3";
}
