_patch_table() { 
    _patch_table_edit_options \
        '--cluster(<command> <args+>)' \
    | \
    _patch_table_edit_arguments ';;' 'cmd;[`_choice_cmd`]' 'args...'
}

_choice_cmd() {
    redis-cli command | \
    gawk '
    BEGIN {
        cmd = 1
    }
    {
        if (cmd == 1 && match($0, /^[a-z]/)) {
            print $0
            cmd = 0
        } else if (cmd == 0 && match($0, /^@/)) {
            cmd = 1
        }
    }'
}
