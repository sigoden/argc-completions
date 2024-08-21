_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help   
    fi
}

_patch_table() {
    if [[ "$*" == "timedatectl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "timedatectl set-time" ]]; then
        _patch_table_edit_arguments ';;' 'time'

    elif [[ "$*" == "timedatectl set-timezone" ]]; then
        _patch_table_edit_arguments ';;' 'timezone;[`_choice_timezone`]'

    elif [[ "$*" == "timedatectl set-local-rtc" ]] \
      || [[ "$*" == "timedatectl set-ntp" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'bool;[true|false]'

    else
        cat
    fi
}

_choice_timezone() {
    timedatectl list-timezones   
}
