_patch_help() {
    $@ --help | sed '/Default options are/, $ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--body-numbering;[`_choice_numbering`]' \
        '--footer-numbering;[`_choice_numbering`]' \
        '--header-numbering;[`_choice_numbering`]' \
        '--number-format;[`_choice_number_format`]' \

}

_choice_numbering() {
    cat <<-'EOF'
a	number all lines
n	no line numbering
p	number only lines matching regex
t	number only non-empty lines
EOF
}

_choice_number_format() {
    cat <<-'EOF'
ln	left justified
rn	right justified
rz	right justified with leading zeroes
EOF
}
