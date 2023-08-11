_patch_help() { 
    $@ --help | sed 's/^Run Arguments:/Options:/'
}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '--cpuprofile(CPU_PROFILE_FILE)' \
            '--cwd(CWD_DIR)' \
            '--heap(HEAP_FILE)' \
            '--profile(PROFILE_FILE)' \
            '--trace(TRACE_FILE)' \
    )"
    if [[ "$*" == "turbo" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'task;*[`_choice_task`]'

    elif [[ "$*" == "turbo run" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'task;*[`_choice_task`]'

    else
        echo "$table"
    fi
}

_choice_task() {
    _helper_find_turbo_json_path
    if [[ -f "$turo_json_path" ]]; then
        cat "$turo_json_path" | yq '.pipeline | keys | .[]'
    fi
}

_helper_find_turbo_json_path() {
    if [[ -d "$argc_cwd" ]]; then
        cd "$argc_cwd"
    fi
    turo_json_path="$(_argc_util_path_search_parent turbo.json)"
}
