{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0fcp6cwr8zhzdns2jxabch7pfypc5xr5sjy56ljqs3hsp5s9ygh3";
  name = "sbr-i3-config";
  version = "1.7.1";
}
