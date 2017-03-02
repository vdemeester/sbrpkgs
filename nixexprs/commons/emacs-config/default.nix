{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "10n80qj26sch977g9x1cmiv1k52d81i6hpv00kysr600wijk9z76";
  name = "sbr-emacs-config";
  version = "0.3.0";
}
