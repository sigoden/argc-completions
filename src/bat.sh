_patch_help() {
    $@ --help | sed 's/\*\(\S\+\)\*/\1/g'
}

_patch_table() {
    _patch_table_edit_options \
        '--language;[`_choice_language`]' \
        '--theme;[`_choice_theme`]' \
    
}

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}
