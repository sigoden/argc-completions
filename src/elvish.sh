_patch_table() { 
    _patch_table_edit_options \
        '-db(<file>)' \
        '-log(<file>)' \
        '-rc(<file>)' \
        '-sock(<file>)' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}
