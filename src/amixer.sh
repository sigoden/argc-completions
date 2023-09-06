_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e '/^\s*-/ s/ #=# / k=v /' \
            -e '/^\s*-/ s/ # / value /' \
            -e '/^Available commands:/,/^\s*$/ {s/  \(\S\+\) \(\S\+\) /  \1 <\2> /;}' \

    fi
}

_patch_table() {
    if [[ "$*" == "amixer" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--card;[`_choice_card`]' \
        | \
        _patch_table_edit_commands \
            'sset(sset, set)' \
            'sget(sget, get)' \
        
    elif [[ "$*" == "amixer sset" ]]; then
        _patch_table_edit_arguments ';;' 'sID;[`_choice_control`]' 'P'

    elif [[ "$*" == "amixer sget" ]]; then
        _patch_table_edit_arguments ';;' 'sID;[`_choice_control`]'

    elif [[ "$*" == "amixer cset" ]]; then
        _patch_table_edit_arguments ';;' 'cID;[`_choice_content`]' 'P'

    elif [[ "$*" == "amixer cget" ]]; then
        _patch_table_edit_arguments ';;' 'cID;[`_choice_content`]'


    else
        cat
    fi
}

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}

_choice_control() {
    amixer scontrols | sed -n "s/Simple mixer control '\(.*\)',.*/\1/p"
}

_choice_content() {
    amixer contents | sed -n "s/^numid.*,name='\(.*\)'$/\1/p"
}
