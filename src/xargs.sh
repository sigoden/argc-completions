_patch_table() { 
    _patch_table_edit_arguments ';;' 'CMD;[`_module_os_command`]' 'ARGS;~[`_choice_args`]'
}

_choice_args() {
    _argc_util_comp_subcommand 0
}