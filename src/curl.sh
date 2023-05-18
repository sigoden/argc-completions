_patch_help() {
    curl --help all | sed \
        -e '/--curves/ c\     --curves <algorithm list> TLS key exchange algorithm(s) to request'
}