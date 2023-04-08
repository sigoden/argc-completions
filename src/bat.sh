_patch_table() {
    sed \
        -e '/-l, --language/ s/$/ # [`_choice_language`]/' \
        -e '/--theme/ s/$/ # [`_choice_theme`]/' \
        -e '/--highlight-line/ coption # -H, --highlight-line <N:M> # Highlight the specified line ranges with a different background color.'
}

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}