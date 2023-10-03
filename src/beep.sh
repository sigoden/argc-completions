_patch_help() {
    $@ --help | \
    sed '/^Exit status:/,/^\s*$/ d'
}
