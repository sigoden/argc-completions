_patch_help() { 
    $@ --help | sed '/Examples:/,$ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--local-user;[`_choice_user`]' \
        '--recipient;[`_choice_user`]' \
        '--tofu-policy;[auto|good|unknown|bad|ask]' | \
    _patch_table_edit_arguments ';;' 'FILES...'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}