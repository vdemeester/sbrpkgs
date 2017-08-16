let
	_pkgs = import <nixpkgs> {};
in
	{ pkgs ? import (_pkgs.fetchFromGitHub {
		owner = "NixOS";
		repo = "nixpkgs-channels";
		rev = "129f8d7e999b1a1f0fceaecadca30211e34d85a6";
		sha256 = "1sz6xm7xgyyp7an5gh4ck6lwgxil0rkgwg0f11awv13p67z9v763";
	}) {}
}:

pkgs.stdenv.mkDerivation rec {
	name = "go-projects";
	env = pkgs.buildEnv { name = name; paths = buildInputs; };
	buildInputs = [
		pkgs.go_1_8
		pkgs.vndr
		pkgs.gnumake
		pkgs.glide
		pkgs.gcc
		pkgs.gotools
		pkgs.golint
		pkgs.godef
		pkgs.gocode
		pkgs.protobuf3_0
	];
}
