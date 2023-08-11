_patch_table() { 
    _patch_table_edit_options \
        '--block-signal;[`_module_os_signal`]' \
        '--default-signal;[`_module_os_signal`]' \
        '--ignore-signal;[`_module_os_signal`]' \
        '--unset;[`_choice_env_var`]' \
    | \
    _patch_table_edit_arguments ';;'
}

_choice_env_var() {
    env | _argc_util_transform format==
}
