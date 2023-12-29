_patch_help() {
    $@ -h | \
    sed \
        -e 's/, i.e.[^)]\+)/)/' \

}
