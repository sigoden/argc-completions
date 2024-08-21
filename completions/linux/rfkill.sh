#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -J --json                            Use JSON output format.
# @flag -n --noheadings                      Do not print a header line.
# @option -o --output*,[`_choice_column`]    Specify which output columns to print.
# @flag --output-all                         Output all available columns.
# @flag -r --raw                             Use the raw output format.
# @flag --help                               Display help text and exit.
# @flag --version                            Display version information and exit.
# @arg id-type* <ID|type>

# {{ rfkill event
# @cmd Listen for rfkill events and display them on stdout.
event() {
    :;
}
# }} rfkill event

# {{ rfkill list
# @cmd List the current state of all available devices.
# @arg identifier*[`_choice_identifier`]
list() {
    :;
}
# }} rfkill list

# {{ rfkill block
# @cmd Disable the corresponding device.
# @arg identifier*[`_choice_identifier`]
block() {
    :;
}
# }} rfkill block

# {{ rfkill unblock
# @cmd Enable the corresponding device.
# @arg identifier*[`_choice_identifier`]
unblock() {
    :;
}
# }} rfkill unblock

# {{ rfkill toggle
# @cmd Enable or disable the corresponding device.
# @arg identifier*[`_choice_identifier`]
toggle() {
    :;
}
# }} rfkill toggle

_choice_column() {
    cat <<-'EOF'
DEVICE	kernel device name
ID	device identifier value
TYPE	device type name that can be used as identifier
TYPE-DESC	device type description
SOFT	status of software block
HARD	status of hardware block
EOF
}

_choice_identifier() {
    printf "%s\n" all wifi wlan bluetooth uwb ultrawideband wimax wwan gps fm
    rfkill list | sed -n 's/^\(\S\+\): \(\S\+\): \(.*\)$/\1\t\3/p'
}

command eval "$(argc --argc-eval "$0" "$@")"