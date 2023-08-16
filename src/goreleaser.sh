_patch_table() {
    table="$(_patch_table_detect_value_type)"

    if [[ "$*" == "goreleaser build" ]]; then
        echo "$table" | _patch_table_edit_options  '--id(<value...>)'

    elif [[ "$*" == "goreleaser release" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--release-footer(<file>)' \
            '--release-footer-tmpl(<file>)' \
            '--release-header(<file>)' \
            '--release-header-tmpl(<file>)' \
            '--release-notes(<file>)' \
            '--release-notes-tmpl(<file>)' \

    else
        echo "$table"
    fi
}
