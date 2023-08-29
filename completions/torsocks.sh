#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help             Show this help
# @flag --shell               Spawn a torified shell
# @flag --version             Show version
# @flag -d --debug            Set debug mode.
# @option -u --user <NAME>    Username for the SOCKS5 authentication
# @option -p --pass <NAME>    Password for the SOCKS5 authentication
# @flag -i --isolate          Automatic tor isolation.
# @flag -a --address          HOST Specify Tor address
# @option -P --port           Specify Tor port
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

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

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"