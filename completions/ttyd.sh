#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --port <port>                       Port to listen (default: 7681, use `0` for random port)
# @option -i --interface[`_choice_interface`]    Network interface to bind (eg: eth0), or UNIX domain socket path (eg: /var/run/ttyd.sock)
# @option -U --socket-owner[`_choice_socket_owner`]  User owner of the UNIX domain socket file, when enabled (eg: user:group)
# @option -c --credential <user:pass>            Credential for basic authentication (format: username:password)
# @option -H --auth-header <value>               HTTP Header name for auth proxy, this will configure ttyd to let a HTTP reverse proxy handle authentication
# @option -u --uid[`_module_os_user`]            User id to run with
# @option -g --gid[`_module_os_group`]           Group id to run with
# @option -s --signal[`_module_os_signal`]       Signal to send to the command when exit it
# @option -w --cwd <dir>                         Working directory to be set for the child program
# @option -a --url-arg <value>                   Allow client to send command line arguments in URL (eg: http://localhost:7681?arg=foo&arg=bar)
# @flag -W --writable                            Allow clients to write to the TTY (readonly by default)
# @option -t --client-option* <value>            Send option to client (format: key=value), repeat to add more options
# @option -T --terminal-type <value>             Terminal type to report, default: xterm-256color
# @flag -O --check-origin                        Do not allow websocket connection from different origin
# @option -m --max-clients <num>                 Maximum clients to support (default: 0, no limit)
# @flag -o --once                                Accept only one client and exit on disconnection
# @flag -B --browser                             Open terminal with the default system browser
# @option -I --index <path>                      Custom index.html path
# @option -b --base-path <path>                  Expected base path for requests coming from a reverse proxy (eg: /mounted/here, max length: 128)
# @option -P --ping-interval <sec>               Websocket ping interval(sec) (default: 5)
# @flag -6 --ipv6                                Enable IPv6 support
# @flag -S --ssl                                 Enable SSL
# @option -C --ssl-cert <path>                   SSL certificate file path
# @option -K --ssl-key <path>                    SSL key file path
# @option -A --ssl-ca <path>                     SSL CA file path for client certificate verification
# @option -d --debug <level>                     Set log level (default: 7)
# @flag -v --version                             Print the version and exit
# @flag -h --help                                Print this text and exit
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_interface() {
    _argc_util_comp_path
    _module_os_network_interface
}

_choice_socket_owner() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform nospace
    else
        _module_os_group
    fi
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

_module_os_signal() {
    command cat <<-'EOF'
ABRT	Abnormal termination
ALRM	Virtual alarm clock
BUS	BUS error
CHLD	Child status has changed
CONT	Continue stopped process
FPE	Floating-point exception
HUP	Hangup detected on controlling terminal
ILL	Illegal instruction
INT	Interrupt from keyboard
KILL	Kill, unblockable
PIPE	Broken pipe
POLL	Pollable event occurred
PROF	Profiling alarm clock timer expired
PWR	Power failure restart
QUIT	Quit from keyboard
SEGV	Segmentation violation
STKFLT	Stack fault on coprocessor
STOP	Stop process, unblockable
SYS	Bad system call
TERM	Termination request
TRAP	Trace/breakpoint trap
TSTP	Stop typed at keyboard
TTIN	Background read from tty
TTOU	Background write to tty
URG	Urgent condition on socket
USR1	User-defined signal 1
USR2	User-defined signal 2
VTALRM	Virtual alarm clock
WINCH	Window size change
XCPU	CPU time limit exceeded
XFSZ	File size limit exceeded
EOF
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"