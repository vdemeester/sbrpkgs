{ stdenv, system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in stdenv.mkDerivation rec {
  name = "sbr-i3-config-${version}";
  version = "1.0";

  src = pkgs.fetchurl {
    url = https://github.com/vdemeester/i3-config/archive/v1.0.tar.gz;
    sha256 = "af3cde651a466a44cf5ff5eefa402fc38f2135f12f58506d05874f645c302ef3";
  };

  buildPhase = ''
    # clean vcsh stuff
    rm -vR .config .gitignore.d README.md
    # move dotfile into underscore file
    mkdir _config
    mv .i3 i3
  '';

  installPhase = ''
    ls -l
    mkdir -p $out/nix-home/_config
    chmod -R +rx $out/nix-home/_config
    cp -R i3 $out/nix-home/_config
  '';

  meta = {
    homepage = http://github.com/vdemeester/i3-config;
  };
}
