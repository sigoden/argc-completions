_patch_help() {
    if [[ $# -eq 1 ]]; then
        help_text="$($1 --help)"
        commands_text="$(echo "$help_text" | sed -n '/^Commands:/,/^Options:/ {//d; s/^/  /p;}')"
        options_text="$(echo "$help_text" | sed -n '/^Options:/,/^Commands:/ {//d; s/^/  /p;}')"
        cat <<-EOF
Commands:
${commands_text}
Options:
${options_text}
EOF
    else
        $1 --help | sed -n "/^Commands:/,/^Options:/ {s/^$2 \(.*\)$/usage: ipset $2 \1/p}"
    fi
}

_patch_table() {
    if [[ "$*" == "ipset" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'
        return
    fi

    _patch_table_edit_arguments \
        'setname;[`_choice_setname`]' \

}

_choice_setname() {
    ipset list --name 2>/dev/null
}
