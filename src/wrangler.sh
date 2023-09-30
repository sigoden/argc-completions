_patch_help() {
    help_text="$($@ --help | _patch_help_preprocess_yargs)"
    if [[ "$*" == "wrangler r2 object put" ]]; then
        echo "$help_text" | sed 's/-e, --expires/    --expires/'
    else
        echo "$help_text"
    fi
}

_patch_table() {
    _patch_table_detect_value_type
}
