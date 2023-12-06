_patch_help() {
    if [[ "$*" == "swift" ]]; then
        $@ --help | \
        sed \
            -e '/Subcommands:/,$ s/^\s\+swift \(\S\+\) /    \1    /' \

    else
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "swift" ]]; then
        _patch_table_dedup_options \
            ';;' \
            '-save-optimization-record' \

    elif [[ "$*" == "swift package resolve" ]]; then
        _patch_table_dedup_options \
            ';;' \
            '--version' \

    elif [[ "$*" == "swift repl" ]]; then
        _patch_table_dedup_options \
            ';;' \
            '-save-optimization-record' \

    else
        cat
    fi
}
