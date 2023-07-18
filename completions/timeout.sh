#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --preserve-status               exit with the same status as COMMAND, even when the command times out
# @flag --foreground                    when not running timeout directly from a shell prompt, allow COMMAND to read from the TTY and get TTY signals; in this mode, children of COMMAND will not be timed out
# @option -k --kill-after <DURATION>    also send a KILL signal if COMMAND is still running this long after the initial signal was sent
# @option -s --signal                   specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or a number; see 'kill -l' for a list of signals
# @flag -v --verbose                    diagnose to stderr any signal sent upon timeout
# @flag --help                          display this help and exit
# @flag --version                       output version information and exit
# @arg duration
# @arg arg*

command eval "$(argc --argc-eval "$0" "$@")"