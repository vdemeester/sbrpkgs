{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  # configuration
  sbr-ssh-config = import ./sbr-ssh-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  sbr-go-config = import ./sbr-go-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  sbr-emacs-config = import ./sbr-emacs-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
  sbr-git-config = import ./sbr-git-config {
    inherit (pkgs) stdenv;
    sbr-config = sbr-config;
  };
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

  # Maybe in nixpkgs at some point
  clasp = import ./clasp {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  
  # from nixpkgs
  docker = import ./docker {
    docker-proxy = docker-proxy;
    tini = tini;
    inherit (pkgs) stdenv lib fetchFromGitHub makeWrapper pkgconfig
    containerd runc go-md2man
    go sqlite iproute bridge-utils devicemapper systemd
    btrfs-progs iptables e2fsprogs xz utillinux xfsprogs
    procps;
  };
  docker-proxy = import ./docker/proxy.nix {
    inherit (pkgs) stdenv lib fetchFromGitHub go docker;
  };
  tini = import ./tini {
    inherit (pkgs) stdenv fetchFromGitHub cmake glibc;
  };
  tuck = import ./tuck {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  dobi = import ./dobi {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  vndr = import ./vndr {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
}
