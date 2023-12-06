#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ zoxide add
# @cmd Add a new directory or increment its rank
# @flag -h --help       Print help
# @flag -V --version    Print version
# @arg paths+
add() {
    :;
}
# }} zoxide add

# {{ zoxide edit
# @cmd Edit the database
# @flag -h --help       Print help
# @flag -V --version    Print version
edit() {
    :;
}
# }} zoxide edit

# {{ zoxide import
# @cmd Import entries from another application
# @option --from[autojump|z]    Application to import from
# @flag --merge                 Merge into existing database
# @flag -h --help               Print help
# @flag -V --version            Print version
# @arg path!
import() {
    :;
}
# }} zoxide import

# {{ zoxide init
# @cmd Generate shell configuration
# @flag --no-cmd                     Prevents zoxide from defining the `z` and `zi` commands
# @option --cmd                      Changes the prefix of the `z` and `zi` commands [default: z]
# @option --hook[none|prompt|pwd]    Changes how often zoxide increments a directory's score [default: pwd]
# @flag -h --help                    Print help
# @flag -V --version                 Print version
# @arg shell![bash|elvish|fish|nushell|posix|powershell|xonsh|zsh]
init() {
    :;
}
# }} zoxide init

# {{ zoxide query
# @cmd Search for a directory in the database
# @flag -a --all              Show unavailable directories
# @flag -i --interactive      Use interactive selection
# @flag -l --list             List all matching directories
# @flag -s --score            Print score with results
# @option --exclude <path>    Exclude the current directory
# @flag -h --help             Print help
# @flag -V --version          Print version
# @arg keywords*
query() {
    :;
}
# }} zoxide query

# {{ zoxide remove
# @cmd Remove a directory from the database
# @flag -h --help       Print help
# @flag -V --version    Print version
# @arg paths*
remove() {
    :;
}
# }} zoxide remove

command eval "$(argc --argc-eval "$0" "$@")"