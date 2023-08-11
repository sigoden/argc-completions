_patch_help() { 
    $@ --help | sed -e 's/-r, -L/-L/'
}

_patch_table() { 
    _patch_table_edit_options \
        '-S(<session-file>)' \
        '-i(<shada-file>)' \
        '-u(<config-file>)' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}
