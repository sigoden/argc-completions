_patch_help() { 
    if [[ "$*" == "snap" ]]; then
        snap help --all | sed '/^  \S.*:$/ d'
    else
        $@ --help | \
        sed \
            -e 's/\[\S\+ command options\]/Options:/' \
            -e 's/\[\S\+ command arguments\]/Arguments:/' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'change-id;[`_choice_change`]' \
            'service;[`_choice_service`]' \
            'snap;[`_choice_installed_snap`]' \
    )"

    if [[ "$*" == "snap install" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'snap; '

    elif [[ "$*" == "snap disable" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'snap;[`_choice_enabled_snap`]'

    elif [[ "$*" == "snap enable" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'snap;[`_choice_disabled_snap`]'

    elif [[ "$*" == "snap interface" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'interface;[`_choice_interface`]' \

    elif [[ "$*" == "snap connect" ]] \
      || [[ "$*" == "snap disconnect" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'snap-plug;[`_choice_snap_plug`]' \
            'snap-slot;[`_choice_snap_slot`]' \

    elif [[ "$*" == "snap unalias" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'alias-or-snap;[`_choice_alias_or_snap`]' \

    else
        echo "$table"
    fi
    
}

_choice_installed_snap() {
    snap list | gawk '{ if (NR>1) { print $1 } }'
}

_choice_enabled_snap() {
    snap list | gawk '!/disabled|Name/ {print $1}'
}

_choice_disabled_snap() {
    snap list | gawk '/disabled/ {print $1}'
}

_choice_change() {
    snap changes | _argc_util_transform_table 'ID;Summary' '\t'
}

_choice_service() {
    snap services | tail -n +2 | gawk '{gsub(/\.server$/, "", $1); print $1}'
}

_choice_interface() {
    snap interface | _argc_util_transform_table 'Name;Summary' '\t'
}

_choice_snap_plug() {
    snap connections --all | _argc_util_transform_table 'Plug' | sed '/^-$/ d'
}

_choice_snap_slot() {
    snap connections --all | _argc_util_transform_table 'Slot' | sed '/^-$/ d'
}

_choice_alias_or_snap() {
    snap aliases | _argc_util_transform_table 'Command;Alias' '\n'
}
