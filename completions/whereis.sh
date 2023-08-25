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
# @arg command[`_module_os_command`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"