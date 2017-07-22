{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "1bb89cc88sqcnjcj66vcw08y2py2yd37xa85pnr7x453iagbm2q8";
  name = "sbr-go-config";
  version = "0.5.1";
}
