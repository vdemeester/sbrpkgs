{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "1zkfckinmr9c4hsqi8acbcmqrfyp6ra0dmhg0rpyr48dyz5zzar1";
  name = "sbr-i3-config";
  version = "1.7.6";
}
