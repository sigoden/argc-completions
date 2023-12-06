#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ direnv allow
# @cmd
# @arg file[`_choice_path_to_rc`]
allow() {
    :;
}
# }} direnv allow

# {{ direnv permit
# @cmd
permit() {
    :;
}
# }} direnv permit

# {{ direnv grant
# @cmd Grants direnv permission to load the given .envrc or .env file.
grant() {
    :;
}
# }} direnv grant

# {{ direnv block
# @cmd
block() {
    :;
}
# }} direnv block

# {{ direnv deny
# @cmd
# @arg file[`_choice_path_to_rc`]
deny() {
    :;
}
# }} direnv deny

# {{ direnv disallow
# @cmd
disallow() {
    :;
}
# }} direnv disallow

# {{ direnv revoke
# @cmd Revokes the authorization of a given .envrc or .env file.
revoke() {
    :;
}
# }} direnv revoke

# {{ direnv edit
# @cmd Opens PATH_TO_RC or the current .envrc or .env into an $EDITOR and allow the file to be loaded afterwards.
# @arg file[`_choice_path_to_rc`]
edit() {
    :;
}
# }} direnv edit

# {{ direnv exec
# @cmd Executes a command after loading the first .envrc or .env found in DIR
# @arg dir
# @arg command[`_module_os_command`]
# @arg args~[`_choice_args`]
exec() {
    :;
}
# }} direnv exec

# {{ direnv fetchurl
# @cmd Fetches a given URL into direnv's CAS
# @arg urls*
fetchurl() {
    :;
}
# }} direnv fetchurl

# {{ direnv hook
# @cmd Used to setup the shell hook
# @arg shell[`_choice_hook_shell`]
hook() {
    :;
}
# }} direnv hook

# {{ direnv prune
# @cmd removes old allowed files
prune() {
    :;
}
# }} direnv prune

# {{ direnv reload
# @cmd triggers an env reload
reload() {
    :;
}
# }} direnv reload

# {{ direnv status
# @cmd prints some debug status information
status() {
    :;
}
# }} direnv status

# {{ direnv stdlib
# @cmd Displays the stdlib available in the .envrc execution context
stdlib() {
    :;
}
# }} direnv stdlib

# {{ direnv version
# @cmd prints the version or checks that direnv is older than VERSION_AT_LEAST.
version() {
    :;
}
# }} direnv version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_path_to_rc() {
    _argc_util_comp_path exts=.envrc,.env
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_choice_hook_shell() {
    printf "%s" bash elvish fish tcsh zsh
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

command eval "$(argc --argc-eval "$0" "$@")"