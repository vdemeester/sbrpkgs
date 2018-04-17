**Archived (read-only) : I'm now using overlays and almost everything inlined in https://github.com/vdemeester/nixos-configuration**

# sbrpkgs — personal nix packages

In a terminal :

	nix-channel --add https://vdemeester.github.io/sbrpkgs sbr
	nix-channel --update
	nix-env -qaP 'sbr.*'

In order to install private *password protected* packages:

	echo -n "Passphrase: ";read -s PASSPHRASE;export PASSPHRASE;nix-env -i ...;unset PASSPHRASE
