_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^  -F/  -F /' \
        -e 's/^  -I/  -I /' \
        -e '/^  -\[/ d' \

}

_patch_table() { 
    _patch_table_edit_options \
        '-0;-' \
        '-d;-' \
        '-i;-' \
        '-l;-' \
        '-x;-' \
        '-C;-' \
        '-D;-' \
        '-F;-' \
        '-I;-' \
        '-V;-' \
    
}