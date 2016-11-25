{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/${version}.tar.gz";
  sha256 = "0r1r2d7dhk5x874zaal092adlm7p1yv5n1lg2i86gzwdygiaf5d4";
  name = "sbr-emacs-config";
  version = "simplify";
}
