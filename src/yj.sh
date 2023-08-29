_patch_help() {
    $@ -h | \
    sed \
        -e '/^\s*-x/,/^\s*$/ {//d; s/^\s*//;s/ = /   /;}' \

}
