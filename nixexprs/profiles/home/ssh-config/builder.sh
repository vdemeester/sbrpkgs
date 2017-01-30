source $stdenv/setup

mkdir -p $out/nix-home/docker-ssh-config/.ssh/config.d/default
gpg2 --homedir $out/.gnupg --batch --passphrase "$PASSPHRASE" \
     -o $out/nix-home/docker-ssh-config/.ssh/config.d/default/WW-docker \
     --decrypt $src/config.gpg
rm -fR $out/.gnupg
