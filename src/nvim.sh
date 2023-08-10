_patch_help() { 
    $@ --help | sed -e 's/-r, -L/-L/'
}

_patch_table() { 
    _patch_table_edit_options \
        '-i(<shada-file>)' \
        '-u(<config-file>)' \
        '-S(<session-file>)' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}