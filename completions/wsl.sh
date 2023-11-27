#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e --exec~[`_module_os_exec`] <CommandLine>  Execute the specified command without using the default Linux shell.
# @option --cd <Directory>        Sets the specified directory as the current working directory.
# @option -d --distribution[`_choice_distro`] <Distro>  Run the specified distribution.
# @option -u --user <UserName>    Run as the specified user.
# @flag --help                    Display usage information.
# @option --set-default-version[`_choice_version`] <Version>  Changes the default install version for new distributions.
# @flag --shutdown                Immediately terminates all running distributions and the WSL 2 lightweight utility virtual machine.
# @flag --status                  Show the status of Windows Subsystem for Linux.
# @option --export~[`_choice_export`] <Distro> <FileName>  Exports the distribution to a tar file.
# @option -s --set-default[`_choice_distro`] <Distro>  Sets the distribution as the default.
# @option --set-version~[`_choice_set_version`] <Distro> <Version>  Changes the version of the specified distribution.
# @option -t --terminate[`_choice_distro`] <Distro>  Terminates the specified distribution.
# @option --unregister[`_choice_distro`] <Distro>  Unregisters the distribution and deletes the root filesystem.
# @arg commandline

# {{ wsl --install
# @cmd Install additional Windows Subsystem for Linux distributions.
# @option -d --distribution[`_choice_distro`] <Argument>  Downloads and installs a distribution by name.
--install() {
    :;
}
# }} wsl --install

# {{ wsl --update
# @cmd If no options are specified, the WSL 2 kernel will be updated to the latest version.
# @flag --rollback        Revert to the previous version of the WSL 2 kernel.
# @flag --inbox           Only update the inbox WSL 2 kernel.
# @flag --web-download    Download the most recent version of WSL from the internet instead of the Microsoft Store.
--update() {
    :;
}
# }} wsl --update

# {{ wsl --import
# @cmd Imports the specified tar file as a new distribution.
# @option --version[`_choice_version`] <Version>  Specifies the version to use for the new distribution.
# @arg distro[`_choice_distro`]
# @arg installlocation
# @arg filename
--import() {
    :;
}
# }} wsl --import

# {{ wsl --list
# @cmd Lists distributions.
# @alias -l
# @flag --all           List all distributions, including distributions that are currently being installed or uninstalled.
# @flag --running       List only distributions that are currently running.
# @flag -q --quiet      Only show distribution names.
# @flag -v --verbose    Show detailed information about all distributions.
# @flag -o --online     Displays a list of available distributions for install with 'wsl --install'.
--list() {
    :;
}
# }} wsl --list

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_distro() {
    wsl --list | tr -d '\r\0' | sed -n '2,$ {s/^\(\S\+\).*$/\1/p}'
}

_choice_version() {
    printf "%s\n" 1 2
}

_choice_export() {
    if [[ "${#argc_export}" -lt 2 ]]; then
        _choice_distro
    else
        _argc_util_comp_path
    fi
}

_choice_set_version() {
    if [[ "${#argc_set_version}" -lt 2 ]]; then
        _choice_distro
    else
        _choice_version
    fi
}

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

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"