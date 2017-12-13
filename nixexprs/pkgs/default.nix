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
  
  # from/to nixpkgs
  envbox = import ./envbox {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  dobi = import ./dobi {
    inherit (pkgs) stdenv lib buildGoPackage fetchFromGitHub;
  };
  notary = import ./notary {
    inherit (pkgs) stdenv fetchurl;
  };
}
