#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ pyenv commands
# @cmd List all available pyenv commands
commands() {
    :;
}
# }} pyenv commands

# {{ pyenv exec
# @cmd Run an executable with the selected Python version
# @arg command[`_choice_command`]
# @arg args~[`_module_os_command_args`]
exec() {
    :;
}
# }} pyenv exec

# {{ pyenv global
# @cmd Set or show the global Python version(s)
# @arg version*[`_choice_installed_version`]
global() {
    :;
}
# }} pyenv global

# {{ pyenv hooks
# @cmd List hook scripts for a given pyenv command
# @arg command![`_choice_command`]
hooks() {
    :;
}
# }} pyenv hooks

# {{ pyenv init
# @cmd Configure the shell environment for pyenv
# @option --path <path>
# @flag --no-push-path
# @flag --detect-shell
# @flag --no-rehash
# @arg shell[bash|fish|zsh]
init() {
    :;
}
# }} pyenv init

# {{ pyenv install
# @cmd Install a Python version using python-build
# @flag -l --list             List all available versions
# @flag -f --force            Install even if the version appears to be installed already
# @flag -s --skip-existing    Skip if the version appears to be installed already
# @option -k --keep <path>    Keep source tree in $PYENV_BUILD_ROOT after installation (defaults to $PYENV_ROOT/sources)
# @flag -p --patch            Apply a patch from stdin before building
# @flag -v --verbose          Verbose mode: print compilation status to stdout
# @flag -g --debug            Build a debug version
# @arg version+[`_choice_install`]
install() {
    :;
}
# }} pyenv install

# {{ pyenv latest
# @cmd Print the latest installed or known version with the given prefix
# @flag -k --known    Select from all known versions instead of installed
# @flag -q --quiet    Do not print an error message on resolution failure
# @arg prefix![`_choice_prefix`]
latest() {
    :;
}
# }} pyenv latest

# {{ pyenv local
# @cmd Set or show the local application-specific Python version(s)
# @arg version*[`_choice_installed_version`]
local() {
    :;
}
# }} pyenv local

# {{ pyenv prefix
# @cmd Display prefixes for Python versions
# @arg version*[`_choice_installed_version`]
prefix() {
    :;
}
# }} pyenv prefix

# {{ pyenv rehash
# @cmd Rehash pyenv shims (run this after installing executables)
rehash() {
    :;
}
# }} pyenv rehash

# {{ pyenv root
# @cmd Display the root directory where versions and shims are kept
root() {
    :;
}
# }} pyenv root

# {{ pyenv shell
# @cmd Set or show the shell-specific Python version
# @arg version*[`_choice_installed_version`]
shell() {
    :;
}
# }} pyenv shell

# {{ pyenv shims
# @cmd List existing pyenv shims
shims() {
    :;
}
# }} pyenv shims

# {{ pyenv uninstall
# @cmd Uninstall Python versions
# @flag -f    Attempt to remove the specified version without prompting
# @arg version*[`_choice_installed_version`]
uninstall() {
    :;
}
# }} pyenv uninstall

# {{ pyenv version
# @cmd Show the current Python version(s) and its origin
version() {
    :;
}
# }} pyenv version

# {{ pyenv version-file
# @cmd Detect the file that sets the current pyenv version
# @arg dir
version-file() {
    :;
}
# }} pyenv version-file

# {{ pyenv version-name
# @cmd Show the current Python version
version-name() {
    :;
}
# }} pyenv version-name

# {{ pyenv version-origin
# @cmd Explain how the current Python version is set
version-origin() {
    :;
}
# }} pyenv version-origin

# {{ pyenv versions
# @cmd List all Python versions available to pyenv
versions() {
    :;
}
# }} pyenv versions

# {{ pyenv whence
# @cmd List all Python versions that contain the given executable
# @arg command![`_module_os_command`]
whence() {
    :;
}
# }} pyenv whence

# {{ pyenv which
# @cmd Display the full path to an executable
# @arg command![`_module_os_command`]
which() {
    :;
}
# }} pyenv which

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_command() {
    pyenv exec --complete
}

_choice_installed_version() {
    pyenv versions --bare
}

_choice_install() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_available_version
}

_choice_prefix() {
    pyenv prefix --complete
}

_choice_available_version() {
    pyenv install --list | sed '1d'
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

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"