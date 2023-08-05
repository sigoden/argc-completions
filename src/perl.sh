_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^  -F/  -F /' \
        -e 's/^  -I/  -I /' \
        -e '/^  -\[/ d' \

}

_patch_table() { 
    _patch_table_edit_options \
        '-0;%' \
        '-C;%' \
        '-d;%' \
        '-D;%' \
        '-F;%' \
        '-i;%' \
        '-I;%' \
        '-l;%' \
        '-V;%' \
        '-x;%' \
    
}