_patch_help() {
    if [[ "$*" == "browser-sync" ]]; then
        $@ --help 2>&1 | sed '/^Commands:/,/^\s*$/ s/browser-sync //' | _patch_help_preprocess_yargs
    else
        $@ --help 2>&1 | _patch_help_preprocess_yargs
    fi
}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--cwd(<dir>);;Working directory' \

}
