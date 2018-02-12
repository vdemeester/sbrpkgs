{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/tmux-config/archive/v${version}.tar.gz";
  sha256 = "1kqhf63s09g9kq9vwnkw78221cqpvdx77n4i3f266xji4jbg091l";
  name = "sbr-tmux-config";
  version = "1.3";
}
