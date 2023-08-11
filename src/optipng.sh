_patch_help() { 
    $@ --help | \
    sed \
        -e 's/    -?, -h, -help\s\+\(.*\)$/-?, -help    \1\n    -h    \1/' \

}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'files...' | \
    _patch_table_dedup_options '-o7' 
}
