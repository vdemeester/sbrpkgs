{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = https://github.com/vdemeester/i3-config/archive/v1.2.tar.gz;
  sha256 = "1a097db217620dff4b0e1eb965e885cc0fca9bcff9564bf2d6f99e7ac3196212";
  name = "sbr-i3-config-${version}";
  version = "1.1";
}
