_patch_help() { 
    _patch_help_run_man $@ | sed -n '/^DESCRIPTION/, /^MODULI GENERATION/ {//!p}'
}

_patch_table() { 
    _patch_table_edit_options \
        '-E;[md5|sha256]' \
        '-M;[`_choice_m`]' \
        '-O;[`_choice_o`]' \
        '-Y;[`_choice_y`]' \
        '-Z;[`_choice_cipher`]' \
        '-b;[`_choice_b`]' \
        '-m;[`_choice_m2`]' \
        '-n;[`_module_os_user`]' \
        '-s(<ca_key_file>)' \
        '-t;[dsa|ecdsa|ecdsa-sk|ed25519|ed25519-sk|rsa];Specifies the type of key to create' \
        '-w(<provider_file>)' \

}

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
