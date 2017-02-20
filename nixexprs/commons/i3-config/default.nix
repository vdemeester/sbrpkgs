{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "1cvcc3frrvr0795c0glbm80nv7g4pk67r7iixsrb60jmgn0cqzk6";
  name = "sbr-i3-config";
  version = "1.5.1";
}
