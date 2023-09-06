_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "loginctl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'
        return
    fi
    _patch_table_edit_arguments \
        'id;[`_choice_session`]' \
        'user;[`_choice_user`]' \
        'name;[`_choice_seat`]' \

}

_choice_session() {
    loginctl --no-legend --no-pager list-sessions | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}

_choice_user() {
    loginctl --no-legend --no-pager list-sessions | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}

_choice_seat() {
    loginctl list-seats --output json | yq '.[].seat'
}
