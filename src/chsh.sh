_patch_table() { 
    _patch_table_edit_options '--shell;[`_choice_shell`]' | \
    _patch_table_edit_arguments 'LOGIN;[`_choice_user`]'
}

_choice_shell() {
    cat /etc/shells | sed -n '/^\// p'   
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}