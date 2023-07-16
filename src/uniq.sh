_patch_table() { 
    _patch_table_edit_options \
        '--all-repeated;[none|prepend|separate]' \
        '--group;[append|both|prepend|separate]' \
    | \
    _patch_table_edit_arguments ';;' 'FILE1' 'FILE2'
}
