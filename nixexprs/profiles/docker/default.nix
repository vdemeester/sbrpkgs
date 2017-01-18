{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  docker-ssh-config = import ./ssh-config {
    inherit (pkgs) stdenv gnupg;
    inherit (builtins) getEnv;
  };
}
