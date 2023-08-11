_patch_help() { 
    $@ --help | sed 's/-\(\w\).*\t\+\(--.*\)/-\1, \2/'
}

_patch_table() { 
    _patch_table_edit_options '--lint;[fatal|invalid|no-ext]' | \
    _patch_table_edit_arguments ';;' 'files...'
}
