{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = https://github.com/vdemeester/i3-config/archive/v1.3.tar.gz;
  sha256 = "11yjd9vizh682bs5dbl0qkm3pmvm02l91myb4r9z0xng1p3ai0ls";
  name = "sbr-i3-config-${version}";
  version = "1.3";
}
