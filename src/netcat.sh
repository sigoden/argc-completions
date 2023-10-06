_patch_help() { 
    _patch_help_run_man netcat | sed -n '/^DESCRIPTION/, /^CLIENT/ {//!p}' 
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments ';;' 'destination' 'port'
}
