#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]

# {{ xinput list
# @cmd If no argument is given list all the input devices.
# @flag --short
# @flag --long
# @flag --name-only
# @flag --id-only
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
list() {
    :;
}
# }} xinput list

# {{ xinput get-feedbacks
# @cmd Display the feedbacks of device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
get-feedbacks() {
    :;
}
# }} xinput get-feedbacks

# {{ xinput set-pointer
# @cmd Switch device in core pointer.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-pointer() {
    :;
}
# }} xinput set-pointer

# {{ xinput set-mode
# @cmd Change the mode of device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-mode() {
    :;
}
# }} xinput set-mode

# {{ xinput set-ptr-feedback
# @cmd Change the acceleration of device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-ptr-feedback() {
    :;
}
# }} xinput set-ptr-feedback

# {{ xinput set-integer-feedback
# @cmd Change the value of an integer feedback of device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-integer-feedback() {
    :;
}
# }} xinput set-integer-feedback

# {{ xinput set-button-map
# @cmd Change the button mapping of device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-button-map() {
    :;
}
# }} xinput set-button-map

# {{ xinput query-state
# @cmd Query the device state.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
query-state() {
    :;
}
# }} xinput query-state

# {{ xinput list-props
# @cmd Lists properties that can be set for the given device(s).
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
list-props() {
    :;
}
# }} xinput list-props

# {{ xinput set-int-prop
# @cmd Sets an integer property for the device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-int-prop() {
    :;
}
# }} xinput set-int-prop

# {{ xinput set-float-prop
# @cmd Sets a float property for the device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-float-prop() {
    :;
}
# }} xinput set-float-prop

# {{ xinput set-prop
# @cmd Set the property to the given value(s).
# @option --type[atom|float|int]
# @option --format[8|16|32]
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-prop() {
    :;
}
# }} xinput set-prop

# {{ xinput watch-props
# @cmd Prints to standard out when property changes occur.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
watch-props() {
    :;
}
# }} xinput watch-props

# {{ xinput delete-prop
# @cmd Delete the property from the device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
delete-prop() {
    :;
}
# }} xinput delete-prop

# {{ xinput test
# @cmd Register all extended events from device and enter an endless loop displaying events received.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
test() {
    :;
}
# }} xinput test

# {{ xinput test-xi2
# @cmd Register for a number of XI2 events and display them.
# @flag --root
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
test-xi2() {
    :;
}
# }} xinput test-xi2

# {{ xinput create-master
# @cmd Create a new pair of master devices on an XI2-enabled server with the given prefix.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
create-master() {
    :;
}
# }} xinput create-master

# {{ xinput remove-master
# @cmd Remove master and its paired master device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
remove-master() {
    :;
}
# }} xinput remove-master

# {{ xinput reattach
# @cmd Reattach slave to master.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
reattach() {
    :;
}
# }} xinput reattach

# {{ xinput float
# @cmd Remove slave from its current master device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
float() {
    :;
}
# }} xinput float

# {{ xinput set-cp
# @cmd Set the ClientPointer for the client owning window to master.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
set-cp() {
    :;
}
# }} xinput set-cp

# {{ xinput map-to-output
# @cmd Restricts  the movements of the absolute device to the RandR crtc.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
map-to-output() {
    :;
}
# }} xinput map-to-output

# {{ xinput enable
# @cmd Enable the device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
enable() {
    :;
}
# }} xinput enable

# {{ xinput disable
# @cmd Disable the device.
# @arg device[`_choice_device`]
# @arg property[`_choice_device_property`]
disable() {
    :;
}
# }} xinput disable

_choice_device() {
    xinput list --short | \
    sed -n 's/\s*\(⎡\|⎜\|⎣\|↳\)\s*//g;s/^\(\S.*\)\s\+id=\(\S\+\).*/\2\t\1/p'
}

_choice_device_property() {
    xinput list-props $argc_device | \
    sed -n 's/^\t\(.*\) (\([0-9]\+\)).*/\2\t\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"