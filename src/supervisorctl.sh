_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# add <name>... - Activates any updates in config for process/group
# exit - Exit the supervisor shell.
# open <url> - Connect to a remote supervisord process.
# reload - Restart the remote supervisord.
# restart <name>... - Restart processes
# start <name>... - Start processes
# tail <name> {stdout|stderr} - Tail of process log
    -f      Continuous tail
# avail - Display all configured processes
# fg <process> - Connect to a process in foreground mode, Ctrl-C to exit
# pid [name]... - Get the PID of process
# remove <name>... - Removes process/group from active config
# shutdown - Shut the remote supervisord down.
# status [name]... - Get status for processes
# update <name>... - Reload config and add/remove as necessary, and will restart affected programs
# clear <name>... - Clear process' log files
# maintail - Tail of supervisor main log file
    -f      Continuous tail
# quit - Exit the supervisor shell.
# reread - Reload the daemon's configuration files without add/remove
# signal <signal name> [name]... - Signal processes.
# stop [name]... - Stop processes.
# version - Show the version of the remote supervisord process
EOF
    if [[ $# -eq 1 ]]; then
        $@ --help | sed '/^Options:/,/^\s*$/ {s/ -- /   /;s/\/--/, --/;}'
    fi
}

_patch_table() {
    if [[ "$*" == "supervisorctl" ]]; then
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "supervisorctl add" ]] \
      || [[ "$*" == "supervisorctl remove" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_name`]'

    elif [[ "$*" == "supervisorctl restart" ]] \
      || [[ "$*" == "supervisorctl start" ]] \
      || [[ "$*" == "supervisorctl pid" ]] \
      || [[ "$*" == "supervisorctl status" ]] \
      || [[ "$*" == "supervisorctl update" ]] \
      || [[ "$*" == "supervisorctl clear" ]] \
      || [[ "$*" == "supervisorctl stop" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_name_all`]'

    elif [[ "$*" == "supervisorctl tail" ]]; then
        _patch_table_edit_arguments ';;' 'name;[`_choice_name`]' 'kind;[stdout|stderr]'

    elif [[ "$*" == "supervisorctl fg" ]]; then
        _patch_table_edit_arguments 'process;[`_choice_name`]'

    elif [[ "$*" == "supervisorctl signal" ]]; then
        _patch_table_edit_arguments 'signal-name;[`_choice_signal`]' 'name;[`_choice_name_all`]'

    else
        cat
    fi
}

_choice_name() {
    supervisorctl $(_argc_util_param_select_options --configuration) status | sed -n 's/^\(\S\+\) .*$/\1/p'
}

_choice_name_all() {
    _choice_name
    echo all
}

_choice_signal() {
    cat <<-'EOF'
SIGHUP	supervisord and all its subprocesses will shut down
SIGINT	supervisord and all its subprocesses will shut down
SIGQUIT	supervisord and all its subprocesses will shut down
SIGTERM	supervisord will reload the configuration and restart all processes
SIGUSR2	supervisord will close and reopen the main activity log and all child log files
EOF
}
