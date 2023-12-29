_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'plugin;[`_choice_plugin`]' \
            'alias;[`_choice_alias`]' \
            'setting;[`_choice_setting`]' \
            'task;[`_choice_task`]' \
            'tool-version;[`_choice_tool_version`]' \
    )"

    if [[ "$*" == "rtx install" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'tool-version;[`_choice_all_tools`]'

    elif [[ "$*" == "rtx ls-remote" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'prefix;[`_choice_plugin`]'

    elif [[ "$*" == "rtx uninstall" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'tool-version;[`_choice_installed_tool_version`]'

    else
        echo "$table"
    fi
}

_choice_plugin() {
    rtx plugins ls --core --user
}

_choice_alias() {
    rtx alias ls | gawk '{print $2}'
}

_choice_tool_version() {
    _argc_util_mode_kv @
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_plugin
    else
        rtx ls-remote $argc__kv_prefix | tac
    fi
}

_choice_all_tools() {
    rtx plugins ls --all
}

_choice_task() {
    rtx task ls --no-header | gawk '{print $1}'
}

_choice_setting() {
    rtx settings ls | gawk '{print $1}'   
}

_choice_installed_tool_version() {
    rtx ls --installed | gawk '{print $1 "@" $2}'
}
