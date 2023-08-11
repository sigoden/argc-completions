_patch_help() {
    if [[ "$*" == "yq completion" ]]; then
        echo "Usage: yq completion (bash|zsh|fish|powershell)"

    elif [[ "$*" == "yq shell-completion" ]]; then
        :;

    else
        $@ --help
    fi
}

_patch_table() {
    _patch_table_edit_options \
        '--from-file(file)' \
        '--split-exp-file(file)' \
    | \
    _patch_table_edit_arguments \
        'expression' \

}
