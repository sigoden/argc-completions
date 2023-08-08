_patch_table() { 
    _patch_table_edit_arguments 'group;[`_choice_group_value`]'
}

_choice_group_value() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_path
    else
        _module_os_group
    fi
}
