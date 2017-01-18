{ system ? builtins.currentSystem } @ args:

let
  docker = import ./docker (args // {inherit system; });
  home = import ./home (args // {inherit system; });
in (home // docker)
