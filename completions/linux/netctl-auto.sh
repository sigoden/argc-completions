#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ netctl-auto list
# @cmd List available profiles (active='*', disabled='!')
list() {
    :;
}
# }} netctl-auto list

# {{ netctl-auto switch-to
# @cmd Switch to a profile, enable it if necessary
# @arg profile[`_choice_profile`]
switch-to() {
    :;
}
# }} netctl-auto switch-to

# {{ netctl-auto is-active
# @cmd Check whether a profile is active
# @arg profile[`_choice_profile`]
is-active() {
    :;
}
# }} netctl-auto is-active

# {{ netctl-auto enable
# @cmd Enable a profile for automatic selection
# @arg profile[`_choice_profile`]
enable() {
    :;
}
# }} netctl-auto enable

# {{ netctl-auto disable
# @cmd Disable a profile for automatic selection
# @arg profile[`_choice_profile`]
disable() {
    :;
}
# }} netctl-auto disable

# {{ netctl-auto enable-all
# @cmd Enable all profiles for automatic selection
enable-all() {
    :;
}
# }} netctl-auto enable-all

# {{ netctl-auto disable-all
# @cmd Disable all profiles for automatic selection
disable-all() {
    :;
}
# }} netctl-auto disable-all

# {{ netctl-auto is-enabled
# @cmd Check whether a profile is enabled
# @arg profile[`_choice_profile`]
is-enabled() {
    :;
}
# }} netctl-auto is-enabled

_choice_profile() {
    netctl-auto list | tr -d ' *\t'
}

command eval "$(argc --argc-eval "$0" "$@")"