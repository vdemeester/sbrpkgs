{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "1wvp4k5c67dj19f4y8lisgvq4h4nzwvr3228ryfp6v1ifc659d4m";
  name = "sbr-emacs-config";
  version = "0.2.1";
}
