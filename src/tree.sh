_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options '--sort;[name|version|size|mtime|ctime]' | \
    _patch_table_edit_arguments ';;' 'dirs...'
}
