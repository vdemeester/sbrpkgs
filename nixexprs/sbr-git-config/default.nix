{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/git-config/archive/v${version}.tar.gz";
  sha256 = "17vbhp03x5agfnp0m7mm6qhk4k866karsn19vncnyj07ppxznm2g";
  name = "sbr-git-config";
  version = "0.1.2";
}
