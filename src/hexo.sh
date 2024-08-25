_patch_help() { 
    _prepare_workspace() {
        _patch_help_prepare_workspace $1
        if [[ ! -d "$workspace_dir" ]]; then
            mkdir -p "$base_dir" && \
            cd "$base_dir" && \
            hexo init "$1-completion" >/dev/null 2>&1
        fi
        cd "$workspace_dir"
    }
    _prepare_workspace $1 && $@ --help
}

_patch_table() {
    if [[ "$*" == "hexo" ]]; then
        _patch_table_add_metadata combine-shorts | \
        _patch_table_edit_options \
            '--config(<file>)' \
            '--cwd(<dir>)' \

    elif [[ "$*" == "hexo generate" ]]; then
        _patch_table_edit_options \
            '--concurrency(<number>)' \

    elif [[ "$*" == "hexo new" ]]; then
        _patch_table_edit_options \
            '--path(<path>)' \
            '--slug(<value>)' \

    elif [[ "$*" == "hexo render" ]]; then
        _patch_table_edit_options \
            '--engine(<value>)' \
            '--output(<dir>)' \

    elif [[ "$*" == "hexo server" ]]; then
        _patch_table_edit_options \
            '--ip(<value>)' \
            '--port(<port>)' \

    else
        cat
    fi
}
