{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/scripts/archive/v${version}.tar.gz";
  sha256 = "06ggq2jn7xhyzinbkifcr2nrwjpxbdyrh9k8ar40812nqaxrgp9j";
  name = "sbr-scripts";
  version = "1.4";
}
