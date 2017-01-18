{ system ? builtins.currentSystem } @ args:

let
  commons = import ./commons  (args // {inherit system; });
  profiles = import ./profiles (args // {inherit system; });
  pkgs = import ./pkgs (args // {inherit system; });
in (commons // profiles // pkgs)
