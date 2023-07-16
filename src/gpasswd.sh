_patch_table() { 
    _patch_table_edit_options \
        '--add;[`_choice_user`]' \
        '--delete;[`_choice_user`]' \
        '--administrators;*,[`_choice_user`]' \
        '--members;*,[`_choice_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'GROUP;[`_choice_group`]'
    
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}