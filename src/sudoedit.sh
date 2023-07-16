_patch_help() { 
    $@ --help | sed 's/-h, --help/    --help/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--group;[`_choice_group`]' \
        '--user;[`_choice_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'files...'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}