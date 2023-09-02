_patch_table() { 
    _patch_table_edit_options \
        '--groups;*,[`_module_os_group`]' \
        '--userspec;[`_choice_user_group`]' \
    | \
    _patch_table_edit_arguments \
        'newroot(rootpath)' \
        'command;[`_module_os_command`]' \
        'arg;~[`_choice_args`]' \

}

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform suffix=: nospace
    else
        _module_os_group
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 1
}
