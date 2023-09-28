_patch_help() {
    $@ | \
    sed \
        -e '/^Usage:/ s/(on|off) //' \
        -e '/^\s*-/ s/(on|off)/{on|off}/' \
        -e '/^\s*-/ s/volume-path/volume-path /' \
    
}

_patch_table() {
    _patch_table_edit_options \
        '-L;[`_choice_volume`]' \
        '-P;[`_choice_volume`]' \
        '-V;[`_choice_volume`]' \
        '-X;[`_choice_volume`]' \
    | \
    _patch_table_edit_arguments \
        'volume;[`_choice_volume`]' \

}

_choice_volume() {
    mdutil -a -s | sed 'N;s/:\n\s*/\t/'
}
