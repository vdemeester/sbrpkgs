{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/tmux-config/archive/v${version}.tar.gz";
  sha256 = "14jk4cjdqr3kqb6489awlf109qx325jsq7ws8skjn3a5p2rnf7ns";
  name = "sbr-tmux-config";
  version = "1.1";
}
