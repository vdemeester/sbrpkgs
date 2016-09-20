{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  sbr-i3-config = import ./sbr-i3-config {
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
}
