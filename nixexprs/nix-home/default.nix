{ stdenv }:

stdenv.mkDerivation {
	name = "sbr-nix-home-1.0";
	builder = ./builder.sh;
	src = ./.;
}
