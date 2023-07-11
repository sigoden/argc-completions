_patch_table() { 
    _patch_table_edit_arguments 'GROUP;[`_choice_group_value`]'
}

_choice_group_value() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_file
    else
        _choice_group
    fi
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}