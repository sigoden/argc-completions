_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_dedup_options '--indicator-style' | \
    _patch_table_edit_options \
        '--color;[`_choice_color`]' \
        '--format;[`_choice_format`]' \
        '--hyperlink;[`_choice_hyperlink`]' \
        '--indicator-style;[`_choice_indicator_style`]' \
        '--quoting-style;[`_choice_quoting_style`]' \
        '--sort;[`_choice_sort`]' \
        '--time;[`_choice_time`]' \
        '--time-style;[`_choice_time_style`]' \

}

_choice_color() {
    printf "%s\n" auto never always
}

_choice_format() {
    printf "%s\n" across horizontal single-column vertical commas long verbose
}

_choice_hyperlink() {
    printf "%s\n" always auto none
}

_choice_indicator_style() {
    printf "%s\n" classify file-type none slash
}

_choice_quoting_style() {
    printf "%s\n" c clocale escape literal locale shell shell-always
}

_choice_sort() {
    printf "%s\n" extension none size time version
}

_choice_time() {
    printf "%s\n" full-iso long-iso iso locale
}

_choice_time_style() {
    printf "%s\n" full-iso iso locale long-iso
}
