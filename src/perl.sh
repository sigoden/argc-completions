_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^  -F/  -F /' \
        -e 's/^  -I/  -I /' \
        -e '/^  -\[/ d' \

}

_patch_table() { 
    _patch_table_edit_options \
        '-0;-*' \
        '-C;-*' \
        '-D;-*' \
        '-F;-*' \
        '-I;-*' \
        '-V;-*' \
        '-d;-*' \
        '-i;-*' \
        '-l;-*' \
        '-x;-*' \
    
}
