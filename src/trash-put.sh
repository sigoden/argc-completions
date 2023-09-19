_patch_help() {
    $@ --help | sed '/^use one of these commands:/,$ d'
}
