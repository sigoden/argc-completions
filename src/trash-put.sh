_patch_help() {
    $@ --help | sed '/^all trash-cli commands:/,$ d'
}
