{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "0jrmd15sq29rlaglz75djnry9ija54yg7d016igirnn87gkqr7hj";
  name = "sbr-i3-config";
  version = "1.6.3";
}
