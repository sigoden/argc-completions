_patch_help() { 
    _patch_help_run_help $@ | sed 's/LOCATION/PATH/g'
    
}

_patch_table() { 
    if [[ "$*" == "gio copy" ]] \
    || [[ "$*" == "gio move" ]] \
    ; then
        _patch_table_edit_arguments \
            'source(<source-path>)' \
            'destination(<dest-path>)' \

    else
        cat
    fi

}
