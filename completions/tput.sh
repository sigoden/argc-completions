#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -S             read commands from standard input
# @option -T <TERM>    use this instead of $TERM
# @flag -V             print curses-version
# @flag -x             do not try to clear scrollback

# {{ tput clear
# @cmd clear the screen
clear() {
    :;
}
# }} tput clear

# {{ tput init
# @cmd initialize the terminal
init() {
    :;
}
# }} tput init

# {{ tput reset
# @cmd reinitialize the terminal
reset() {
    :;
}
# }} tput reset

# {{ tput capname
# @cmd unlike clear/init/reset, print value for capability "capname"
capname() {
    :;
}
# }} tput capname

command eval "$(argc --argc-eval "$0" "$@")"