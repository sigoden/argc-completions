_patch_help() {
    $@ -h 2>&1 | sed -n '/^Options:/,/^[A-Z]/ {//!p}'
}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
}

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ -n "$GOOSE_DRIVER" ]] && [[ -n "$GOOSE_DBSTRING" ]]; then
        if [[ "$len" -lt 2 ]]; then
            _choice_action
            return
        fi
    else
        if [[ "$len" -lt 2 ]]; then
            _choice_driver
        elif [[ "$len" -eq 2 ]]; then
            if _argc_util_has_path_prefix; then
                _argc_util_comp_path
                return
            fi
        elif [[ "$len" -eq 3 ]]; then
            _choice_action
        fi
    fi
}

_choice_action() {
    goose -h 2>&1 | sed -n '/^Commands:/,/^\s*$/ s/^\s\+\(\S\+\).*/\1/p'
}

_choice_driver() {
    goose -h 2>&1 | sed -n '/^Drivers:/,/^\s*$/ s/^\s\+\(\S\+\)/\1/p'
}
