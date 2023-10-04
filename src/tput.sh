_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help 2>&1 | sed 's/<<//'
    fi
}
