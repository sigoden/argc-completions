#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a    print all matching pathnames of each argument

_module_os_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"