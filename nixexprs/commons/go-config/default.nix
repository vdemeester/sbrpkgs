{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "08f2k1zjj4mnhq1sn5hm3w1k9d3q42z6cg3nx4mqp1gjviw57z46";
  name = "sbr-go-config";
  version = "0.5.0";
}
