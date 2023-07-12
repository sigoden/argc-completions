_patch_help() { 
    man netcat | sed -n '/^DESCRIPTION/, /^CLIENT/ {//!p}' 
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'destination' 'port'
}