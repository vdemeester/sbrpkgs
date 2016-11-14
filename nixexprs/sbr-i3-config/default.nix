{ stdenv, system ? builtins.currentSystem, sbr-config }:

sbr-config rec {
  url = https://github.com/vdemeester/i3-config/archive/v1.4.tar.gz;
  sha256 = "12qy8m9jmfk4n7skcbc26xz8qps9q65wlzlhlwl0fyfxv907bpdr";
  name = "sbr-i3-config-${version}";
  version = "1.4";
}
