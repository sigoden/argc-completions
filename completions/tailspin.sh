#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --follow                               Follow the contents of a file
# @flag -e --start-at-end                         Start at the end of the file
# @flag -p --print                                Print the output to stdout
# @option --config-path <CONFIG_PATH>             Provide a custom path to a configuration file
# @option -c --listen-command <LISTEN_COMMAND>    Continuously listen to stdout from the provided command and prevent interrupt events (Ctrl + C) from reaching the command
# @option --words-red <WORDS_RED>                 Highlight the provided words in red
# @option --words-green <WORDS_GREEN>             Highlight the provided words in green
# @option --words-yellow <WORDS_YELLOW>           Highlight the provided words in yellow
# @option --words-blue <WORDS_BLUE>               Highlight the provided words in blue
# @option --words-magenta <WORDS_MAGENTA>         Highlight the provided words in magenta
# @option --words-cyan <WORDS_CYAN>               Highlight the provided words in cyan
# @flag --disable-builtin-keywords                Disable the highlighting of all builtin keyword groups (booleans, severity and REST)
# @flag --disable-booleans                        Disable the highlighting of booleans and nulls
# @flag --disable-severity                        Disable the highlighting of severity levels
# @flag --disable-rest                            Disable the highlighting of REST verbs
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @arg file                                       Path to file or folder

command eval "$(argc --argc-eval "$0" "$@")"