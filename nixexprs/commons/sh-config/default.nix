{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/sh-config/archive/v${version}.tar.gz";
  sha256 = "0m22gnr9qnimk099vpccykmygajxmcr6wrh9f3lw57argzvc9106";
  name = "sbr-sh-config";
  version = "1.3";
}
