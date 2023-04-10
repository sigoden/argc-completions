_patch_table() {
    sed \
        -e '/-l, --language/ s/$/ # [`_choice_language`]/' \
        -e '/--theme/ s/$/ # [`_choice_theme`]/'
}

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}