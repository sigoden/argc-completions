#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version    Display the version of pyenv

# {{ pyenv activate
# @cmd Activate virtual environment
# @arg virtualenv!
activate() {
    :;
}
# }} pyenv activate

# {{ pyenv commands
# @cmd List all available pyenv commands
commands() {
    :;
}
# }} pyenv commands

# {{ pyenv deactivate
# @cmd Deactivate virtual environment
deactivate() {
    :;
}
# }} pyenv deactivate

# {{ pyenv doctor
# @cmd Verify pyenv installation and development tools to build pythons.
# @flag -a --all          Check all
# @flag -c --cpython      Check for CPython
# @flag -j --jython       Check for Jython
# @flag -p --pypy         Check for PyPy
# @flag -s --stackless    Check for Stackless Python
# @flag -v --verbose      Increase verbosity
doctor() {
    :;
}
# }} pyenv doctor

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
# @flag --version             Show version of python-build
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

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_command() {
    pyenv exec --complete
}

_choice_installed_version() {
    pyenv versions --bare
}

_choice_install() {
    if _argc_util_has_path_prefix "$ARGC_CWORD"; then
        _argc_util_comp_path
        return
    fi
    _choice_available_version
}

_choice_prefix() {
    pyenv prefix --complete
}

_choice_available_version() {
    pyenv install --list | sed "s/^[[:space:]]*//"
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"