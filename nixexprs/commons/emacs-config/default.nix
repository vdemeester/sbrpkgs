{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/emacs-config/archive/v${version}.tar.gz";
  sha256 = "0d9gmgwszlaqrmkn35zq9db3n01lmw1l64r6a6igzkbf1kqcnxwx";
  name = "sbr-emacs-config";
  version = "0.2.2";
}
