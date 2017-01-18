{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "1nsdrwf4j4yqydvgnyww9nz6inrxkhshhkbj8zyir5jzsrlasjvx";
  name = "sbr-go-config";
  version = "0.3";
}
