{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/git-config/archive/v${version}.tar.gz";
  sha256 = "11w9myy1k9vx6906m0jk0n0qah1ky3nznhicv81y8ghxvjq7m5sn";
  name = "sbr-git-config";
  version = "0.1";
}
