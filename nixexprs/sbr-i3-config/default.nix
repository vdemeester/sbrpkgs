{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = https://github.com/vdemeester/i3-config/archive/v1.0.tar.gz;
  sha256 = "af3cde651a466a44cf5ff5eefa402fc38f2135f12f58506d05874f645c302ef3";
  name = "sbr-i3-config-${version}";
  version = "1.0";
}
