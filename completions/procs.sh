#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --and                                AND  logic for multi-keyword
# @flag -o --or                                 OR  logic for multi-keyword
# @flag -d --nand                               NAND logic for multi-keyword
# @flag -r --nor                                NOR  logic for multi-keyword
# @flag -l --list                               Show list of kind
# @flag --thread                                Show thread
# @flag -t --tree                               Tree view
# @flag -w --watch                              Watch mode with default interval (1s)
# @option -W --watch-interval <second>          Watch mode with custom interval
# @option -i --insert[`_choice_kind`] <kind>    Insert column to slot
# @option --only[`_choice_kind`] <kind>         Specified column only
# @option --sorta[`_choice_kind`] <kind>        Sort column by ascending
# @option --sortd[`_choice_kind`] <kind>        Sort column by descending
# @option -c --color[auto|always|disable]       Color mode
# @option --theme[auto|dark|light]              Theme mode
# @option -p --pager[auto|always|disable]       Pager mode
# @option --interval <millisec>                 Interval to calculate throughput
# @option --use-config[default|large] <name>    Use built-in configuration
# @option --load-config <path>                  Load configuration from file
# @flag --gen-config                            Generate configuration sample file
# @option --gen-completion[bash|elvish|fish|powershell|zsh] <shell>  Generate shell completion file
# @option --gen-completion-out[bash|elvish|fish|powershell|zsh] <shell>  Generate shell completion file and write to stdout
# @flag --no-header                             Suppress header
# @flag -h --help                               Print help information
# @flag -V --version                            Print version information
# @arg keyword+                                 Keywords for search

_choice_kind() {
    printf "%s\n" PID User TTY MEM Time Command
}

command eval "$(argc --argc-eval "$0" "$@")"