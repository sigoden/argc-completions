_patch_help() { 
    $@ --help | \
    sed \
        -e 's/, --sequence=\S\+ /                  /' \

}

_patch_table() { 
    _patch_table_edit_arguments ';;'
}
