{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "0rb7xj4n3izixpb1b5yxb0zfwg9s4p51han8yfagkjpbrak5rc25";
  name = "sbr-sh-config";
  version = "1.6";
}
