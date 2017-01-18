{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/scripts/archive/v${version}.tar.gz";
  sha256 = "1xz12ll9dkzr4q2rrgq2mmsqny57qsdyggqkphiczfqfxyyqmyyb";
  name = "sbr-scripts";
  version = "1.1";
}
