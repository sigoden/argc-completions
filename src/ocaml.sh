_patch_help() { 
    $@ --help | \
    sed \
        -e '/\s*(undocumented)/ d' \

}
