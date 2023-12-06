#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --pid[`_module_os_pid`]       Profile a running process by pid
# @option --completions[bash|elvish|fish|powershell|zsh] <SHELL>  Generate shell completions for the given shell
# @flag -v --verbose                       Print extra output to help debug problems
# @option -o --output                      Output file [default: flamegraph.svg]
# @flag --open                             Open the output .svg file with default program
# @flag --root                             Run with root privileges (using `sudo`)
# @option -F --freq <FREQUENCY>            Sampling frequency
# @option -c --cmd[`_module_os_command`] <CUSTOM_CMD>  Custom command for invoking perf/dtrace
# @flag --deterministic                    Colors are selected such that the color of a function does not change between runs
# @flag -i --inverted                      Plot the flame graph up-side-down
# @flag --reverse                          Generate stack-reversed flame graph
# @option --notes <STRING>                 Set embedded notes in SVG
# @option --min-width <FLOAT>              Omit functions smaller than <FLOAT> pixels [default: 0.01]
# @option --image-width <IMAGE_WIDTH>      Image width in pixels
# @option --palette[aqua|blue|green|hot|io|java|js|mem|orange|perl|python|purple|red|rust|wakeup|yellow]  Color palette
# @option --skip-after <FUNCTION>          Cut off stack frames below <FUNCTION>; may be repeated
# @flag --flamechart                       Produce a flame chart (sort by time, do not merge stacks)
# @flag --ignore-status                    Ignores perf's exit code
# @flag --no-inline                        Disable inlining for perf script because of performance issues
# @option --post-process <POST_PROCESS>    Run a command to process the folded stacks, taking the input from stdin and outputting to stdout
# @option --perfdata <PERF_FILE>
# @flag -h --help                          Print help
# @flag -V --version                       Print version
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

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"