#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -4                                  Resolve hostnames only to IPv4 addresses.
# @flag -6                                  Resolve hostnames only to IPv6 addresses.
# @flag -a                                  Force all capabilities into each window's termcap.
# @flag -A                                  Adapt all windows to the new display width & height.
# @option -c <file>                         Read configuration file instead of '.screenrc'.
# @option -d[`_choice_screen`] <-r>         Detach the elsewhere running screen (and reattach here).
# @option -dmS <name>                       Start as daemon: Screen session in detached mode.
# @option -D -RR[`_choice_screen`]          Do whatever is needed to get a screen session.
# @option -e <xy>                           Change command characters.
# @flag -f                                  Flow control on, -fn = off, -fa = auto.
# @option -h <lines>                        Set the size of the scrollback history buffer.
# @flag -i                                  Interrupt output sooner when flow control is on.
# @flag -l                                  Login mode on (update /var/run/utmp), -ln = off.
# @option -ls <match>                       or
# @flag -list                               Do nothing, just list our SockDir [on possible matches].
# @flag -L                                  Turn on output logging.
# @flag -Logfile                            file Set logfile name.
# @flag -m                                  ignore $STY variable, do create a new screen session.
# @flag -O                                  Choose optimal output rather than exact vt100 emulation.
# @option -p <window>                       Preselect the named window if it exists.
# @flag -q                                  Quiet startup.
# @flag -Q                                  Commands will send the response to the stdout of the querying process.
# @option -r[`_choice_screen`] <session>    Reattach to a detached screen process.
# @option -R[`_choice_screen`]              Reattach if possible, otherwise start a new session.
# @option -s[`_module_os_shell`] <shell>    Shell to execute rather than $SHELL.
# @option -S <sockname>                     Name this session <pid>.sockname instead of <pid>.<tty>.<host>.
# @option -t <title>                        Set title.
# @option -T <term>                         Use term as $TERM for windows, rather than "screen".
# @flag -U                                  Tell screen to use UTF-8 encoding.
# @flag -v                                  Print "Screen version 4.09.01 (GNU) 20-Aug-23".
# @option -wipe <match>                     Do nothing, just clean up SockDir [on possible matches].
# @option -x[`_choice_attached_screen`]     Attach to a not detached screen.
# @flag -X                                  Execute <cmd> as a screen command in the specified session.

_choice_screen() {
    _helper_list_screen
}

_choice_attached_screen() {
    _helper_list_screen | grep Detached
}

_helper_list_screen() {
    screen -list | sed -n 's/^\t\(\S\+\)\(\s*(.*)\)\?\s*(\(.*\))$/\1\t\3/p'
}

_module_os_shell() {
    command cat /etc/shells | sed -n '/^\// p'   
}

command eval "$(argc --argc-eval "$0" "$@")"