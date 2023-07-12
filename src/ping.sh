_patch_table() { 
    _patch_table_edit_options '-M;[do|dont|want]' | \
    _patch_table_edit_arguments ';;' '<destination>'
}
