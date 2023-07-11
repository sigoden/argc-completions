_patch_table() { 
    _patch_table_edit_options '--owner;[`_choice_user`]' '--group;[`_choice_group`]' '--strip-program(<FILE>)'  | \
    _patch_table_edit_arguments ';;' 'FILES...'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}