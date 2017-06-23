{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0ycwk8d0lsr4lagcq7s9zjqzhi1xc0x50zrhnjzyx0jklb3a67vj";
  name = "sbr-i3-config";
  version = "1.6.2";
}
