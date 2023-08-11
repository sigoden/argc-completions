_patch_help() { 
    $@ --help | sed 's/-\(\S\).*\(--.*\)/-\1, \2/'
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'FILES...'
}
