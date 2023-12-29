#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --init                                    Write a default config file to stdout
# @flag -a --all                                  Search among all cheatpaths
# @flag -c --colorize                             Colorize output
# @flag -d --directories                          List cheatsheet directories
# @option -e --edit[`_choice_personal_cheatsheet`] <cheatsheet>  Edit <cheatsheet>
# @flag -l --list                                 List cheatsheets
# @option -p --path[`_choice_pathlist`] <name>    Return only sheets found on cheatpath <name>
# @flag -r --regex                                Treat search <phrase> as a regex
# @option -s --search <phrase>                    Search cheatsheets for <phrase>
# @option -t --tag[`_choice_tag`] <tag>           Return only sheets matching <tag>
# @flag -T --tags                                 List all tags in use
# @flag -v --version                              Print the version number
# @option --rm[`_choice_personal_cheatsheet`] <cheatsheet>  Remove (delete) <cheatsheet>
# @flag --conf                                    Display the config file path
# @arg cheatsheet[`_choice_full_cheatsheet`]

_choice_personal_cheatsheet() {
    cheat -l -t personal | tail -n +2 | cut -d' ' -f1
}

_choice_pathlist() {
    cheat -d | cut -d':' -f1
}

_choice_tag() {
    cheat -T
}

_choice_full_cheatsheet() {
    cheat -l | tail -n +2 | cut -d' ' -f1
}

command eval "$(argc --argc-eval "$0" "$@")"