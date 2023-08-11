_patch_table() { 
    if [[ "$*" == "newman run" ]]; then
        _patch_table_edit_arguments ';;' 'file'

    else
        cat
    fi
}
