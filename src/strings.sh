_patch_help() {
    $@ --help | sed 's/-a - /-a /'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts 'symbol @file' | \
    _patch_table_edit_options \
        '--encoding;[`_choice_encoding`]' \
        '--radix;[`_choice_radix`]' \
    | \
    _patch_table_edit_arguments ';;' 'files...'
}

_choice_radix() {
    cat <<-'EOF'
o	8
d	10
x	16
EOF
}

_choice_encoding() {
    cat <<-'EOF'
s	7-bit
S	8-bit
b	16-bit
l	16-bit
B	32-bit
L	32-bit
EOF
}
