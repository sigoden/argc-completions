_patch_table() {
    _patch_table_edit_options \
        '--edit-mode;[`_choice_edit_mode`]' \

}

_choice_edit_mode() {
    cat <<-EOF
insert	inserts a new input at the cursor's position.
overwrite	mode replaces existing characters with new input at the cursor's position.
EOF
}
