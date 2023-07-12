_patch_table() { 
    _patch_table_edit_arguments 'GROUP;[`_choice_group`]'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}