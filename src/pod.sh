_patch_help() {
    $@ --help | \
    sed \
        -e 's/^\s*+ /    /' \
        -e 's/^\s*\$ /    /' \

}
