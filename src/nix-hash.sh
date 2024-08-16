_patch_help() {
    $@ --help | \
    sed \
        -e '/^Examples/,$ d' \
        -e 's/…/.../g' \
        -e '/^       •  -/ {s| \(--\S\+\) / \(-\S\)| \2, \1|;s/^       •  -/    -/;}' \

}

_patch_table() {
    _patch_table_edit_options \
        '--type;[md5|sha1|sha256|sha512]' \

}
