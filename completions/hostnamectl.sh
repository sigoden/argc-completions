#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                     Show this help
# @flag --version                     Show package version
# @flag --no-ask-password             Do not prompt for password
# @option -H --host <[USER@]HOST>     Operate on remote host
# @option -M --machine <CONTAINER>    Operate on local container
# @flag --transient                   Only set transient hostname
# @flag --static                      Only set static hostname
# @flag --pretty                      Only set pretty hostname
# @option --json[pretty|short|off]    Generate JSON output

# {{ hostnamectl status
# @cmd Show current hostname settings
status() {
    :;
}
# }} hostnamectl status

# {{ hostnamectl hostname
# @cmd Get/set system hostname
# @arg name
hostname() {
    :;
}
# }} hostnamectl hostname

# {{ hostnamectl icon-name
# @cmd Get/set icon name for host
# @arg name
icon-name() {
    :;
}
# }} hostnamectl icon-name

# {{ hostnamectl chassis
# @cmd Get/set chassis type for host
# @arg name
chassis() {
    :;
}
# }} hostnamectl chassis

# {{ hostnamectl deployment
# @cmd Get/set deployment environment for host
# @arg name
deployment() {
    :;
}
# }} hostnamectl deployment

# {{ hostnamectl location
# @cmd Get/set location for host
# @arg name
location() {
    :;
}
# }} hostnamectl location

command eval "$(argc --argc-eval "$0" "$@")"