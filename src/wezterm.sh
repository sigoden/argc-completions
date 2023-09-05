_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--cwd(<dir>)' \
            '--pane-id;[`_choice_pane`]' \
            '--tab-id;[`_choice_tab`]' \
            '--window-id;[`_choice_window`]' \
        | \
        _patch_table_edit_arguments \
            'prog;~[`_module_os_exec`]' \
    )"

    if [[ "$*" == "wezterm ssh" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'user_at_host_and_port;[`_module_ssh_host`]'

    elif [[ "$*" == "wezterm set-working-directory" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'cwd(<DIR>)'

    elif [[ "$*" == "wezterm shell-completion" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'shell;[bash|elvish|fish|power-shell|zsh|fig]'

    else
        echo "$table"
    fi
}

_choice_pane() {
    wezterm cli list --format json | \
    yq '.[] | .pane_id + "	" + .title'
}

_choice_window() {
    wezterm cli list --format json | \
    yq 'unique_by(.window_id) | .[] | .window_id + "	" + .window_title'
}

_choice_tab() {
    wezterm cli list --format json | \
    yq '.[] | .tab_id + "	" + .window_title'
}
