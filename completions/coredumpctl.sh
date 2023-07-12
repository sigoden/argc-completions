#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                           Show this help
# @flag --version                           Print version string
# @flag --no-pager                          Do not pipe output into a pager
# @flag --no-legend                         Do not print the column headers
# @option --json[pretty|short|off] <pretty|short|off>  Generate JSON output
# @option --debugger[`_choice_debugger`]    Use the given debugger
# @option -A --debugger-arguments <ARGS>    Pass the given arguments to the debugger
# @option -n <INT>                          Show maximum number of rows
# @flag -1                                  Show information about most recent entry only
# @option -S --since <DATE>                 Only print coredumps since the date
# @option -U --until <DATE>                 Only print coredumps until the date
# @flag -r --reverse                        Show the newest entries first
# @option -F --field                        List all values a certain field takes
# @option -o --output <FILE>                Write output to FILE
# @option --file <PATH>                     Use journal file
# @option -D --directory <DIR>              Use journal files from directory
# @flag -q --quiet                          Do not show info messages and privilege warning


# {{ coredumpctl list
# @cmd List available coredumps (default)
list() {
    :;
}
# }} coredumpctl list

# {{ coredumpctl info
# @cmd Show detailed information about one or more coredumps
info() {
    :;
}
# }} coredumpctl info

# {{ coredumpctl dump
# @cmd Print first matching coredump to stdout
dump() {
    :;
}
# }} coredumpctl dump

# {{ coredumpctl debug
# @cmd Start a debugger for the first matching coredump
debug() {
    :;
}
# }} coredumpctl debug

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_debugger() {
    _argc_util_comp_file
    _choice_command
}

_choice_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"