_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "bootctl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "bootctl set-default" ]] \
      || [[ "$*" == "bootctl set-oneshot" ]] \
    ; then
        _patch_table_edit_arguments 'id;[`_choice_boot`]'
        
    else
        cat
    fi
}

_choice_boot() {
    bootctl --no-legend --no-pager list | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}
