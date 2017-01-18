{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/git-config/archive/v${version}.tar.gz";
  sha256 = "12m5qmki3jpbmig6i3zahdv4xhn9qnlb3syp4084mds144dd1glm";
  name = "sbr-git-config";
  version = "0.1.1";
}
