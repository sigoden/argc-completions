_patch_help() {
    if [[ "$*" == "launchctl" ]]; then
        $@ --help 2>&1
    elif [[ "$*" == "launchctl kickstart" ]] \
      || [[ "$*" == "launchctl attach" ]] \
      || [[ "$*" == "launchctl debug" ]] \
      || [[ "$*" == "launchctl list" ]] \
      || [[ "$*" == "launchctl submit" ]] \
    ; then
        _patch_help_run_man $1 | \
        _patch_help_strip_ansi | \
        sed -n '/^     '$2' /, /^     \S/ {//!p}' | \
        sed 's/^        //'

    elif [[ "$*" == "launchctl load" ]] \
      || [[ "$*" == "launchctl unload" ]] \
    ; then
        $@ --help 2>&1 | sed 's/\x00//g'
    fi
}

_patch_table() {
    if [[ "$*" == "launchctl debug" ]]; then
        _patch_table_edit_options \
            '--environment(<variable=value+>);;Sets the given environment variables on the service.' \
        | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "launchctl remove" ]] \
      || [[ "$*" == "launchctl start" ]] \
      || [[ "$*" == "launchctl stop" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'label;[`_choice_label`]'

    else
        _patch_table_edit_arguments ';;'
    fi
}

_choice_label() {
    launchctl list | gawk '{if (NR>1) { print $3 }}'
}
