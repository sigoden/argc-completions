_patch_table() {
    _patch_table_edit_options \
        '--alignment;[`_choice_alignment`];text alignment on screen' \

}

_choice_alignment() {
    _argc_util_mode_kv _
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s_\0\n" top bottom middle
    else
        printf "%s\n" left right middle
    fi
}
