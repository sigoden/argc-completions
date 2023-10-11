_patch_help() {
    $@ --help | \
    sed \
        -e '/^Examples/,$ d' \
        -e 's/…/.../g' \
        -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

}

_patch_table() {
    _patch_table_edit_options \
        '--type;[md5|sha1|sha256|sha512]' \

}
