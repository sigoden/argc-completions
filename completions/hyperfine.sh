#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -w --warmup <NUM>                        Perform NUM warmup runs before the actual benchmark.
# @option -m --min-runs <NUM>                      Perform at least NUM runs for each command (default: 10).
# @option -M --max-runs <NUM>                      Perform at most NUM runs for each command.
# @option -r --runs <NUM>                          Perform exactly NUM runs for each command.
# @option -s --setup <CMD>                         Execute CMD before each set of timing runs.
# @option -p --prepare <CMD>                       Execute CMD before each timing run.
# @option -c --cleanup <CMD>                       Execute CMD after the completion of all benchmarking runs for each individual command to be benchmarked.
# @option -P --parameter-scan <VAR> <MIN> <MAX>    Perform benchmark runs for each value in the range MIN..MAX.
# @option -D --parameter-step-size <DELTA>         This argument requires --parameter-scan to be specified as well.
# @option -L --parameter-list <VAR> <VALUES>       Perform benchmark runs for each value in the comma-separated list VALUES.
# @option -S --shell[`_module_os_shell`]           Set the shell to use for executing benchmarked commands.
# @flag -N                                         An alias for '--shell=none'.
# @flag -i --ignore-failure                        Ignore non-zero exit codes of the benchmarked programs.
# @option --style[`_choice_style`] <TYPE>          Set output style type (default: auto).
# @option --sort[`_choice_sort`] <METHOD>          Specify the sort order of the speed comparison summary and the exported tables for markup formats:
# @option -u --time-unit[microsecond|millisecond|second] <UNIT>  Set the time unit to be used.
# @option --export-asciidoc <FILE>                 Export the timing summary statistics as an AsciiDoc table to the given FILE.
# @option --export-csv <FILE>                      Export the timing summary statistics as CSV to the given FILE.
# @option --export-json <FILE>                     Export the timing summary statistics and timings of individual runs as JSON to the given FILE.
# @option --export-markdown <FILE>                 Export the timing summary statistics as a Markdown table to the given FILE.
# @option --export-orgmode <FILE>                  Export the timing summary statistics as an Emacs org-mode table to the given FILE.
# @flag --show-output                              Print the stdout and stderr of the benchmark instead of suppressing it.
# @option --output <WHERE>                         Control where the output of the benchmark is redirected.
# @option --input <WHERE>                          Control where the input of the benchmark comes from.
# @option -n --command-name <NAME>                 Give a meaningful name to a command.
# @flag -h --help                                  Print help
# @flag -V --version                               Print version
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_style() {
    cat <<-'EOF'
basic	disable output coloring and interactive elements
full	enable all effects even if no interactive terminal was detected.
nocolor	keep the interactive output without any colors.
color	keep the colors without any interactive output.
none	disable all the output of the tool.
EOF
}

_choice_sort() {
    cat <<-'EOF'
auto	the speed comparison will be ordered by time and the markup tables will be ordered by command (input order).
command	order benchmarks in the way they were specified
mean-time	order benchmarks by mean runtime
EOF
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

_module_os_shell() {
    command cat /etc/shells | sed -n '/^\// p'   
}

command eval "$(argc --argc-eval "$0" "$@")"