source $stdenv/setup

buildPhase() {
    sh sbr-config-strip
    sh sbr-config-dot-to-underscore
}

installPhase() {
    mkdir -p $out/nix-home/$name
    chmod +rx $out/nix-home/$name
    sh sbr-config-underscore-to-dot
    for file in .*; do
        if !(test "$file" == "." || test "$file" == ".."); then
            cp -vR $file $out/nix-home/$name
        fi
    done
    for file in *; do
	if test "$file" == "bin"; then
	    cp -vR $file $out
	else
	    cp -vR $file $out/nix-home/$name
	fi
    done
}

genericBuild
