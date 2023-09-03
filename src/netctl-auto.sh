_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    _patch_table_edit_arguments 'profile;[`_choice_profile`]'
}

_choice_profile() {
    netctl-auto list | tr -d ' *\t'
}
