source $stdenv/setup

buildPhase() {
    sh sbr-config-strip
    sh sbr-config-dot-to-underscore
}

installPhase() {
    mkdir -p $out/nix-home/$configName
    chmod +rx $out/nix-home/$configName
    sh sbr-config-underscore-to-dot
    for file in .*; do
        if !(test "$file" == "." || test "$file" == ".."); then
            cp -vR $file $out/nix-home/$configName
        fi
    done
    for file in *; do
	if test "$file" == "bin"; then
	    cp -vR $file $out
	else
	    cp -vR $file $out/nix-home/$configName
	fi
    done
}

genericBuild
