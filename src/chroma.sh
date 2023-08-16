_patch_table() { 
    _patch_table_edit_options \
        '--formatter;[`_choice_formatter`]' \
        '--lexer;[`_choice_lexer`]' \
        '--style;[`_choice_style`]' \

}

_choice_lexer() {
    chroma --list | sed -n 's/^\s\+aliases: \(.*\)/\1/p' | tr ' ' '\n'
}

_choice_style() {
    chroma --list | sed -n 's/^styles: \(.*\)/\1/p' | tr ' ' '\n'
}

_choice_formatter() {
    chroma --list | sed -n 's/^formatters: \(.*\)/\1/p' | tr ' ' '\n'
}
