_patch_help() { 
    $@ --help | sed 's/-h, --help/    --help/'
}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--group;[`_module_os_group`]' \
        '--other-user;[`_module_os_user`]' \
        '--preserve-env;[`_choice_env_var`]' \
        '--user;[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}

_choice_env_var() {
    env | _argc_util_transform format== | _argc_util_comp_multi ,
}
