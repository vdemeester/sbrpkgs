{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/tmux-config/archive/v${version}.tar.gz";
  sha256 = "0srkir11r1pzv7ysn82jyvj8vszx166r6nzfnwas2d7v8vrsayhi";
  name = "sbr-tmux-config";
  version = "1.2";
}
