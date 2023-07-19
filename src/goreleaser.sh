_patch_help() { 
    $@ --help | _patch_help_preprocess_cobra
}

_patch_table() {

    if [[ "$*" == "goreleaser build" ]]; then
        _patch_table_edit_options  '--id(<value...>)'

    elif [[ "$*" == "goreleaser release" ]]; then
        _patch_table_edit_options \
            '--release-footer(<file>)' \
            '--release-footer(<file>)' \
            '--release-footer-tmpl(<file>)' \
            '--release-header(<file>)' \
            '--release-header-tmpl(<file>)' \
            '--release-notes(<file>)' \
            '--release-notes-tmpl(<file>)' \

    else
        cat
    fi
}