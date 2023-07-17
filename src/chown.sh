_patch_table() { 
    _patch_table_edit_options '--from;[`_choice_user_group`]' | \
    _patch_table_edit_arguments 'OWNER(OWNER:GROUP);[`_choice_owner_group`]'
}

_choice_owner_group() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_file
    else
        _choice_user_group
    fi
}

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform suffix=: nospace
    else
        _module_os_group
    fi
}
