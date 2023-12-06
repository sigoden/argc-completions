#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --arg <NAME> <VALUE>                    Set variable $NAME to string VALUE
# @option --argdecode <NAME> <PATH>               Set variable $NAME to decode of PATH
# @option --argjson <NAME> <JSON>                 Set variable $NAME to JSON
# @flag -C --color-output                         Force color output
# @flag -c --compact-output                       Compact output
# @option -d --decode[`_choice_decode`] <NAME>    Decode format or group (probe)
# @option -f --from-file <PATH>                   Read EXPR from file
# @option -h --help <TOPIC>                       Show help for TOPIC (ex: -h formats, -h mp4)
# @option -L --include-path <PATH>                Include search path
# @flag -j --join-output                          No newline after each output
# @flag -M --monochrome-output                    Force monochrome output
# @flag -n --null-input                           Null input (use input and inputs functions to read)
# @option -o --option[`_choice_option`] <KEY=VALUE/@PATH>  Set option (ex: -o color=true, see --help options)
# @option --raw-file <NAME> <PATH>                Set variable $NAME to string content of file
# @flag -R --raw-input                            Read raw input strings (don't decode)
# @flag -r --raw-output                           Raw string output (without quotes)
# @flag --raw-output0                             NUL (zero) byte after each output
# @flag -i --repl                                 Interactive REPL
# @flag -s --slurp                                Slurp all inputs into an array or string (-Rs)
# @flag -U --unicode-output                       Force unicode output
# @flag -V --value-output                         Output JSON value (-Vr for raw string)
# @flag -v --version                              Show version
# @arg expr
# @arg file*

_choice_decode() {
    fq --help formats | sed 's/\s\+\(.*\)/\t\1/'
}

_choice_option() {
    fq --help options | sed 's/\s\+\(.*\)/\t\1/'
}

command eval "$(argc --argc-eval "$0" "$@")"