{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "1yz1lnjswjdhkrk29d22sbbyf4kbvmzncbkgiycfqqy1kaxgry0n";
  name = "sbr-i3-config";
  version = "1.6.0";
}
