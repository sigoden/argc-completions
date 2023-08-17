_patch_help() {
    $@ --help | sed '/^\s*-/ s| / |, |'
}
