_patch_table() {
    _patch_util_edit_table_option \
        '--language;[`_choice_language`]' \
        '--theme;[`_choice_theme`]'
}

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}