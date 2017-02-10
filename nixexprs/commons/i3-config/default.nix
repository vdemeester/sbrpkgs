{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "1ninysfvhh1nhcf2xdpzxrg26y7dv3b6ffsfysh3gz1njj1ranv0";
  name = "sbr-i3-config";
  version = "1.5.0";
}
