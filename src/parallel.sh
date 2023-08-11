_patch_help() { 
    $@ --help | \
    sed \
        -e 's/--colsep regexp/--colsep <regexp> /' \
        -e 's/--slf ../--slf <..>/' \

}
