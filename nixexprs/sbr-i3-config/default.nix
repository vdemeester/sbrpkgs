{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "18xwpadrk8jwbfgd1v2mbx8n1j2g1i392v215pvjhynyv51dmjiq";
  name = "sbr-i3-config";
  version = "1.4.3";
}
