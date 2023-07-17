_patch_table() { 
    _patch_table_edit_options \
        '--userspec;[`_choice_user_group`]' \
        '--groups;*,[`_module_os_group`]' \
    | \
    _patch_table_edit_arguments 'NEWROOT(PATH)'
}

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform suffix=: nospace
    else
        _module_os_group
    fi
}
