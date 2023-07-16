_patch_help() { 
    $@ --help 2>&1
}

_patch_table() { 
    _patch_table_edit_options  \
        '--confdir(<DIR>)' \
        '--dropaction(<VALUE>)' \
        '--eventfile(<FILE>)' \
        '--lockfile(<FILE>)' \
        '--pidfile(<FILE>)' \
        '--socketfile(<FILE>)' \
        '--socketgroup;[`_choice_group`]' \

}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}