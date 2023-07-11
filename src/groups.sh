_patch_table() { 
    _patch_table_edit_arguments ';;' 'users;*[`_choice_user`]'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}
