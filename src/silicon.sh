_patch_table() {
    _patch_table_edit_options \
        '--theme;[`_choice_theme`]' \

}

_choice_theme() {
    silicon --list-themes
}
