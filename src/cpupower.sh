_patch_help() {
    if [[ "$*" == "cpupower" ]]; then
        _patch_help_run_man $@
        $@ --help | sed 's/^Supported commands are:/Commands:/'
    else
        $@ --help | \
        sed \
            -e 's/-a --related-cpus/--related-cpus/'
    fi
}

_patch_table() {
    if [[ "$*" == "cpupower frequency-set" ]]; then
        _patch_table_edit_options \
            '--governor;[`_choice_governor`]' \

    elif [[ "$*" == "cpupower monitor" ]]; then
        _patch_table_edit_options \
            '-m;*,[`_choice_monitor`]' \

    else
        cat
    fi
}

_choice_governor() {
    cpupower frequency-info -g | \
    sed -n 's/  .*: \(.*\)\s*$/\1/p' | \
    tr ' ' '\n'
}

_choice_monitor() {
    cpupower monitor -l 2>/dev/null | \
    sed -n 's/^Monitor "\(\S\+\)" (.*) - \(.*\)/\1\t\2/p'
}
