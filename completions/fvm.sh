#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print this usage information.
# @flag --verbose       Print verbose output.
# @flag -v --version    Print the current version.

# {{ fvm api
# @cmd JSON API for FVM data
# @flag -h --help    Print this usage information.
api() {
    :;
}

# {{{ fvm api context
# @cmd Gets context data for FVM
# @flag -h --help        Print this usage information.
# @flag -c --compress    Prints JSON with no whitespace
api::context() {
    :;
}
# }}} fvm api context

# {{{ fvm api list
# @cmd Lists installed Flutter SDK Versions
# @flag -h --help                     Print this usage information.
# @flag -c --compress                 Prints JSON with no whitespace
# @flag -s --skip-size-calculation    Skips calculating the size of the versions, useful for large caches
api::list() {
    :;
}
# }}} fvm api list

# {{{ fvm api project
# @cmd Gets project data for FVM
# @flag -h --help        Print this usage information.
# @flag -c --compress    Prints JSON with no whitespace
# @flag -p --path        Path to project, defaults to working directory if not provided
api::project() {
    :;
}
# }}} fvm api project

# {{{ fvm api releases
# @cmd Lists Flutter SDK Releases
# @flag -h --help                              Print this usage information.
# @flag -c --compress                          Prints JSON with no whitespace
# @option --limit <limit>                      Limits the amount of releases
# @option --filter-channel[stable|beta|dev]    Filter by channel name
api::releases() {
    :;
}
# }}} fvm api releases
# }} fvm api

# {{ fvm config
# @cmd Set global configuration settings for FVM
# @flag -h --help                  Print this usage information.
# @option --cache-path <path>      Path where fvm will cache versions
# @flag --use-git-cache            Enable/Disable git cache globally, which is used for faster version installs.
# @flag --no-use-git-cache         Enable/Disable git cache globally, which is used for faster version installs.
# @flag --git-cache-path           Path where local Git reference cache is stored
# @flag --flutter-url              Flutter repository Git URL to clone from
# @flag --priviledged-access       Enable/Disable priviledged access for FVM (defaults to on)
# @flag --no-priviledged-access    Enable/Disable priviledged access for FVM (defaults to on)
# @flag --update-check             Checks if there is a new version of fvm available.
# @flag --no-update-check          Checks if there is a new version of fvm available.
config() {
    :;
}
# }} fvm config

# {{ fvm dart
# @cmd Proxies Dart Commands
# @arg command~[`_choice_dart`]
dart() {
    :;
}
# }} fvm dart

# {{ fvm destroy
# @cmd Destroy FVM cache by deleting FVM directory
# @flag -h --help    Print this usage information.
destroy() {
    :;
}
# }} fvm destroy

# {{ fvm doctor
# @cmd Shows information about environment, and project configuration.
# @flag -h --help    Print this usage information.
doctor() {
    :;
}
# }} fvm doctor

# {{ fvm exec
# @cmd Executes scripts with the configured Flutter SDK
exec() {
    :;
}
# }} fvm exec

# {{ fvm flutter
# @cmd Proxies Flutter Commands
# @arg command~[`_choice_flutter`]
flutter() {
    :;
}
# }} fvm flutter

# {{ fvm global
# @cmd Sets Flutter SDK Version as a global
# @flag -h --help      Print this usage information.
# @flag -u --unlink    Unlinks the global version
# @flag -f --force     Skips validation checks
# @arg version[`_choice_version`]
global() {
    :;
}
# }} fvm global

# {{ fvm install
# @cmd Installs Flutter SDK Version
# @flag -h --help         Print this usage information.
# @flag -s --setup        Builds SDK after install after install
# @flag --skip-pub-get    Skip resolving dependencies after switching Flutter SDK
# @arg version[`_choice_available_version_cached`]
install() {
    :;
}
# }} fvm install

# {{ fvm list
# @cmd Lists installed Flutter SDK Versions
# @flag -h --help    Print this usage information.
list() {
    :;
}
# }} fvm list

# {{ fvm releases
# @cmd View all Flutter SDK releases available for install.
# @flag -h --help                              Print this usage information.
# @option -c --channel[stable|beta|dev|all]    Filter by channel name [stable (default), beta, dev, all]
releases() {
    :;
}
# }} fvm releases

# {{ fvm remove
# @cmd Removes Flutter SDK Version
# @flag -h --help    Print this usage information.
# @flag -a --all     Removes all versions
# @arg version[`_choice_version`]
remove() {
    :;
}
# }} fvm remove

# {{ fvm spawn
# @cmd Spawns a command on a Flutter version
spawn() {
    :;
}
# }} fvm spawn

# {{ fvm use
# @cmd Sets Flutter SDK Version you would like to use in a project
# @flag -h --help          Print this usage information.
# @flag -f --force         Skips command guards that does Flutter project checks.
# @flag -p --pin           If version provided is a channel.
# @flag --flavor           Sets version for a project flavor
# @flag --skip-pub-get     Skip resolving dependencies after switching Flutter SDK
# @flag -s --skip-setup    Skips Flutter setup after install
# @arg version[`_choice_version`]
use() {
    :;
}
# }} fvm use

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_dart() {
    _argc_util_comp_subcommand 0 dart
}

_choice_flutter() {
    _argc_util_comp_subcommand 0 flutter
}

_choice_version() {
    fvm list | tail -n +3
}

_choice_available_version_cached() {
    _argc_util_cache 86400 _choice_available_version
}

_choice_available_version() {
    printf "%s\n" stable beta dev
    fvm releases | sed -n  's/.*│ \(\S\+\)\s\+\(\S\+\)\?/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"