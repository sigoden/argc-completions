_patch_help() { 
    $@ --help | sed -e 's/-r, -L/-L/'
}

_patch_table() { 
    _patch_table_edit_options \
        '-S(<session-file>)' \
        '-i(<shada-file>)' \
        '-l(<script-file> args...);~' \
        '-u(<config-file>)' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}
