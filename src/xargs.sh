_patch_table() { 
    _patch_table_edit_arguments ';;' 'cmd;[`_module_os_command`]' 'args;~[`_choice_args`]'
}

_choice_args() {
    _argc_util_comp_subcommand 0
}