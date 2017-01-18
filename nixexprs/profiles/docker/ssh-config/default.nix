{ stdenv, gnupg, getEnv }:

stdenv.mkDerivation {
  name = "docker-ssh-config-1.0";
  builder = ./builder.sh;
  src = ./.;
  buildInputs = [ gnupg ];
  PASSPHRASE = getEnv "PASSPHRASE";
}
