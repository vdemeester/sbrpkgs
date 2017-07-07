{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "1hjkmfax6qlznd3mdwp7b9g4p79c105dk5r5s8la4cj3rxbyfw51";
  name = "sbr-go-config";
  version = "0.4.1";
}
