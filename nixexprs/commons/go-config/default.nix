{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "0h73i7f7yah2jrgbr37jm7cmpb9mk5ihszy2s82wanzdawgx6b7r";
  name = "sbr-go-config";
  version = "0.3.1";
}
