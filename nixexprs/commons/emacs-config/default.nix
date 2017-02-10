{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "1b7sr3ckxagsc0p0rdmj2qw5z53128csk6c679hw5x9xvakcxjgh";
  name = "sbr-emacs-config";
  version = "0.2.3";
}
