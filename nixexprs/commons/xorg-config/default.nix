{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/xorg-config/archive/v${version}.tar.gz";
  sha256 = "0pxqxm32q3k2q9r1md1gpbwg098wcfhs5c4zj75p7v7bqzcdwgsp";
  name = "sbr-xorg-config";
  version = "0.1";
}
