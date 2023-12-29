_patch_help() {
    _common_edit() {
        sed 's/^  //'
    }
    if [[ "$*" == "clib" ]]; then
        $@ --help | _common_edit
    elif [[ "$*" == "clib build" ]]; then
        $@ --help | _common_edit | sed 's/-C, --clean/    --clean/'
    else
        $@ --help | _common_edit
    fi
}
