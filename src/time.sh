_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments \
        'command;[`_module_os_command`]' \
        'arg;~[`_module_os_command_args`]' \

}
