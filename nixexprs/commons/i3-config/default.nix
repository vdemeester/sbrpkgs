{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "13d32hpm8aj228ishlqf4w4pbh9mkdwszzawpbdi1q4vv97kxw2w";
  name = "sbr-i3-config";
  version = "1.6.1";
}
