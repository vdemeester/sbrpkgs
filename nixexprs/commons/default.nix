{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  # configuration
  nix-config = import ./nix-config {
    inherit (pkgs) stdenv;
  };
  ssh-config = import ./ssh-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  go-config = import ./go-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  emacs-config = import ./emacs-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  git-config = import ./git-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  sh-config = import ./sh-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  tmux-config = import ./tmux-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  i3-config = import ./i3-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  xorg-config = import ./xorg-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  scripts = import ./scripts {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  ape-config = import ./ape-config {
    inherit (pkgs) stdenv;
  };
  sbr-config = pkgs.callPackage ./sbr-config {
    fetchurl = pkgs.fetchurl;
    sbr-config-strip = sbr-config-strip;
  };
  sbr-config-strip = import ./sbr-config-strip {
    inherit (pkgs) stdenv;
  };
}
