{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "06xdk9b91vvnvd2dqd0422n28nn1k1xl4kh3y6gxb296w3wc2i0w";
  name = "sbr-sh-config";
  version = "1.1";
}
