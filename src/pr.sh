_patch_help() { 
    $@ --help | \
    sed \
        -e 's/+FIRST_PAGE\[:LAST_PAGE\], //' \
        -e 's/-COLUMN, //' \

}
