{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/tmux-config/archive/v${version}.tar.gz";
  sha256 = "0xdbc9ghgbfkgmmlqhmj7pxkvmqj2jm28cpx3d64hlpwjvnrdjcq";
  name = "sbr-tmux-config";
  version = "1.0";
}
