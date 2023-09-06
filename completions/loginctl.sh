#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                     Show this help
# @flag --version                     Show package version
# @flag --no-pager                    Do not pipe output into a pager
# @flag --no-legend                   Do not show the headers and footers
# @flag --no-ask-password             Don't prompt for password
# @option -H --host <[USER@]HOST>     Operate on remote host
# @option -M --machine <CONTAINER>    Operate on local container
# @option -p --property <NAME>        Show only properties by this name
# @option -P <NAME>                   Equivalent to --value --property=NAME
# @flag -a --all                      Show all properties, including empty ones
# @flag --value                       When showing properties, only print the value
# @flag -l --full                     Do not ellipsize output
# @option --kill-who <WHO>            Who to send signal to
# @option -s --signal                 Which signal to send
# @option -n --lines <INTEGER>        Number of journal entries to show
# @option -o --output[short|short-precise|short-iso|short-iso-precise|short-full|short-monotonic|short-unix|verbose|export|json|json-pretty|json-sse|json-seq|cat|with-unit] <STRING>  Change journal output mode

# {{ loginctl list-sessions
# @cmd List sessions
list-sessions() {
    :;
}
# }} loginctl list-sessions

# {{ loginctl session-status
# @cmd Show session status
# @arg id*[`_choice_session`]
session-status() {
    :;
}
# }} loginctl session-status

# {{ loginctl show-session
# @cmd Show properties of sessions or the manager
# @arg id*[`_choice_session`]
show-session() {
    :;
}
# }} loginctl show-session

# {{ loginctl activate
# @cmd Activate a session
# @arg id[`_choice_session`]
activate() {
    :;
}
# }} loginctl activate

# {{ loginctl lock-session
# @cmd Screen lock one or more sessions
# @arg id*[`_choice_session`]
lock-session() {
    :;
}
# }} loginctl lock-session

# {{ loginctl unlock-session
# @cmd Screen unlock one or more sessions
# @arg id*[`_choice_session`]
unlock-session() {
    :;
}
# }} loginctl unlock-session

# {{ loginctl lock-sessions
# @cmd Screen lock all current sessions
lock-sessions() {
    :;
}
# }} loginctl lock-sessions

# {{ loginctl unlock-sessions
# @cmd Screen unlock all current sessions
unlock-sessions() {
    :;
}
# }} loginctl unlock-sessions

# {{ loginctl terminate-session
# @cmd Terminate one or more sessions
# @arg id*[`_choice_session`]
terminate-session() {
    :;
}
# }} loginctl terminate-session

# {{ loginctl kill-session
# @cmd Send signal to processes of a session
# @arg id*[`_choice_session`]
kill-session() {
    :;
}
# }} loginctl kill-session

# {{ loginctl list-users
# @cmd List users
list-users() {
    :;
}
# }} loginctl list-users

# {{ loginctl user-status
# @cmd Show user status
# @arg user*[`_choice_user`]
user-status() {
    :;
}
# }} loginctl user-status

# {{ loginctl show-user
# @cmd Show properties of users or the manager
# @arg user*[`_choice_user`]
show-user() {
    :;
}
# }} loginctl show-user

# {{ loginctl enable-linger
# @cmd Enable linger state of one or more users
# @arg user*[`_choice_user`]
enable-linger() {
    :;
}
# }} loginctl enable-linger

# {{ loginctl disable-linger
# @cmd Disable linger state of one or more users
disable-linger() {
    :;
}
# }} loginctl disable-linger

# {{ loginctl terminate-user
# @cmd Terminate all sessions of one or more users
# @arg user*[`_choice_user`]
terminate-user() {
    :;
}
# }} loginctl terminate-user

# {{ loginctl kill-user
# @cmd Send signal to processes of a user
# @arg user*[`_choice_user`]
kill-user() {
    :;
}
# }} loginctl kill-user

# {{ loginctl list-seats
# @cmd List seats
list-seats() {
    :;
}
# }} loginctl list-seats

# {{ loginctl seat-status
# @cmd Show seat status
# @arg name*[`_choice_seat`]
seat-status() {
    :;
}
# }} loginctl seat-status

# {{ loginctl show-seat
# @cmd Show properties of seats or the manager
# @arg name*[`_choice_seat`]
show-seat() {
    :;
}
# }} loginctl show-seat

# {{ loginctl attach
# @cmd Attach one or more devices to a seat
# @arg name[`_choice_seat`]
# @arg device*
attach() {
    :;
}
# }} loginctl attach

# {{ loginctl flush-devices
# @cmd Flush all device associations
flush-devices() {
    :;
}
# }} loginctl flush-devices

# {{ loginctl terminate-seat
# @cmd Terminate all sessions on one or more seats
# @arg name*[`_choice_seat`]
terminate-seat() {
    :;
}
# }} loginctl terminate-seat

_choice_session() {
    loginctl --no-legend --no-pager list-sessions | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}

_choice_user() {
    loginctl --no-legend --no-pager list-sessions | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}

_choice_seat() {
    loginctl list-seats --output json | yq '.[].seat'
}

command eval "$(argc --argc-eval "$0" "$@")"