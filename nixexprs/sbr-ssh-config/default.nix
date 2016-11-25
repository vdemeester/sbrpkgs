{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/ssh-config/archive/v${version}.tar.gz";
  sha256 = "1q0ycf4bdhjrlkz5y3206b7ajgfhlw31wz6wma59j70djx84m7m3";
  name = "sbr-ssh-config";
  version = "0.1";
}
