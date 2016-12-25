{
    allowUnfree = true;
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
    browsers = with pkgs; buildEnv {
      name = "browsers";
      paths = [
        firefox
        google-chrome
      ];
    };
  };
}
