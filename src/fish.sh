_patch_help() { 
    echo "Usage: fish [options] file args..."
    _patch_help_run_man fish
}

_patch_table() { 
    _patch_table_edit_commands ';;' 
}