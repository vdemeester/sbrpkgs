{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "tuck-${version}";
  version = "0.1.0";
  rev = "v${version}";

  goPackagePath = "github.com/vdemeester/tuck";

  src = fetchFromGitHub {
    inherit rev;
    owner = "vdemeester";
    repo = "tuck";
    sha256 = "14zjli0yqcvx1s60g1zi93sfnwm2pmj6pibi4zs7vz55y9qgibij";
  };

  meta = {
    description = "symlink farm manager à-la-stow";
    homepage = "https://github.com/vdemeester/tuck";
    licence = lib.licenses.asl20;
  };
}
