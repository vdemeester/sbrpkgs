{ stdenv, fetchurl }:

let
    linuxPredicate = stdenv.system == "x86_64-linux";
    darwinPredicate = stdenv.system == "x86_64-darwin";
    metadata = assert linuxPredicate || darwinPredicate;
        if linuxPredicate then
            { arch = "Linux-amd64";
              sha256 = "06cd02c4c2e7a3b1ad9899b03b3d4dde5392d964c675247d32f604a24661f839"; }
        else
            { arch = "Darwin-amd64";
              sha256 = "1e32aad049d2835b0c5b4805f9abc39b88c4de90b9743775c33c9faaf6c6c383"; };
in stdenv.mkDerivation rec {
    shortname = "notary";
    name = "${shortname}-${version}";
    version = "0.4.3";

    src = fetchurl {
        url = "https://github.com/theupdateframework/notary/releases/download/v${version}/${shortname}-${metadata.arch}";
        sha256 = metadata.sha256;
    };

    buildInputs = [ ];

    phases = [ "installPhase" ];

    installPhase = ''
      mkdir -p "$out/bin"
      cp "${src}" "$out/bin/notary"
      chmod +x "$out/bin/notary"
    '';

    meta = with stdenv.lib; {
        description = " Notary is a project that allows anyone to have trust over arbitrary collections of data";
        longDescription = ''
          The Notary project comprises a server and a client for running and interacting with trusted collections. See the service architecture documentation for more information.

          Notary aims to make the internet more secure by making it easy for people to publish and verify content. We often rely on TLS to secure our communications with a web server which is inherently flawed, as any compromise of the server enables malicious content to be substituted for the legitimate content.

          With Notary, publishers can sign their content offline using keys kept highly secure. Once the publisher is ready to make the content available, they can push their signed trusted collection to a Notary Server.

          Consumers, having acquired the publisher's public key through a secure channel, can then communicate with any notary server or (insecure) mirror, relying only on the publisher's key to determine the validity and integrity of the received content.
        '';
        license = licenses.apache2;
        homepage = https://github.com/theupdateframework/notary;
        maintainers = with maintainers; [ vdemeester ];
        platforms = with platforms; unix;
    };
}