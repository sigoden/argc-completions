_patch_help() { 
    TERM_WIDTH=200 _patch_help_run_help $@ | _patch_help_preprocess_yargs
}

_patch_table() {
    _patch_table_detect_value_type
}
