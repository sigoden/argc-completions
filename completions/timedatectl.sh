#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                     Show this help message
# @flag --version                     Show package version
# @flag --no-pager                    Do not pipe output into a pager
# @flag --no-ask-password             Do not prompt for password
# @option -H --host <[USER@]HOST>     Operate on remote host
# @option -M --machine <CONTAINER>    Operate on local container
# @flag --adjust-system-clock         Adjust system clock when changing local RTC mode
# @flag --monitor                     Monitor status of systemd-timesyncd
# @option -p --property <NAME>        Show only properties by this name
# @flag -a --all                      Show all properties, including empty ones
# @flag --value                       When showing properties, only print the value

# {{ timedatectl status
# @cmd Show current time settings
status() {
    :;
}
# }} timedatectl status

# {{ timedatectl show
# @cmd Show properties of systemd-timedated
show() {
    :;
}
# }} timedatectl show

# {{ timedatectl set-time
# @cmd Set system time
# @arg time
set-time() {
    :;
}
# }} timedatectl set-time

# {{ timedatectl set-timezone
# @cmd Set system time zone
# @arg timezone[`_choice_timezone`]
set-timezone() {
    :;
}
# }} timedatectl set-timezone

# {{ timedatectl list-timezones
# @cmd Show known time zones
list-timezones() {
    :;
}
# }} timedatectl list-timezones

# {{ timedatectl set-local-rtc
# @cmd Control whether RTC is in local time
# @arg bool[true|false]
set-local-rtc() {
    :;
}
# }} timedatectl set-local-rtc

# {{ timedatectl set-ntp
# @cmd Enable or disable network time synchronization
# @arg bool[true|false]
set-ntp() {
    :;
}
# }} timedatectl set-ntp

# {{ timedatectl timesync-status
# @cmd Show status of systemd-timesyncd
timesync-status() {
    :;
}
# }} timedatectl timesync-status

# {{ timedatectl show-timesync
# @cmd Show properties of systemd-timesyncd
show-timesync() {
    :;
}
# }} timedatectl show-timesync

_choice_timezone() {
    timedatectl list-timezones   
}

command eval "$(argc --argc-eval "$0" "$@")"