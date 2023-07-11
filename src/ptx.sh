_patch_help() { 
    $@ --help | sed -e 's/, --format=roff//' -e 's/, --format=tex//'
}

_patch_table() { 
    _patch_table_edit_options '' ';;' '--format;[roff|tex]' | \
    _patch_table_edit_arguments ';;' 'FILES...'
}
