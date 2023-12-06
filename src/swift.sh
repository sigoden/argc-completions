_patch_help() {
    if [[ "$*" == "swift" ]]; then
        $@ --help | \
        sed \
            -e '/Subcommands:/,$ s/^\s\+swift \(\S\+\) /    \1    /' \

    elif [[ "$*" == "swift repl" ]]; then
        :;

    else
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "swift package resolve" ]]; then
        _patch_table_dedup_options \
            ';;' \
            '--version' \

    else
        cat
    fi
}
