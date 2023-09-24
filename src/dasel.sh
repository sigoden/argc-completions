_patch_table() {
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--read;[json|yaml|toml|xml|csv]' \
    )"

    if [[ "$*" == "dasel" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'selector'

    elif [[ "$*" == "dasel delete" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'selector'

    elif [[ "$*" == "dasel put" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--type;[string|int|float|bool|json|yaml|toml|xml|csv]' \
        | \
        _patch_table_edit_arguments ';;' 'selector'

    else
        echo "$table"
    fi
}
