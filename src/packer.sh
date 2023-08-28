_patch_help() {
    if [[ $# -gt 2 ]]; then
        :;
    else
        $@ --help
    fi
}
