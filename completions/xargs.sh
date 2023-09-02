#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -0 --null                       items are separated by a null, not whitespace; disables quote and backslash processing and logical EOF processing
# @option -a --arg-file <FILE>          read arguments from FILE, not standard input
# @option -d --delimiter <CHARACTER>    items in input stream are separated by CHARACTER, not by whitespace; disables quote and backslash processing and logical EOF processing
# @option -E <END>                      set logical EOF string; if END occurs as a line of input, the rest of the input is ignored (ignored if -0 or -d was specified)
# @option -e --eof <END>                equivalent to -E END if END is specified; otherwise, there is no end-of-file string
# @option -I <R>                        same as --replace=R
# @option -i --replace <R>              replace R in INITIAL-ARGS with names read from standard input, split at newlines; if R is unspecified, assume {}
# @option -L --max-lines                use at most MAX-LINES non-blank input lines per command line
# @option -l <MAX-LINES>                similar to -L but defaults to at most one non-blank input line if MAX-LINES is not specified
# @option -n --max-args                 use at most MAX-ARGS arguments per command line
# @flag -o --open-tty                   Reopen stdin as /dev/tty in the child process before executing the command; useful to run an interactive application.
# @option -P --max-procs                run at most MAX-PROCS processes at a time
# @flag -p --interactive                prompt before running commands
# @option --process-slot-var <VAR>      set environment variable VAR in child processes
# @flag -r --no-run-if-empty            if there are no arguments, then do not run COMMAND; if this option is not given, COMMAND will be run at least once
# @option -s --max-chars                limit length of command line to MAX-CHARS
# @flag --show-limits                   show limits on command-line length
# @flag -t --verbose                    print commands before executing them
# @flag -x --exit                       exit if the size (see -s) is exceeded
# @flag --help                          display this help and exit
# @flag --version                       output version information and exit
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

command eval "$(argc --argc-eval "$0" "$@")"