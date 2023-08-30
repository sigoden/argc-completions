#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Print this usage information.
# @flag --verbose    Print verbose output.
# @flag --version    current version

# {{ fvm config
# @cmd Set configuration for FVM
# @flag -h --help                   Print this usage information.
# @option -c --cache-path <path>    Set the path which FVM will cache the version.Priority over FVM_HOME.
# @flag -s                          Skip setup after a version install.
# @flag --skip-setup                Skip setup after a version install.
# @flag --no-skip-setup             Skip setup after a version install.
# @flag -g                          ADVANCED: Will cache a local version of Flutter repo for faster version install.
# @flag --git-cache                 ADVANCED: Will cache a local version of Flutter repo for faster version install.
# @flag --no-git-cache              ADVANCED: Will cache a local version of Flutter repo for faster version install.
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

# {{ fvm flavor
# @cmd Switches between different project flavors
# @flag -h --help    Print this usage information.
# @arg flavor_name
flavor() {
    :;
}
# }} fvm flavor

# {{ fvm flutter
# @cmd Proxies Flutter Commands
# @arg command~[`_choice_flutter`]
flutter() {
    :;
}
# }} fvm flutter

# {{ fvm global
# @cmd Sets Flutter SDK Version as a global
# @flag -h --help    Print this usage information.
# @arg version[`_choice_version`]
global() {
    :;
}
# }} fvm global

# {{ fvm install
# @cmd Installs Flutter SDK Version
# @flag -h --help          Print this usage information.
# @flag -s --skip-setup    Skips Flutter setup after install
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
# @flag -h --help    Print this usage information.
releases() {
    :;
}
# }} fvm releases

# {{ fvm remove
# @cmd Removes Flutter SDK Version
# @flag -h --help    Print this usage information.
# @flag --force      Skips version global check.
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