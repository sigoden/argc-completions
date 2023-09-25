_patch_help() {
    $@ --help 2>&1 | \
    sed \
        '/^omniprompt keys:/,/^\s*$/ d' \

}
