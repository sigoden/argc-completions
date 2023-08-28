_patch_help() {
    $@ --help | \
    sed -n '/Main operation mode:/,$ p' | \
    sed 's/-?, //'
}
