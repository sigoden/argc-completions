_patch_help() {
    if [[ "$*" == "swift" ]]; then
        $@ --help | \
        sed \
            -e '/COMMANDS:/,$ s/^\s\+"swift \(\S\+\)" /  \1    /' \
            -e '/COMMANDS:/ cCommands:' \

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

    else
        cat
    fi
}