_patch_help() { 
    $@ --help | _patch_help_fix_wrap | _patch_help_preprocess_yargs
}

_patch_table() {
    _patch_table_detect_value_type
}
