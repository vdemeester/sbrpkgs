{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0080hrsgs1iyx07l2q9p7ag3z71a2sbjiwdg4flj8k3c7pc4yhfd";
  name = "sbr-i3-config";
  version = "1.6.4";
}
