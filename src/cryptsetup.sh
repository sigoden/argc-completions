_patch_help() {
    if [[ "$*" == "cryptsetup" ]]; then
        $1 --help | \
        sed \
            -e '/^Usage:/ d' \
            -e 's/^<action> is one of:/Commands:/' \
            -e '/^Commands/,/^\s*$/ s/^\s\+\(\S\+\).* - \(.*\)$/  \1    \2/' \

    else
        $1 --help | sed -n "s/^\s\+$2 \(.*\) - .*/Usage: $2 \1/p"
    fi
}

_patch_table() {
    _patch_table_add_metadata 'inherit-flag-options' | \
    _patch_table_edit_arguments \
        'device;[`_choice_device`]' \
        'name;[`_choice_name`]' \

}

_choice_device() {
    _argc_util_comp_path
}

_choice_name() {
    ls -1 /dev/mapper/ | grep -v '^control$'
}
