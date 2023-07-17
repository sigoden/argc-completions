_patch_table() { 
    _patch_table_edit_arguments 'GROUP;[`_choice_group_value`]'
}

_choice_group_value() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_file
    else
        _module_os_group
    fi
}
