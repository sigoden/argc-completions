_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "systemd-analyze" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'
        return
    fi
    _patch_table_edit_arguments \
        'unit;[`_choice_unit`]' \

}

_choice_unit() {
    _argc_util_parallel _choice_unit_only ::: _choice_unit_file
}

_choice_unit_file() {
    _systemctl list-unit-files -o json | yq '.[] | .unit_file'
}

_choice_unit_only() {
    _systemctl list-units -o json | yq '.[] | .unit + "	" + .description'
}

_systemctl() {
    systemctl $(_argc_util_param_select_options --user) "$@"
}
