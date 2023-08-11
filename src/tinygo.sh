_patch_help() { 
    TERM_WIDTH=200 _patch_help_run_help $@ | \
    sed 's/^  \([a-z]\S\+\): \+\(.*\)$/  \1  \2/'
}

_patch_table() { 
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '-opt;[0|1|2|s|z]' \
        '-target;[`_choice_target`]' \

}

_choice_target() {
    tinygo targets
}
