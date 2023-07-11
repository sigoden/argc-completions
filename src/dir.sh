_patch_table() { 
    sed '/--indicator-style=WORD/ d' | \
    _patch_table_edit_options '--color;[`_choice_color`]' '--time;[`_choice_time`]'
}

_choice_color() {
    printf "%s\n" auto never always
}

_choice_time() {
    printf "%s\n" full-iso long-iso iso locale
}

