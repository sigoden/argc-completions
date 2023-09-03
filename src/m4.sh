_patch_help() {
    $@ --help | sed '/^FLAGS /,/^\s*/ d'
}
