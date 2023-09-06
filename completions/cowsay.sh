#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e <value>                        Specify eye string
# @option -f[`_choice_cow_file`] <value>    Specify cow file
# @flag -h                                  Display help and exit
# @flag -l                                  List all cowfiles
# @flag -n                                  No word wrapping
# @flag -T                                  Specify tongue string
# @option -W <num>                          Column width
# @flag -b                                  Borg cow
# @flag -d                                  Dead cow
# @flag -g                                  Greedy cow
# @flag -p                                  Paranoid cow
# @flag -s                                  Stoned cow
# @flag -t                                  Tired cow
# @flag -w                                  Wired cow
# @flag -y                                  Young cow

_choice_cow_file() {
    cowsay -l | tail -n +2 | sed 's/ /\n/g'
}

command eval "$(argc --argc-eval "$0" "$@")"