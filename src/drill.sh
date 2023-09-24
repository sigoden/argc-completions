_patch_table() {
    _patch_table_edit_options \
        '--benchmark(<file>)' \
        '--compare(<file>)' \
        '--report(<file>)' \
        '--skip-tags;*[`_choice_tag`]' \
        '--tags;*[`_choice_tag`]' \
    | \
    _patch_table_edit_arguments ';;'
}

_choice_tag() {
    if [[ -f "$argc_benchmark" ]]; then
        cat "$argc_benchmark" | yq -p yaml '.. | select(has("tags")) | .tags[]'
    fi
}
