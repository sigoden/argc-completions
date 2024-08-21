_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e '/^\s*-/ s/ #=# / k=v /' \
            -e '/^\s*-/ s/ # / value /' \
            -e '/^Available commands:/,/^\s*$/ {s/\s\+\(<\S\+>\)/ \1/;}' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
    )"

    if [[ "$*" == "alsactl" ]]; then
        echo "$table" | \
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "alsactl store" ]] \
      || [[ "$*" == "alsactl restore" ]] \
      || [[ "$*" == "alsactl nrestore" ]] \
      || [[ "$*" == "alsactl init" ]] \
      || [[ "$*" == "alsactl daemon" ]] \
      || [[ "$*" == "alsactl rdaemon" ]] \
      || [[ "$*" == "alsactl monitor" ]] \
      || [[ "$*" == "alsactl clean" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'card;[`_choice_card`]' \

    else
        echo "$table"
    fi
}

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}
