_patch_table() { 
    _patch_table_dedup_options '-l' | \
    _patch_table_edit_arguments ';;' 'script(file:.lua)' 'args...'
}
