_patch_help() {
    if [[ "$*" == "rebar3" ]]; then
        $1 --help 2>&1 | gawk '{
            if (match($0, /Several tasks are available:$/)) {
                commandZone = 1
                print "Commands:"
            } else {
                if (commandZone) {
                    if (match($0, /^\S/)) {
                        if (match($0, /^Run /)) {

                        } else if (match($0, / <task>:$/)) {
                            print "  " substr($0, 0, RSTART)
                        } else {
                            print "  " $0
                        }
                    }
                } else {
                    print $0
                }
            }
        }'
    else
        _patch_help_run_help_subcmd $@ | \
        sed \
            -e 's/^.*<task>:$/Commands:/' \
            -e 's/\[{\|}\]//g' \

    fi
}

_patch_table() {
    _patch_table_edit_arguments ';;' | sed 's/ # \[.*\]$//'
}
