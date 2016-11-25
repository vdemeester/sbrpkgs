{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "13fkirxd73vl1j3639p135c3n3vmixkvahb802sag14ak8m2dky4";
  name = "sbr-go-config";
  version = "0.2";
}
