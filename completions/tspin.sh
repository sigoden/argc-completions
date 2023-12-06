#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --follow                               Follow (tail) the contents of the file
# @flag -t --tail                                 Start at the end of the file
# @flag -p --print                                Print the output to stdout
# @option -c --config-path <CONFIG_PATH>          Path to a custom configuration file
# @option -l --follow-command <LISTEN_COMMAND>    Continuously listens to the stdout of the provided command and prevents interrupt events (Ctrl + C) from reaching the command
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