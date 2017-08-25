{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0xgyawkdkp55apg5hilz39cn326rc3yj6vya6ffskrrks586bk5f";
  name = "sbr-i3-config";
  version = "1.7.3";
}
