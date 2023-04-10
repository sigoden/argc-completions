_patch_help() {
    curl --help all | sed \
        -e '/--curves/ c\     --curves <algorithm list> TLS key exchange algorithm(s) to request' \
        -e '/--help/ c\ -h, --help               Get help for commands' \
        -e '/Usage:/ cUsage: curl [options...] <_url>'
}