_patch_help() { 
    $@ --help | \
    sed \
        -e '/\s*(undocumented)/ d' \
        -e '/^\s*-arg/,+1 {N; s/\n\s*from/ from/;}'

}
