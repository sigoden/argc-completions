_patch_help() {
    if [[ "$*" == "yq completion" ]]; then
        echo "Usage: yq completion (bash|zsh|fish|powershell)"
    elif [[ "$*" == "yq shell-completion" ]]; then
        echo
    else
        $@ --help
    fi
}

_patch_table() {
    _patch_util_edit_table_option \
        '--from-file(file)' \
        '--split-exp-file(file)' | \
    _patch_util_edit_table_argument \
        'expression'
}