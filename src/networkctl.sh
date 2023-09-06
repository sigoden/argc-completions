_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "networkctl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'
        return
    fi
    _patch_table_edit_arguments 'devices;[`_choice_device`]'
}

_choice_device() {
    networkctl --no-legend --no-pager list 2>/dev/null | \
    sed -n 's/^\s*\(\S\+\) \(\S\+\).*/\2/p'
}
