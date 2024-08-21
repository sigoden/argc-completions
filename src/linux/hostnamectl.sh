_patch_help() { 
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "hostnamectl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    else
        cat
    fi
}
