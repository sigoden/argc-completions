_patch_help() { 
    if [[ "$*" == "update-alternatives" ]]; then
        $@ --help  | sed '/^Commands/,/^$/ d'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# --install <link> <name> <path> <priority> - add a group of alternatives to the system.
# --remove <name> <path> - remove <path> from the <name> group alternative.
# --remove-all <name> - remove <name> group from the alternatives system.
# --auto <name> - switch the master link <name> to automatic mode.
# --display <name> - display information about the <name> group.
# --query <name> - machine parseable version of --display <name>.
# --list <name> - display all targets of the <name> group.
# --get-selections - list master alternative names and their status.
# --set-selections - read alternative status from standard input.
# --config <name> - show alternatives for the <name> group and ask the user to select which one to use.
# --set <name> <path> - set <path> as alternative for <name>.
# --all - call --config on all alternatives.
EOF

}

_patch_table() { 
    table="$( \
        _patch_table_edit_arguments \
            'name;[`_choice_alternative`]' \
    )"

    if [[ "$*" == "update-alternatives --install" ]]; then
        echo "$table" | \
            _patch_table_edit_arguments \
                'link(<link-path>)'

    else
        echo "$table"
    fi
}

_choice_alternative() {
    local admindir="$argc_admindir"
    if [[ -z "$admindir" ]]; then
        for i in alternatives dpkg/alternatives rpm/alternatives; do
            [[ -d /var/lib/$i ]] && admindir=/var/lib/$i && break
        done
    fi
    ls -1 "$admindir"
}
