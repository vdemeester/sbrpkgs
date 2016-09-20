{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  sbr-i3-config = import ./sbr-i3-config {
    inherit (pkgs) stdenv;
  };
}
