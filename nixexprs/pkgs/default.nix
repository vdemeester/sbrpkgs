{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  # Maybe in nixpkgs at some point
  clasp = import ./clasp {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  tuck = import ./tuck {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  ape = import ./ape {
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
  dobi = import ./dobi {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
}
