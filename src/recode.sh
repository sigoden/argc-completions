_patch_help() { 
    $@ --help | \
    sed \
        -e 's/, --sequence=\S\+ /                  /' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--sequence(<kind>);[`_choice_sequence`];Set sequencing passes' \
    | \
    _patch_table_edit_arguments ';;'
}

_choice_sequence() {
    printf "%s\n" files memory pipe
}
