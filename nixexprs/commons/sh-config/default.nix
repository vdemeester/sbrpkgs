{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "1aww5fqswicl4xjdf0y4dixzxvfp3rz4v14lrkg58ri71rbhjylq";
  name = "sbr-sh-config";
  version = "1.5";
}
