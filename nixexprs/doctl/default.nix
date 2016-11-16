{ stdenv, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "doctl-${version}";
  version = "1.5.0";
  rev = "66f10023539b5e0e27485a34048366ca1133872f";
  goPackagePath = "github.com/digitalocean/doctl";

  src = fetchFromGitHub {
    owner = "digitalocean";
    repo = "doctl";
    rev = "${rev}";
    sha256 = "0dk7l4b0ngqkwdlx8qgr99jzipyzazvkv7dybi75dnp725lwxkl2";
  };

  meta = {
    description = "A command line tool for DigitalOcean services";
    homepage = "https://github.com/digitalocean/doctl";
    license = stdenv.lib.licenses.asl20;
    platforms = stdenv.lib.platforms.all;
    maintainers = [ stdenv.lib.maintainers.siddharthist ];
  };
}