{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "01c8qabjvnipg33z93kcyi1yi77fbf4j8ai98snr223r8y37srgc";
  name = "sbr-emacs-config";
  version = "0.1";
}
