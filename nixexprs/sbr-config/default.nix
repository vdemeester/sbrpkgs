{ stdenv, fetchurl, sbr-config-strip }: let

in
{ url, sha256 ? "",
  name, version ?""
}:

stdenv.mkDerivation {
  inherit name;

  src = fetchurl {
    url = url;
    sha256 = sha256;
  };

  buildInputs = [ sbr-config-strip ];
  
  builder = ./builder.sh;
  
}
