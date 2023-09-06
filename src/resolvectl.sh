_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "resolvectl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--class;[`_choice_class`]' \
            '--interface;[`_choice_interface`]' \
            '--protocol;[`_choice_protocol`]' \
            '--type;[`_choice_type`]' \

    else
        cat
    fi
}

_choice_interface() {
    resolvectl status | sed -n 's/^Link\s\+[0-9]\+\s\+(\(.*\))$/\1/p'
}

_choice_protocol() {
    resolvectl --protocol help | tail -n +2
}

_choice_type() {
    resolvectl --type help | tail -n +2
}

_choice_class() {
    resolvectl --class help | tail -n +2
}
