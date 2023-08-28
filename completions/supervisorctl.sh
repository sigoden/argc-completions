#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --configuration <FILENAME>    configuration file path (searches if not given)
# @flag -h --help                          print usage message and exit
# @flag -i --interactive                   start an interactive shell after executing commands
# @option -s --serverurl <URL>             URL on which supervisord server is listening
# @option -u --username                    username to use for authentication with server
# @option -p --password                    password to use for authentication with server
# @flag -r --history-file                  keep a readline history (if readline is available)

# {{ supervisorctl add
# @cmd Activates any updates in config for process/group
# @arg name+[`_choice_name`]
add() {
    :;
}
# }} supervisorctl add

# {{ supervisorctl exit
# @cmd Exit the supervisor shell.
exit() {
    :;
}
# }} supervisorctl exit

# {{ supervisorctl open
# @cmd Connect to a remote supervisord process.
# @arg url!
open() {
    :;
}
# }} supervisorctl open

# {{ supervisorctl reload
# @cmd Restart the remote supervisord.
reload() {
    :;
}
# }} supervisorctl reload

# {{ supervisorctl restart
# @cmd Restart processes
# @arg name+[`_choice_name_all`]
restart() {
    :;
}
# }} supervisorctl restart

# {{ supervisorctl start
# @cmd Start processes
# @arg name+[`_choice_name_all`]
start() {
    :;
}
# }} supervisorctl start

# {{ supervisorctl tail
# @cmd Tail of process log
# @flag -f    Continuous tail
# @arg name[`_choice_name`]
# @arg kind[stdout|stderr]
tail_() {
    :;
}
# }} supervisorctl tail

# {{ supervisorctl avail
# @cmd Display all configured processes
avail() {
    :;
}
# }} supervisorctl avail

# {{ supervisorctl fg
# @cmd Connect to a process in foreground mode, Ctrl-C to exit
# @arg process![`_choice_name`]
fg() {
    :;
}
# }} supervisorctl fg

# {{ supervisorctl pid
# @cmd Get the PID of process
# @arg name*[`_choice_name_all`]
pid() {
    :;
}
# }} supervisorctl pid

# {{ supervisorctl remove
# @cmd Removes process/group from active config
# @arg name+[`_choice_name`]
remove() {
    :;
}
# }} supervisorctl remove

# {{ supervisorctl shutdown
# @cmd Shut the remote supervisord down.
shutdown() {
    :;
}
# }} supervisorctl shutdown

# {{ supervisorctl status
# @cmd Get status for processes
# @arg name*[`_choice_name_all`]
status() {
    :;
}
# }} supervisorctl status

# {{ supervisorctl update
# @cmd Reload config and add/remove as necessary, and will restart affected programs
# @arg name+[`_choice_name_all`]
update() {
    :;
}
# }} supervisorctl update

# {{ supervisorctl clear
# @cmd Clear process' log files
# @arg name+[`_choice_name_all`]
clear() {
    :;
}
# }} supervisorctl clear

# {{ supervisorctl maintail
# @cmd Tail of supervisor main log file
# @flag -f    Continuous tail
maintail() {
    :;
}
# }} supervisorctl maintail

# {{ supervisorctl quit
# @cmd Exit the supervisor shell.
quit() {
    :;
}
# }} supervisorctl quit

# {{ supervisorctl reread
# @cmd Reload the daemon's configuration files without add/remove
reread() {
    :;
}
# }} supervisorctl reread

# {{ supervisorctl signal
# @cmd Signal processes.
# @arg signal-name![`_choice_signal`] <signal name>
# @arg name*[`_choice_name_all`]
signal() {
    :;
}
# }} supervisorctl signal

# {{ supervisorctl stop
# @cmd Stop processes.
# @arg name*[`_choice_name_all`]
stop() {
    :;
}
# }} supervisorctl stop

# {{ supervisorctl version
# @cmd Show the version of the remote supervisord process
version() {
    :;
}
# }} supervisorctl version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"