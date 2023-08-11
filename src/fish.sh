_patch_help() { 
    _patch_help_run_man fish
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'file' 'args...'
}
