let
	_pkgs = import <nixpkgs> {};
in
	{ pkgs ? import (_pkgs.fetchFromGitHub {
		owner = "NixOS";
		repo = "nixpkgs-channels";
		rev = "2e4aded366914d625a2f31208e8ac8548cb43a7e";
		sha256 = "1zcbvzxk1vyk4ngfdyss8mlb3mqp050ygpnwqny0bxbzlqkrc4bh";
	}) {}
}:

pkgs.stdenv.mkDerivation rec {
	name = "go-projects";
	env = pkgs.buildEnv { name = name; paths = buildInputs; };
	buildInputs = [
		pkgs.go_1_9
		pkgs.vndr
		pkgs.gnumake
		pkgs.glide
		pkgs.dep
		pkgs.gcc
		pkgs.gotools
		pkgs.golint
		pkgs.godef
		pkgs.gocode
		pkgs.protobuf3_1
	];
}
