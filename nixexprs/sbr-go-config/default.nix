{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "0xw0847330xi04l8hcqp3s45rb20g5v2zkq2z233l0rnijfbzjc0";
  name = "sbr-go-config";
  version = "0.1";
}
