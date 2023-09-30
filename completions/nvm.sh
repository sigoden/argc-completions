#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help         Show this message
# @flag --no-colors    Suppress colored output
# @flag --version      Print out the installed version of nvm

# {{ nvm install
# @cmd Download and install a <version>.
# @flag -s                                        Skip binary download, install from source only.
# @flag -b                                        Skip source download, install from binary only.
# @option --reinstall-packages-from[`_choice_installed_version`] <version>  When installing, reinstall packages installed in <node|iojs|node version number>
# @option --lts[`_choice_lts_name`] <LTS name>    When installing, only select from versions for a specific LTS line
# @flag --skip-default-packages                   When installing, skip the default-packages file if it exists
# @flag --latest-npm                              After installing, attempt to upgrade to the latest working npm on the given node version
# @flag --no-progress                             Disable the progress bar on any downloads
# @option --alias <name>                          After installing, set the alias specified to the version specified.
# @flag --default                                 After installing, set default alias to the version specified.
# @arg version[`_choice_version`]
install() {
    :;
}
# }} nvm install

# {{ nvm uninstall
# @cmd Uninstall a version
# @option --lts[`_choice_lts_name`] <LTS name>    Uninstall using automatic alias for provided LTS line, if available.
# @arg version![`_choice_installed_version`]
uninstall() {
    :;
}
# }} nvm uninstall

# {{ nvm use
# @cmd Modify PATH to use <version>.
# @flag --silent                                  Silences stdout/stderr output
# @option --lts[`_choice_lts_name`] <LTS name>    Uses automatic alias for provided LTS line, if available.
# @arg version[`_choice_installed_version`]
use() {
    :;
}
# }} nvm use

# {{ nvm exec
# @cmd Run <command> on <version>.
# @flag --silent                                  Silences stdout/stderr output
# @option --lts[`_choice_lts_name`] <LTS name>    Uses automatic alias for provided LTS line, if available.
# @arg version[`_choice_installed_version`]
# @arg command
exec() {
    :;
}
# }} nvm exec

# {{ nvm run
# @cmd Run `node` on <version> with <args> as arguments.
# @flag --silent                                  Silences stdout/stderr output
# @option --lts[`_choice_lts_name`] <LTS name>    Uses automatic alias for provided LTS line, if available.
# @arg version[`_choice_installed_version`]
# @arg args
run() {
    :;
}
# }} nvm run

# {{ nvm current
# @cmd Display currently activated version of Node
current() {
    :;
}
# }} nvm current

# {{ nvm ls
# @cmd List installed versions, matching a given <version> if provided
# @flag --no-colors    Suppress colored output
# @flag --no-alias     Suppress `nvm alias` output
# @arg version[`_choice_installed_version`]
ls() {
    :;
}
# }} nvm ls

# {{ nvm ls-remote
# @cmd List remote versions available for install, matching a given <version> if provided
# @option --lts[`_choice_lts_name`] <LTS name>    When listing, only show versions for a specific LTS line
# @flag --no-colors                               Suppress colored output
# @arg version[`_choice_version`]
ls-remote() {
    :;
}
# }} nvm ls-remote

# {{ nvm version
# @cmd Resolve the given description to a single local version
# @arg version![`_choice_installed_version`]
version() {
    :;
}
# }} nvm version

# {{ nvm version-remote
# @cmd Resolve the given description to a single remote version
# @option --lts[`_choice_lts_name`] <LTS name>    When listing, only select from versions for a specific LTS line
# @arg version![`_choice_version`]
version-remote() {
    :;
}
# }} nvm version-remote

# {{ nvm deactivate
# @cmd Undo effects of `nvm` on current shell
# @flag --silent    Silences stdout/stderr output
deactivate() {
    :;
}
# }} nvm deactivate

# {{ nvm alias
# @cmd Show or set an alias named <name> pointing to <version>
# @flag --no-colors    Suppress colored output
# @arg name
# @arg version[`_choice_installed_version`]
alias() {
    :;
}
# }} nvm alias

# {{ nvm unalias
# @cmd Deletes the alias named <name>
# @arg name!
unalias() {
    :;
}
# }} nvm unalias

# {{ nvm install-latest-npm
# @cmd Attempt to upgrade to the latest working `npm` on the current node version
install-latest-npm() {
    :;
}
# }} nvm install-latest-npm

# {{ nvm reinstall-packages
# @cmd Reinstall global `npm` packages contained in <version> to current version
# @arg version![`_choice_installed_version`]
reinstall-packages() {
    :;
}
# }} nvm reinstall-packages

# {{ nvm unload
# @cmd Unload `nvm` from shell
unload() {
    :;
}
# }} nvm unload

# {{ nvm which
# @cmd Display path to installed node version.
# @flag --silent    Silences stdout/stderr output when a version is omitted
# @arg version![`_choice_which`]
which() {
    :;
}
# }} nvm which

# {{ nvm cache
# @cmd Manage cache
cache() {
    :;
}

# {{{ nvm cache dir
# @cmd Display path to the cache directory for nvm
cache::dir() {
    :;
}
# }}} nvm cache dir

# {{{ nvm cache clear
# @cmd Empty cache directory for nvm
cache::clear() {
    :;
}
# }}} nvm cache clear
# }} nvm cache

# {{ nvm set-colors
# @cmd Set five text colors using format "yMeBg".
# @arg color-codes <color codes>
set-colors() {
    :;
}
# }} nvm set-colors

_choice_installed_version() {
    nvm ls --no-colors --no-alias | \
    sed -e 's/->/  /' -e 's/^\s*//' -e 's/ \*//' -e 's/ \+/\t/'
}

_choice_lts_name() {
    nvm alias --no-colors | \
    sed -n 's|lts/\(\w\+\) -> \(\S\+\).*|\1\t\2|p'
}

_choice_version() {
    nvm ls-remote --no-colors | \
    sed -e 's/->/  /' -e 's/^\s*//' -e 's/ \*//' -e 's/ \+/\t/'
}

_choice_which() {
    echo current
    _choice_installed_version
}

command eval "$(argc --argc-eval "$0" "$@")"