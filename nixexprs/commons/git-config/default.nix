{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = "https://github.com/vdemeester/git-config/archive/v${version}.tar.gz";
  sha256 = "0qpc46aybs8xvyigdmgvn70pwfymvy66jg58sc4lc14frid265fh";
  name = "sbr-git-config";
  version = "0.1.3";
}
