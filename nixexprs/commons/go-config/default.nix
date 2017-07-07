{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "1p0cl65rayxa9g9zrvm2jg4cxczdm7kpl4x4pnhgvcb0vf68zdsk";
  name = "sbr-go-config";
  version = "0.4.2";
}
