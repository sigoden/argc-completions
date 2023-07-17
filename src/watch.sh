_patch_table() { 
    _patch_table_edit_arguments ';;' 'command;[`_choice_value`]'
}

_choice_value() {
    _argc_util_comp_path
    _module_os_command
}
