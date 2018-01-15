{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "005wscx2d36mirh08fif9qcrl5lrv99xwi4i6chilgv2y66adr5p";
  name = "sbr-i3-config";
  version = "1.7.5";
}
