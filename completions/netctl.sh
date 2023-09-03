#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg profile[`_choice_profile`]

# {{ netctl list
# @cmd List available profiles
list() {
    :;
}
# }} netctl list

# {{ netctl store
# @cmd Save which profiles are active
store() {
    :;
}
# }} netctl store

# {{ netctl restore
# @cmd Load saved profiles
restore() {
    :;
}
# }} netctl restore

# {{ netctl stop-all
# @cmd Stops all profiles
stop-all() {
    :;
}
# }} netctl stop-all

# {{ netctl start
# @cmd Start a profile
# @arg profile[`_choice_profile`]
start() {
    :;
}
# }} netctl start

# {{ netctl stop
# @cmd Stop a profile
# @arg profile[`_choice_profile`]
stop() {
    :;
}
# }} netctl stop

# {{ netctl restart
# @cmd Restart a profile
# @arg profile[`_choice_profile`]
restart() {
    :;
}
# }} netctl restart

# {{ netctl switch-to
# @cmd Switch to a profile
# @arg profile[`_choice_profile`]
switch-to() {
    :;
}
# }} netctl switch-to

# {{ netctl is-active
# @cmd Check whether a profile is active
# @arg profile[`_choice_profile`]
is-active() {
    :;
}
# }} netctl is-active

# {{ netctl status
# @cmd Show runtime status of a profile
# @arg profile[`_choice_profile`]
status() {
    :;
}
# }} netctl status

# {{ netctl enable
# @cmd Enable the systemd unit for a profile
# @arg profile[`_choice_profile`]
enable() {
    :;
}
# }} netctl enable

# {{ netctl disable
# @cmd Disable the systemd unit for a profile
# @arg profile[`_choice_profile`]
disable() {
    :;
}
# }} netctl disable

# {{ netctl reenable
# @cmd Reenable the systemd unit for a profile
# @arg profile[`_choice_profile`]
reenable() {
    :;
}
# }} netctl reenable

# {{ netctl is-enabled
# @cmd Check whether a profile is enabled
# @arg profile[`_choice_profile`]
is-enabled() {
    :;
}
# }} netctl is-enabled

# {{ netctl edit
# @cmd Edit a profile
# @arg profile[`_choice_profile`]
edit() {
    :;
}
# }} netctl edit

# {{ netctl wait-online
# @cmd Wait for a profile to finish connecting
# @arg profile[`_choice_profile`]
wait-online() {
    :;
}
# }} netctl wait-online

_choice_profile() {
    netctl list | tr -d ' *\t'
}

command eval "$(argc --argc-eval "$0" "$@")"