{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "1kixnhlad5jm2hz8pdbjii9dgisa2rgx3s3kjcmbghs9awsisj4k";
  name = "sbr-emacs-config";
  version = "0.2";
}
