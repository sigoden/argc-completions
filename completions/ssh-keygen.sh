#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A                                      For each of the key types (rsa, dsa, ecdsa and ed25519) for which host keys do not exist, generate the host keys with the default key file path, an empty passphrase, default bits for the key type, and default comment.
# @option -a <rounds>                           When saving a private key, this option specifies the number of KDF (key derivation function, currently bcrypt_pbkdf(3)) rounds used.
# @flag -B                                      Show the bubblebabble digest of specified private or public key file.
# @option -b[`_choice_b`] <bits>                Specifies the number of bits in the key to create.
# @option -C <comment>                          Provides a new comment.
# @flag -c                                      Requests changing the comment in the private and public key files.
# @option -D <pkcs11>                           Download the public keys provided by the PKCS#11 shared library pkcs11.
# @option -E[md5|sha256] <fingerprint_hash>     Specifies the hash algorithm used when displaying key fingerprints.
# @flag -e                                      This option will read a private or public OpenSSH key file and print to stdout a public key in one of the formats specified by the -m option.
# @flag -F                                      hostname | [hostname]:port Search for the specified hostname (with optional port number) in a known_hosts file, listing any occurrences found.
# @option -f <filename>                         Specifies the filename of the key file.
# @flag -g                                      Use generic DNS format when printing fingerprint resource records using the -r command.
# @flag -H                                      Hash a known_hosts file.
# @flag -h                                      When signing a key, create a host certificate instead of a user certificate.
# @option -I <certificate_identity>             Specify the key identity when signing a public key.
# @flag -i                                      This option will read an unencrypted private (or public) key file in the format specified by the -m option and print an OpenSSH compatible private (or public) key to stdout.
# @flag -K                                      Download resident keys from a FIDO authenticator.
# @flag -k                                      Generate a KRL file.
# @flag -L                                      Prints the contents of one or more certificates.
# @flag -l                                      Show fingerprint of specified public key file.
# @option -M[`_choice_m`] <generate>            Generate candidate Diffie-Hellman Group Exchange (DH-GEX) parameters for eventual use by the ‘diffie-hellman-group-exchange-*’ key exchange methods.
# @option -m[`_choice_m2`] <key_format>         Specify a key format for key generation, the -i (import), -e (export) conversion options, and the -p change passphrase operation.
# @option -N <new_passphrase>                   Provides the new passphrase.
# @option -n[`_module_os_user`] <principals>    Specify one or more principals (user or host names) to be included in a certificate when signing a key.
# @option -O[`_choice_o`] <option>              Specify a key/value option.
# @option -P <passphrase>                       Provides the (old) passphrase.
# @flag -p                                      Requests changing the passphrase of a private key file instead of creating a new private key.
# @flag -Q                                      Test whether keys have been revoked in a KRL.
# @flag -q                                      Silence ssh-keygen.
# @flag -R                                      hostname | [hostname]:port Removes all keys belonging to the specified hostname (with optional port number) from a known_hosts file.
# @option -r <hostname>                         Print the SSHFP fingerprint resource record named hostname for the specified public key file.
# @option -s <ca_key_file>                      Certify (sign) a public key using the specified CA key.
# @option -t[dsa|ecdsa|ecdsa-sk|ed25519|ed25519-sk|rsa]  Specifies the type of key to create
# @flag -U                                      When used in combination with -s, this option indicates that a CA key resides in a ssh-agent(1).
# @flag -u                                      Update a KRL.
# @option -V <validity_interval>                Specify a validity interval when signing a certificate.
# @flag -v                                      Verbose mode.
# @option -w <provider_file>                    Specifies a path to a library that will be used when creating FIDO authenticator-hosted keys, overriding the default of using the internal USB HID support.
# @option -Y[`_choice_y`] <find-principals>     Find the principal(s) associated with the public key of a signature, provided using the -s flag in an authorized signers file provided using the -f flag.
# @flag -y                                      This option will read a private OpenSSH format file and print an OpenSSH public key to stdout.
# @option -Z[`_choice_cipher`] <cipher>         Specifies the cipher to use for encryption when writing an OpenSSH-format private key file.
# @option -z <serial_number>                    Specifies a serial number to be embedded in the certificate to distinguish this certificate from others from the same CA.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_b() {
    case "$argc_t" in
    rsa)
        printf "%s\n" 1024 2048 3072
        ;;
    dsa)
        printf "%s\n" 1024
        ;;
    ecdsa)
        printf "%s\n" 256 384 521
        ;;
    esac
}

_choice_m() {
    cat <<-'EOF'
generate	Generate candidate Diffie-Hellman Group Exchange (DH-GEX) parameters
screen	Screen candidate parameters for Diffie-Hellman Group Exchange
EOF
}

_choice_m2() {
    cat <<-'EOF'
RFC4716	RFC 4716/SSH2 public or private key
PKCS8	PKCS8 public or private key
PEM	PEM public key
EOF
}

_choice_o() {
    cat <<-'EOF' | _argc_util_comp_kv =
application=;;Override the default FIDO application/origin string of `“ssh:`”
challenge=__argc_value=file;;Specifies a path to a challenge string that will be passed to the FIDO token during key generation
device=;;Explicitly specify a fido device to use
no-touch-required;;Indicate that the generated private key should not require touch events when making signatures
resident;;Indicate that the key should be stored on the FIDO authenticator itself
user=`_module_os_user`;;A username to be associated with a resident key
verify-required;;Indicate that this private key should require user verification for each signature
write-attestation;;Record the attestation data returned from FIDO tokens during key generation
hashalg=sha256,sha512;;Selects the hash algorithm to use for hashing the message to be signed
print-pubkey;;Print the full public key to standard output after signature verification
verify-time=;;Specifies a time to use when validating signatures instead of the current time
EOF

}

_choice_y() {
    cat <<-'EOF'
find-principals	Find the principal(s) associated with the public key of a signature
match-principals	Find principal matching the principal name provided using the -I flag
check-novalidate	Checks that a signature generated using ssh-keygen -Y sign has a valid structure
sign	Cryptographically sign a file or some data using a SSH key
verify	Request to verify a signature generated using ssh-keygen -Y sign
EOF
}

_choice_cipher() {
    ssh -Q cipher
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"