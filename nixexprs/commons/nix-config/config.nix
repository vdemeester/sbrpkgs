{
	allowBroken = true; # mainly for.. being able to build stuff -_-
	allowUnfree = true; # mainly for idea-ultimate and some other stuff
	# PackageOverrides allows you to update stuff in a bunch and when you want
	# - http://pastebin.com/waUNDPYw
	# - https://nixos.org/wiki/Howto_keep_multiple_packages_up_to_date_at_onec
	packageOverrides = pkgs_: with pkgs_; {  # pkgs_ is the original set of packages
		all = with pkgs; buildEnv {  # pkgs is your overriden set of packages itself
			name = "all";
			paths = [
				pandoc
				dmenu2
				jq
				keybase
				youtube-dl
			];
		};
		# browsers
		browsers = with pkgs; buildEnv {
			name = "browsers";
			paths = [
				firefox
				google-chrome
			];
		};
	};
	nixpkgs.config.permittedInsecurePackages = [
		"webkitgtk-2.4.11"
	];
}
