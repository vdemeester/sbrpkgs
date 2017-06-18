{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/go-config/archive/v${version}.tar.gz";
  sha256 = "0rjfpba3bh5rclfkc51ad12cad72p0bbp8lw7vj703w7vzb3lpik";
  name = "sbr-go-config";
  version = "0.3.5";
}
