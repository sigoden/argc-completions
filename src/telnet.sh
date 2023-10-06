_patch_help() { 
    echo "Usage: telnet [options] [host]"
    _patch_help_run_man telnet | sed -n '/^DESCRIPTION/, /Protocol:/ {//!p}'
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options '-l;[`_module_os_user`]'
}
