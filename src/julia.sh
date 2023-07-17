_patch_help() { 
    $@ --help | \
    sed \
        -e '/\s*-/ s/\[=\(.*\)\]/\1/' \
        -e '/\s*-/ s/\[\(.*\)\]/\1/' \
        -e '/\s*-/ s/\(\w\)\*/\1/' \
        -e '/\s*-/ {s/{\([a-z0-9_*-]\+\([|,][a-z0-9_*-]\+\)\+\)}/\1/;}' \
        -e '/\s*-/ s/\([0-9]\),/\1|/g' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--code-coverage;[`_choice_code_coverage`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'

}

_choice_code_coverage() {
    printf "%s\n" none user all
    _argc_util_comp_path
}