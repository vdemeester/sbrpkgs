{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/i3-config/archive/v${version}.tar.gz";
  sha256 = "01280611a2nh11vdhhy7c3hbs1gaznr18m2j4qb9fpk9dr47l2as";
  name = "sbr-i3-config";
  version = "1.5.2";
}
