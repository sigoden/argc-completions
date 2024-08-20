#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -l --list                list devices with available brightness controls.
# @flag -q --quiet               suppress output.
# @flag -p --pretend             do not perform write operations.
# @flag -m --machine-readable    produce machine-readable output.
# @flag -n --min-value           set minimum brightness, defaults to 1.
# @option -e --exponent <K>      changes percentage curve to exponential.
# @flag -s --save                save previous state in a temporary file.
# @flag -r --restore             restore previous saved state.
# @flag -h --help                print this help.
# @option -d --device            specify device name (can be a wildcard).
# @option -c --class             specify device class.
# @flag -V --version             print version and exit.
# @arg value

# {{ brightnessctl info
# @cmd get device info.
# @alias i
info() {
    :;
}
# }} brightnessctl info

# {{ brightnessctl get
# @cmd get current brightness of the device.
# @alias g
get() {
    :;
}
# }} brightnessctl get

# {{ brightnessctl max
# @cmd get maximum brightness of the device.
# @alias m
max() {
    :;
}
# }} brightnessctl max

# {{ brightnessctl set
# @cmd set brightness of the device.
# @alias s
set() {
    :;
}
# }} brightnessctl set

command eval "$(argc --argc-eval "$0" "$@")"