_patch_table() {
    if [[ "$*" == "croc" ]]; then
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "croc send" ]]; then
        _patch_table_edit_arguments ';;' 'paths...'

    else
        cat
    fi
}
