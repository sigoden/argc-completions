_patch_table() {
    if [[ "$*" == "pastel mix" ]]; then
        _patch_table_edit_arguments ';;' '<colors>...'
    else
        cat
    fi
}
