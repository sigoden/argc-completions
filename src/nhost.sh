_patch_help() {
    if [[ "$*" == "nhost dev compose" ]] \
    || [[ "$*" == "nhost dev hasura" ]] \
    ; then
        :;
    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
    )"
    if [[ "$*" == "nhost dev compose" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'command;~[`_choice_compose`]'

    elif [[ "$*" == "nhost dev hasura" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'command;~[`_choice_hasura`]'
    
    
    elif [[ $*  == "nhost secrets delete" ]] \
      || [[ $*  == "nhost secrets update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;[`_choice_secret`]'

    elif [[ $*  == "nhost secrets delete" ]] \
      || [[ $*  == "nhost secrets update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;[`_choice_secret`]'

    else
        echo "$table"
    fi
}

_choice_compose() {
    _argc_util_comp_subcommand 0 docker-compose
}

_choice_hasura() {
    _argc_util_comp_subcommand 0 hasura
}

_choice_secret() {
    nhost secrets list
}
