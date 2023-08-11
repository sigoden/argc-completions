_patch_table() { 
    if [[ "$*" == "code-insiders" ]]; then
        _patch_table_edit_arguments ';;' 'paths...'
    else
        cat
    fi
}
