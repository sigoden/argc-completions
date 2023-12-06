_patch_table() {
    if [[ "$*" == "zellij action move-focus" ]] \
    || [[ "$*" == "zellij action move-focus-or-tab" ]] \
    || [[ "$*" == "zellij action move-pane" ]] \
    ; then
        _patch_table_edit_arguments 'direction;[`_choice_direction`]'

    elif [[ "$*" == "zellij action new-pane" ]]; then
        _patch_table_edit_arguments 'command;~[`_module_os_exec`]'

    elif [[ "$*" == "zellij action resize" ]]; then
        _patch_table_edit_arguments 'resize;[increase|decrease]' 'direction;[`_choice_direction`]'

    elif [[ "$*" == "zellij action switch-mode" ]]; then
        _patch_table_edit_arguments 'input_mode;[locked|pane|tab|resize|move|search|session]'

    elif [[ "$*" == "zellij attach" ]]; then
        _patch_table_edit_arguments 'session_name;[`_choice_session`]'

    elif [[ "$*" == "zellij delete-session" ]] \
      || [[ "$*" == "zellij kill-session" ]] \
    ; then
        _patch_table_edit_arguments 'target_session;[`_choice_session`]'

    elif [[ "$*" == "zellij run" ]]; then
        _patch_table_edit_arguments 'command;~[`_module_os_exec`]'

    else
        cat
    fi
}

_choice_direction() {
    printf "%s\n" right left up down
}

_choice_session() {
    zellij list-sessions
}
