_patch_help() {
    $@ --help 2>&1 | sed '/^\s*-/ s/-\(\S\)#/-\1-<#>/'
}

_patch_table() {
    _patch_table_dedup_options \
        '-b' \
    | \
    _patch_table_edit_options \
        '-H;[`_choice_algorithm`]' \
    | \
    _patch_table_edit_arguments 'files...'
}

_choice_algorithm() {
    printf "%s\n" 0 32 64 128
}
