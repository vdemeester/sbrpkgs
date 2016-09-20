source $stdenv/setup

buildPhase() {
    sbr-config-strip
    sbr-config-dot-to-underscore
}

installPhase() {
    mkdir -p $out/nix-home/
    chmod +rx $out/nix-home/
    sbr-config-underscore-to-dot
    for file in .*; do
        if !(test "$file" == "." || test "$file" == ".."); then
            cp -vR $file $out/nix-home/$file
        fi
    done
}

genericBuild
