_patch_help() { 
    $@ --help | sed 's/-, -l/-l/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_choice_group`]' \
        '--supp-group;[`_choice_group`]' \
        '--shell;[`_choice_shell`]' | \
    _patch_table_edit_arguments ';;' 'user;[`_choice_user`]' 'args...'
}

_choice_shell() {
    cat /etc/shells | sed -n '/^\// p'   
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}