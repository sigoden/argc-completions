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
# @option -p --platform[android|darwin|freebsd|linux|macos|netbsd|openbsd|osx|sunos|win32|windows] <type>  Override the current platform
# @flag --android                   Override the platform with android
# @flag --darwin                    Override the platform with darwin
# @flag --freebsd                   Override the platform with freebsd
# @flag --linux                     Override the platform with linux
# @flag --macos                     Override the platform with macos
# @flag --netbsd                    Override the platform with netbsd
# @flag --openbsd                   Override the platform with openbsd
# @flag --osx                       Override the platform with osx
# @flag --sunos                     Override the platform with sunos
# @flag --win32                     Override the platform with win32
# @flag --windows                   Override the platform with windows
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