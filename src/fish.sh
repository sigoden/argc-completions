_patch_help() { 
    echo "Usage: fish [options] file args..."
    man fish
}

_patch_table() { 
    _patch_table_edit_commands ';;' 
}