#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug         debug mode
# @flag -h --help       help for lima-guestagent
# @flag -v --version    version for lima-guestagent
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

# {{ lima completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help    help for completion
# @flag --debug      debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
completion() {
    :;
}

# {{{ lima completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help            help for bash
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
completion::bash() {
    :;
}
# }}} lima completion bash

# {{{ lima completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help            help for fish
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
completion::fish() {
    :;
}
# }}} lima completion fish

# {{{ lima completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help            help for powershell
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
completion::powershell() {
    :;
}
# }}} lima completion powershell

# {{{ lima completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help            help for zsh
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
completion::zsh() {
    :;
}
# }}} lima completion zsh
# }} lima completion

# {{ lima daemon
# @cmd run the daemon
# @flag -h --help               help for daemon
# @option --tick <duration>     tick for polling events (default 3s)
# @option --vsock-port <int>    use vsock server instead a UNIX socket
# @flag --debug                 debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
daemon() {
    :;
}
# }} lima daemon

# {{ lima install-systemd
# @cmd install a systemd unit (user)
# @flag -h --help               help for install-systemd
# @option --vsock-port <int>    use vsock server on specified port
# @flag --debug                 debug mode
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
install-systemd() {
    :;
}
# }} lima install-systemd

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