{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/git-config/archive/v${version}.tar.gz";
  sha256 = "1prassayyx9hp5wpp6a3d2vvr7606wjsbfhxg18my9h94169723q";
  name = "sbr-git-config";
  version = "0.1.4";
}
