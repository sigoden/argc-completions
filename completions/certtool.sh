#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --debug <num>               Enable debugging - it must be in the range:
# @flag -V --verbose                     More verbose output
# @option --infile <file>                Input file - file must pre-exist
# @option --outfile <str>                Output file
# @option --attime <str>                 Perform validation at the timestamp instead of the system time
# @flag -i --certificate-info            Print information on the given certificate
# @flag --pubkey-info                    Print information on a public key
# @flag -s --generate-self-signed        Generate a self-signed certificate
# @flag -c --generate-certificate        Generate a signed certificate
# @flag --generate-proxy                 Generates a proxy certificate
# @flag -u --update-certificate          Update a signed certificate
# @flag --fingerprint                    Print the fingerprint of the given certificate
# @flag --key-id                         Print the key ID of the given certificate
# @flag --v1                             Generate an X.509 version 1 certificate (with no extensions)
# @option --sign-params <str>            Sign a certificate with a specific signature algorithm
# @flag --crq-info                       Print information on the given certificate request
# @flag -q --generate-request            Generate a PKCS ♯10 certificate request - prohibits the option 'infile'
# @flag --no-crq-extensions              Do not use extensions in certificate requests
# @flag --p12-info                       Print information on a PKCS ♯12 structure
# @option --p12-name <str>               The PKCS ♯12 friendly name to use
# @flag --to-p12                         Generate a PKCS ♯12 structure
# @flag -k --key-info                    Print information on a private key
# @flag --p8-info                        Print information on a PKCS ♯8 structure
# @flag --to-rsa                         Convert an RSA-PSS key to raw RSA format
# @flag -p --generate-privkey            Generate a private key
# @option --key-type <str>               Specify the key type to use on key generation
# @option --bits <num>                   Specify the number of bits for key generation
# @option --curve <str>                  Specify the curve used for EC key generation
# @option --sec-param[low|legacy|medium|high|ultra] <str>  Specify the security level
# @flag --to-p8                          Convert a given key to a PKCS ♯8 structure
# @flag -8 --pkcs8                       Use PKCS ♯8 format for private keys
# @flag --provable                       Generate a private key or parameters from a seed using a provable method
# @flag --verify-provable-privkey        Verify a private key generated from a seed using a provable method
# @option --seed <str>                   When generating a private key use the given hex-encoded seed
# @flag -l --crl-info                    Print information on the given CRL structure
# @flag --generate-crl                   Generate a CRL
# @flag --verify-crl                     Verify a Certificate Revocation List using a trusted list - requires the option 'load-ca-certificate'
# @flag -e --verify-chain                Verify a PEM encoded certificate chain
# @flag --verify                         Verify a PEM encoded certificate (chain) against a trusted set
# @option --verify-hostname <str>        Specify a hostname to be used for certificate chain verification
# @option --verify-email <str>           Specify a email to be used for certificate chain verification - prohibits the option 'verify-hostname'
# @option --verify-purpose <str>         Specify a purpose OID to be used for certificate chain verification
# @flag --verify-allow-broken            Allow broken algorithms, such as MD5 for verification
# @option --verify-profile <str>         Specify a security level profile to be used for verification
# @flag --p7-generate                    Generate a PKCS ♯7 structure
# @flag --p7-sign                        Signs using a PKCS ♯7 structure
# @flag --p7-detached-sign               Signs using a detached PKCS ♯7 structure
# @flag --p7-include-cert                The signer's certificate will be included in the cert list - enabled by default - disabled as '--no-p7-include-cert'
# @flag --p7-time                        Will include a timestamp in the PKCS ♯7 structure
# @flag --p7-show-data                   Will show the embedded data in the PKCS ♯7 structure
# @flag --p7-info                        Print information on a PKCS ♯7 structure
# @flag --p7-verify                      Verify the provided PKCS ♯7 structure
# @flag --smime-to-p7                    Convert S/MIME to PKCS ♯7 structure
# @flag --get-dh-params                  List the included PKCS ♯3 encoded Diffie-Hellman parameters
# @flag --dh-info                        Print information PKCS ♯3 encoded Diffie-Hellman parameters
# @option --load-privkey <str>           Loads a private key file
# @option --load-pubkey <str>            Loads a public key file
# @option --load-request <str>           Loads a certificate request file
# @option --load-certificate <str>       Loads a certificate file
# @option --load-ca-privkey <str>        Loads the certificate authority's private key file
# @option --load-ca-certificate <str>    Loads the certificate authority's certificate file
# @option --load-crl <str>               Loads the provided CRL
# @option --load-data <str>              Loads auxiliary data
# @option --password <str>               Password to use
# @flag --null-password                  Enforce a NULL password
# @flag --empty-password                 Enforce an empty password
# @flag --hex-numbers                    Print big number in an easier format to parse
# @flag --cprint                         In certain operations it prints the information in C-friendly format
# @option --hash <str>                   Hash algorithm to use for signing
# @option --salt-size <num>              Specify the RSA-PSS key default salt size
# @flag --inder                          Use DER format for input certificates, private keys, and DH parameters
# @flag --inraw                          an alias for the 'inder' option
# @flag --outder                         Use DER format for output certificates, private keys, and DH parameters
# @flag --outraw                         an alias for the 'outder' option
# @option --template <str>               Template file to use for non-interactive operation
# @flag --stdout-info                    Print information to stdout instead of stderr
# @flag --ask-pass                       Enable interaction for entering password when in batch mode
# @option --pkcs-cipher <str>            Cipher to use for PKCS ♯8 and ♯12 operations
# @option --provider <str>               Specify the PKCS ♯11 provider library
# @flag --text                           Output textual information before PEM-encoded certificates, private keys, etc - enabled by default - disabled as '--no-text'
# @option -v --version <arg>             output version information and exit
# @flag -h --help                        display extended usage information and exit
# @flag -! --more-help                   extended usage information passed thru pager

command eval "$(argc --argc-eval "$0" "$@")"