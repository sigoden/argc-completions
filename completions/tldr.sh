#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                Display version
# @flag -l --list                   List all commands for the chosen platform in the cache
# @flag -a --list-all               List all commands in the cache
# @flag -1 --single-column          List single command per line (use with options -l or -a)
# @flag -r --random                 Show a random command
# @flag -e --random-example         Show a random example
# @option -f --render <file>        Render a specific markdown [file]
# @flag -m --markdown               Output in markdown format
# @option -o --os[linux|osx|sunos|windows] <type>  Override the operating system
# @flag --linux                     Override the operating system with Linux
# @flag --osx                       Override the operating system with OSX
# @flag --sunos                     Override the operating system with SunOS
# @flag --windows                   Override the operating system with Windows
# @option -t --theme[simple|base16|ocean] <theme>  Color theme
# @option -s --search <keywords>    Search pages using keywords
# @flag -u --update                 Update the local cache
# @flag -c --clear-cache            Clear the local cache
# @flag -h --help                   Show this help message
# @arg cmd[`_choice_cmd`]

_choice_cmd() {
    tldr --list | sed 's/, /\n/g'
}

command eval "$(argc --argc-eval "$0" "$@")"