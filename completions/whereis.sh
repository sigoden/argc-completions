#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b              search only for binaries
# @option -B <dirs>     define binaries lookup path
# @flag -m              search only for manuals and infos
# @option -M <dirs>     define man and info lookup path
# @flag -s              search only for sources
# @option -S <dirs>     define sources lookup path
# @flag -f              terminate <dirs> argument list
# @flag -u              search for unusual entries
# @flag -l              output effective lookup paths
# @flag -h --help       display this help
# @flag -V --version    display version
# @arg cmd[`_choice_command`]

_choice_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"