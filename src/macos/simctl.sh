_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'device;[`_choice_delete`]' \
            'runtime-id;[`_choice_runtime_id`]' \
            'argv-1-argv-2-argv-n(<args>...)' \
    )"
    if [[ "$*" == "simctl addmedia" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments  ';;' 'device;[`_choice_device`]' '<paths>...'

    elif [[ "$*" == "simctl delete" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'args;*[`_choice_delete`]'

    elif [[ "$*" == "simctl erase" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'args;*[`_choice_erase`]'


    elif [[ "$*" == "simctl io" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '--display' \
            '--mask' \

    elif [[ "$*" == "simctl runtime" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '-j' \
            '-v' \

    else
        echo "$table"
    fi
}

_choice_device() {
    xcrun simctl list devices | sed -n 's/ (.*)//p'
}

_choice_delete() {
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        print "%s\n" unavailable all
    fi
    _choice_device
}

_choice_runtime_id() {
    xcrun simctl list runtimes | sed -n 's/^\(.*\) - \(com\.apple\..*\)/\2\t\1/p'
}

_choice_erase() {
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        echo all
    fi
    _choice_device
}
