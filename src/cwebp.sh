_patch_help() {
    $@ -longhelp | \
    sed \
        -e '/^\s*-/ s/ \.\+ /    /' \
        -e '/^\s*-/ s| / |, |' \

}
