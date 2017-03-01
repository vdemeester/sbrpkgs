{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "0mnfjpgh1nc8503na611h3xq95jhn27kmr0qqpsfkkrcf5i7d3ka";
  name = "sbr-go-config";
  version = "0.3.2";
}
