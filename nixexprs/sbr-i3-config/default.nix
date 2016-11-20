{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0y8fsrhwf9kzgyjirk9r4s6sski6s550lf5z04fwsrz0yfi6x2yd";
  name = "sbr-i3-config";
  version = "1.4.2";
}
