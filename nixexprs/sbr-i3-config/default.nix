{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = https://github.com/vdemeester/i3-config/archive/v1.1.tar.gz;
  sha256 = "e31ade34c1db1401a33f83fa9a79dfd90d0d03b4fa4189f4f341bc3f703f4e99";
  name = "sbr-i3-config-${version}";
  version = "1.1";
}
