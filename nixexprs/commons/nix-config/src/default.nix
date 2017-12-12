let
	_pkgs = import <nixpkgs> {};
in
	{ pkgs ? import (_pkgs.fetchFromGitHub {
		owner = "NixOS";
		repo = "nixpkgs-channels";
		rev = "8a7b2f889ddbe07efc611062f0347ec4fe0ff67e";
		sha256 = "1kl9i0xbi51bjv47c0s8w6fqz5j5k0qaglss7n7ig1qzz289r010";
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
