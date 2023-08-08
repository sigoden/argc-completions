_patch_help() { 
    $@ --help | sed 's/-h, --help/    --help/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_module_os_group`]' \
        '--user;[`_module_os_user`]' \
        '--other-user;[`_module_os_user`]' \
        '--preserve-env;[`_choice_env_var`]' \
    | \
    _patch_table_edit_arguments ';;' 'cmd;[`_choice_cmd`]' 'args;~[`_choice_args`]'
}

_choice_cmd() {
    if _argc_util_has_path_prefix "$ARGC_FILTER"; then
        _argc_util_comp_path
        return
    fi
    _module_os_command
}

_choice_args() {
    _argc_util_comp_subcommand 0
}

_choice_env_var() {
    env | _argc_util_transform format== | _argc_util_comp_multi ,
}