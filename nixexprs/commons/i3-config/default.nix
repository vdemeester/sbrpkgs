{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "008qs5gxasgz7v5wg09572a6f195l2sijfww0gx37hd6rh9i6ykw";
  name = "sbr-i3-config";
  version = "1.7.2";
}
