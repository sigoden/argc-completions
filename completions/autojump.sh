#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                   show this help message and exit
# @option -a --add <DIRECTORY>      add path
# @option -i --increase <WEIGHT>    increase current directory weight
# @option -d --decrease <WEIGHT>    decrease current directory weight
# @flag --complete                  used for tab completion
# @flag --purge                     remove non-existent paths from database
# @flag -s --stat                   show database entries and their key weights
# @flag -v --version                show version information
# @arg directory                    directory to jump to

command eval "$(argc --argc-eval "$0" "$@")"