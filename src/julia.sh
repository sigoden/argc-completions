_patch_help() { 
    $@ --help | \
    sed \
        -e '/\s*-/ s/\[=\(.*\)\]/\1/' \
        -e '/\s*-/ s/\[\(.*\)\]/\1/' \
        -e '/\s*-/ s/\(\w\)\*/\1/' \
        -e '/\s*-/ s/\([0-9]\),/\1|/g' \

}

_patch_table() { 
    _patch_table_dedup_options \
        '--track-allocation' \
    | \
    _patch_table_edit_options \
        '--code-coverage;[`_choice_code_coverage`]' \
        '--track-allocation;[`_choice_track_allocation`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'

}

_choice_code_coverage() {
    printf "%s\n" none user all
    _argc_util_comp_path
}

_choice_track_allocation() {
    printf "%s\n" none user all
    _argc_util_comp_path
}
