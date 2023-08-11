_patch_help() { 
    $@ --help | sed  -e '/^  -t / {N; s/-t .*\n /-t/g}'
}

_patch_table() { 
    _patch_table_edit_options \
        '--level;[L|M|Q|H]' \

}
