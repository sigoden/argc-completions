_patch_help() { 
    $@ --help | sed '/positional arguments:/,+1 c\Commands:'
}

_patch_table() { 
    if [[ "$*" == "asciinema" ]]; then
        _patch_table_edit_arguments ';;'
    else
        cat
    fi
}
