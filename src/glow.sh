_patch_table() {
    if [[ "$*" == "glow" ]]; then
        _patch_table_edit_arguments ';;' 'path'

    elif [[ "$*" == "glow stash" ]]; then
        _patch_table_edit_arguments ';;' 'path'

    else
        cat
    fi
}
