_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--address-radix;[`_choice_address_radix`]' \
        '--format;[`_choice_format`]' \
    | \
    _patch_table_edit_commands ';;'

}

_choice_address_radix() {
    cat <<-'EOF'
d	decimal
n	none
o	octal
x	hexadecimal
EOF
}

_choice_format() {
    cat <<-'EOF'
a	named character
c	character (C-style escape)
d	decimal
f	floating-point number
o	octal
u	unsigned decimal
x	hexadecimal
EOF
}
