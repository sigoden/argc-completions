_patch_help() { 
    $@ --help
}

_patch_table() { 
    _patch_table_edit_options '--file(<FILE>)' | \
    _patch_table_edit_arguments ';;'
}
