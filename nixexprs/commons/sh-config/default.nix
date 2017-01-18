{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "1nrzl6b9cjh7d8as1gf1fn2ysilf4c1p16b25gnzx6ld6fli7lph";
  name = "sbr-sh-config";
  version = "1.2";
}
