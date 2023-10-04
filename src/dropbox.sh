_patch_help() {
    if [[ $# -eq 1 ]]; then
        dropbox help | \
        sed \
            -e '/^commands:/,+3 c\Commands:' \

    elif [[ $# -eq 2 ]]; then
        _patch_help_run_help_subcmd $@

    fi
}
