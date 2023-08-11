_patch_help() { 
    if [[ "$*" == "update-alternatives" ]]; then
        $@ --help
    else
        cat <<-'EOF' | _patch_help_select_subcmd $@
update-alternatives --install <link> <name> <path> <priority>
update-alternatives --remove <name> <path>
update-alternatives --remove-all <name>
update-alternatives --auto <name>
update-alternatives --display <name>
update-alternatives --query <name>
update-alternatives --list <name>
update-alternatives --get-selections
update-alternatives --set-selections
update-alternatives --config <name>
update-alternatives --set <name> <path>
update-alternatives --all
EOF
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_edit_arguments \
            'name;[`_choice_alternative`]' \
    )"

    if [[ "$*" == "update-alternatives" ]]; then
        _patch_table_edit_commands \
            ';;' \
            '--install;;add a group of alternatives to the system.' \
            '--remove;;remove <path> from the <name> group alternative.' \
            '--remove-all;;remove <name> group from the alternatives system.' \
            '--auto;;switch the master link <name> to automatic mode.' \
            '--display;;display information about the <name> group.' \
            '--query;;machine parseable version of --display <name>.' \
            '--list;;display all targets of the <name> group.' \
            '--get-selections;;list master alternative names and their status.' \
            '--set-selections;;read alternative status from standard input.' \
            '--config;;show alternatives for the <name> group and ask the user to select which one to use.' \
            '--set;;set <path> as alternative for <name>.' \
            '--all;;call --config on all alternatives.' \

    elif [[ "$*" == "update-alternatives --install" ]]; then
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
