_patch_help() { 
    $@ --help | sed 's/--colo\[u\]r/--color/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--sort;[name|Name|size|extension|Extension|modified|changed|accessed|created|inode|type|none]' \

}
