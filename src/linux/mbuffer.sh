_patch_help() { 
    $@ --help 2>&1 | sed '/^-/ s/: /    /'
}

_patch_table() { 
    _patch_table_dedup_options '-I'
}
