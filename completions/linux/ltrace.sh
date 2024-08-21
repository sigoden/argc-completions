#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --align <COLUMN>               align return values in a secific column.
# @option -A <MAXELTS>                      maximum number of array elements to print.
# @flag -b --no-signals                     don't print signals.
# @flag -c                                  count time and calls, and report a summary on exit.
# @flag -C --demangle                       decode low-level symbol names into user-level names.
# @option -D --debug <MASK>                 enable debugging (see -Dh or --debug=help).
# @option -e <FILTER>                       modify which library calls to trace.
# @flag -f                                  trace children (fork() and clone()).
# @option -F --config <FILE>                load alternate configuration file (may be repeated).
# @flag -h --help                           display this help and exit.
# @flag -i                                  print instruction pointer at time of library call.
# @option -l --library <LIBRARY_PATTERN>    only trace symbols implemented by this library.
# @flag -L                                  do NOT display library calls.
# @option -n --indent <NR>                  indent output by NR spaces for each call level nesting.
# @option -o --output <FILENAME>            write the trace output to file with given name.
# @option -p <PID>                          attach to the process with the process ID pid.
# @flag -r                                  print relative timestamps.
# @option -s <STRSIZE>                      specify the maximum string size to print.
# @flag -S                                  trace system calls as well as library calls.
# @flag -t                                  print absolute timestamps.
# @flag -tt                                 print absolute timestamps.
# @flag -ttt                                print absolute timestamps.
# @flag -T                                  show the time spent inside each call.
# @option -u <USERNAME>                     run command with the userid, groupid of username.
# @flag -V --version                        output version information and exit.
# @option -x <FILTER>                       modify which static functions to trace.
# @arg command[`_module_os_command`]
# @arg arg*

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

command eval "$(argc --argc-eval "$0" "$@")"