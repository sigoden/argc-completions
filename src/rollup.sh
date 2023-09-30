_patch_help() {
    $@ --help | \
    sed \
        '/^Examples:/,$ d' \
        
}
