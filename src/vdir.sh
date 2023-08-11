_patch_table() { 
    _patch_table_dedup_options --indicator-style \
    | \
    _patch_table_edit_options \
        '--color;[`_choice_color`]' \
        '--format;[`_choice_format`]' \
        '--time;[`_choice_time`]' \

}

_choice_color() {
    printf "%s\n" auto never always
}

_choice_format() {
    printf "%s\n" across commas horizontal long single-column verbose vertical
}

_choice_time() {
    printf "%s\n" full-iso long-iso iso locale
}
