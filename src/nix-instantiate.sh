_patch_help() {
    $@ --help | \
    sed \
        -e '/^Examples/,$ d' \
        -e 's/…/.../g' \
        -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

}

_patch_table() {
    _patch_table_edit_arguments 'files;[`_module_nix_path`]'
}
