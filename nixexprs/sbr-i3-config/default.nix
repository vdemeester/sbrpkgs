{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "10clcgayfxj6q3pdy9x2sa1vdp3wgkl9gxrf3d09a9s30brda3lz";
  name = "sbr-i3-config";
  version = "1.4.1";
}
