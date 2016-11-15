{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  # configuration
  sbr-sh-config = import ./sbr-sh-config {
      inherit (pkgs) stdenv;
      sbr-config = sbr-config;
  };
  sbr-tmux-config = import ./sbr-tmux-config {
      inherit (pkgs) stdenv;
      sbr-config = sbr-config;
  };
  sbr-i3-config = import ./sbr-i3-config {
      inherit (pkgs) stdenv;
      sbr-config = sbr-config;
  };
  sbr-scripts = import ./sbr-scripts {
     inherit (pkgs) stdenv;
     sbr-config = sbr-config;
  };
  sbr-config = pkgs.callPackage ./sbr-config {
    fetchurl = pkgs.fetchurl;
    sbr-config-strip = sbr-config-strip;
  };
  sbr-config-strip = import ./sbr-config-strip {
    inherit (pkgs) stdenv;
  };
  sbr-nix-home = import ./nix-home {
    inherit (pkgs) stdenv;
  };
}
