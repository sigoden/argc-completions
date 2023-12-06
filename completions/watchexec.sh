#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --clear[clear|reset] <MODE>      Clear screen before running command
# @option -o --on-busy-update[queue|do-nothing|restart|signal] <MODE>  What to do when receiving events while the command is running
# @flag -r --restart                          Restart the process if it's still running
# @option -s --signal[`_module_os_signal`]    Send a signal to the process when it's still running
# @option --stop-signal[`_module_os_signal`] <SIGNAL>  Signal to send to stop the command
# @option --stop-timeout <TIMEOUT>            Time to wait for the command to exit gracefully
# @option -d --debounce <TIMEOUT>             Time to wait for new events before taking action
# @flag --stdin-quit                          Exit when stdin closes
# @flag -p --postpone                         Wait until first change before running command
# @option --delay-run <DURATION>              Sleep before running the command
# @option --poll <INTERVAL>                   Poll for filesystem changes
# @flag -N --notify                           Alert when commands start and end
# @option --project-origin <DIRECTORY>        Set the project origin
# @option --workdir <DIRECTORY>               Set the working directory
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @option -w --watch <PATH>                   Watch a specific file or directory
# @flag --no-vcs-ignore                       Don't load gitignores
# @flag --no-project-ignore                   Don't load project-local ignores
# @flag --no-global-ignore                    Don't load global ignores
# @flag --no-default-ignore                   Don't use internal default ignores
# @flag --no-discover-ignore                  Don't discover ignore files at all
# @option -e --exts <EXTENSIONS>              Filename extensions to filter to
# @option -f --filter <PATTERN>               Filename patterns to filter to
# @option --filter-file <PATH>                Files to load filters from
# @option -i --ignore <PATTERN>               Filename patterns to filter out
# @option --ignore-file <PATH>                Files to load ignores from
# @option --fs-events[access|create|remove|rename|modify|metadata] <EVENTS>  Filesystem events to filter to
# @flag --no-meta                             Don't emit fs events for metadata changes
# @option --shell[`_module_os_shell`]         Use a different shell
# @flag -n                                    Don't use a shell
# @flag --no-environment                      Shorthand for '--emit-events=none'
# @option --emit-events-to[environment|stdin|file|json-stdin|json-file|none] <MODE>  Configure event emission
# @option -E --env <KEY=VALUE>                Add env vars to the command
# @flag --no-process-group                    Don't use a process group
# @flag --print-events                        Print events that trigger actions
# @flag -v --verbose*                         Set diagnostic log level
# @option --log-file <PATH>                   Write diagnostic logs to a file
# @flag --manual                              Show the manual page
# @option --completions[bash|elvish|fish|nu|powershell|zsh]  Generate a shell completions script
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

_module_os_shell() {
    command cat /etc/shells | sed -n '/^\// p'   
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

command eval "$(argc --argc-eval "$0" "$@")"