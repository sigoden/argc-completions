#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -n --null-input                        Use null as single input value
# @flag -e --exit-status                       Use the last output value as exit status code
# @flag -s --slurp                             Read (slurp) all input values into one array
# @flag -i --in-place                          Overwrite input file with its output
# @flag -r --raw-output                        Write strings without escaping them with quotes
# @flag -R --raw-input                         Read lines of the input as sequence of strings
# @flag -c --compact-output                    Print JSON compactly, omitting whitespace
# @option --indent <n>                         Use n spaces for indentation
# @flag --tab                                  Use tabs for indentation rather than spaces
# @flag -j --join-output                       Do not print a newline after each value
# @option --color[always|auto|never] <WHEN>    Color output
# @option -f --from-file <FILE>                Read filter from a file
# @option --arg <a> <v>                        Set variable `$<a>` to string `<v>`
# @option --rawfile <a> <f>                    Set variable `$<a>` to string containing the contents of file `f`
# @option --slurpfile <a> <f>                  Set variable `$<a>` to array containing the JSON values in file `f`
# @option --run-tests <FILE>                   Run tests from a file
# @flag -h --help                              Print help information (use `-h` for a summary)
# @flag -V --version                           Print version information
# @arg args*                                   Filter to execute, followed by list of input files

command eval "$(argc --argc-eval "$0" "$@")"