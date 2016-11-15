{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "1am692ajn93m0kqaa45xdl36q8mmgsvgmvf81n14hbzbik7h50zr";
  name = "sbr-sh-config";
  version = "1.0";
}