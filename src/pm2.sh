_patch_help() {
    $@ --help | \
    sed \
        -e 's/^  //' \
        -e '/^Commands:/,$ {s/^  \(\S\+\)\( \S\+\)* \{2,\}\(.*\)$/  \1  \3/; s/|/, /g;}' \
        -e 's/, --version//' \
        -e 's/-c --cron-restart/--cron-restart/' \
        -e 's/Usage: \(\S\+\)/Usage: prog/' \

}

_patch_table() {
    if [[ "$*" == "pm2" ]]; then
        _patch_table_edit_options \
            '--gid;[`_module_os_gid`]' \
            '--log-type;[raw|json]' \
            '--pid(<path>)' \
            '--uid;[`_module_os_uid`]' \
            '--user;[`_module_os_user`]' \
        | \
        _patch_table_edit_arguments ';;' | \
        _patch_table_edit_commands \
            'config(config, conf)' \
            'describe(describe, desc)' \
            'info(info, show)' \
            'list(list, ls, l, ps, status)' \
            'l' \
            'ps' \
            'status' \

    elif [[ "$*" == "pm2 start" ]]; then
        _patch_table_copy_options pm2 | \
        _patch_table_dedup_options \
            '--help' \
            '--watch' \
        | \
        _patch_table_edit_arguments ';;' 'target;[`_choice_start`]'

    elif [[ "$*" == "pm2 trigger" ]]; then
        _patch_table_edit_arguments ';;' 'target;[`_choice_reload`]' 'action_name' 'param'

    elif [[ "$*" == "pm2 startOrRestart" ]] \
      || [[ "$*" == "pm2 startOrReload" ]] \
      || [[ "$*" == "pm2 startOrGracefulReload" ]] \
    ; then
        _patch_table_edit_arguments 'json(file:.json)'

    elif [[ "$*" == "pm2 pid" ]] \
      || [[ "$*" == "pm2 scale" ]] \
    ; then
        _patch_table_edit_arguments \
            'app_name;[`_choice_name`]'\

    elif [[ "$*" == "pm2 stop" ]] \
      || [[ "$*" == "pm2 restart" ]] \
      || [[ "$*" == "pm2 delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'target;[`_choice_stop`]'

    elif [[ "$*" == "pm2 reload" ]]; then
        _patch_table_edit_arguments ';;' 'target;[`_choice_reload`]'

    elif [[ "$*" == "pm2 id" ]] \
      || [[ "$*" == "pm2 inspect" ]] \
      || [[ "$*" == "pm2 monitor" ]] \
      || [[ "$*" == "pm2 unmonitor" ]] \
      || [[ "$*" == "pm2 forward" ]] \
      || [[ "$*" == "pm2 backward" ]] \
    ; then
        _patch_table_edit_arguments \
            'name;[`_choice_name`]'\

    elif [[ "$*" == "pm2 sendSignal" ]]; then
        _patch_table_edit_arguments \
            'pm2_id-name;[`_choice_id_name`]' \

    elif [[ "$*" == "pm2 publish" ]]; then
        _patch_table_edit_arguments 'folder(<dir>)'

    elif [[ "$*" == "pm2 send" ]] \
      || [[ "$*" == "pm2 attach" ]] \
    ; then
        _patch_table_edit_arguments 'pm_id;[`_choice_pm_id`]'

    elif [[ "$*" == "pm2 reset" ]]; then
        _patch_table_edit_arguments ';;' 'target;[`_choice_reset`]'


    elif [[ "$*" == "pm2 describe" ]] \
      || [[ "$*" == "pm2 info" ]] \
    ; then
        _patch_table_edit_arguments 'name-id;[`_choice_id_name`]'

    elif [[ "$*" == "pm2 env" ]]; then
        _patch_table_edit_arguments 'id;[`_choice_pm_id`]'

    elif [[ "$*" == "pm2 logs" ]]; then
        _patch_table_edit_arguments ';;' 'target;[`_choice_log`]'

    else
        cat
    fi
}

_choice_start() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_log
}

_choice_reload() {
    _choice_log
    echo all
}

_choice_name() {
    pm2 jlist | yq '.[].name'
}

_choice_stop() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_log
    echo all
}

_choice_id_name() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name, .[].name'
}

_choice_pm_id() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name'
}

_choice_reset() {
    _choice_id_name
    echo all
}

_choice_log() {
    pm2 jlist | yq '.[] | .pm_id + "	" + .name, .[].name, .[].pm2_env.namespace // ""'
}
