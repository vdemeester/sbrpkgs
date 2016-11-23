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

  # from nixpkgs
  docker = import ./docker {
       inherit (pkgs) stdenv lib fetchFromGitHub makeWrapper cmake pkgconfig
       go-md2man libapparmor apparmor-parser libseccomp git
       go sqlite iproute bridge-utils devicemapper systemd
       btrfs-progs iptables e2fsprogs xz utillinux xfsprogs
       procps;
  };
  dobi = import ./dobi {
       inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  vndr = import ./vndr {
       inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  doctl = import ./doctl {
       inherit (pkgs) stdenv buildGoPackage fetchFromGitHub;
  };
}
