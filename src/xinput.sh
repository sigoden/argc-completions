_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# list [device] - If no argument is given list all the input devices. If an argument is given, show all the features of device
    --short
    --long
    --name-only
    --id-only
# get-feedbacks <device> - Display the feedbacks of device.
# set-pointer <device> - Switch device in core pointer.
# set-mode <device> {ABSOLUTE|RELATIVE} - Change the mode of device.
# set-ptr-feedback <device> <threshold> <num> <denom> - Change the acceleration of device.
# set-integer-feedback <device> <index> <value> - Change the value of an integer feedback of device.
# set-button-map <device> <map_button>... - Change the button mapping of device.
# query-state <device> - Query the device state.
# list-props <device>... - Lists properties that can be set for the given device(s).
# set-int-prop <device> <property> {8|16|32} <value>... - Sets an integer property for the device.
# set-float-prop <device> <property> <value>... - Sets a float property for the device. Deprecated
# set-prop <device> <property> <value>... - Set the property to the given value(s).
    --type={atom|float|int}
    --format={8|16|32}
# watch-props <device> - Prints to standard out when property changes occur.
# delete-prop <device> <property> - Delete the property from the device.
# test <device> - Register all extended events from device and enter an endless loop displaying events received.
    -proximity
# test-xi2 [device] - Register for a number of XI2 events and display them. 
    --root
# create-master <prefix> [sendCore] [enable] - Create a new pair of master devices on an XI2-enabled server with the given prefix. 
# remove-master <master> {Floating|AttachToMaster} [returnPointer] [returnKeyboard] - Remove master and its paired master device.
# reattach <slave> <master> - Reattach slave to master.
# float <slave> - Remove slave from its current master device.
# set-cp <window> <master> - Set the ClientPointer for the client owning window to master.
# map-to-output <device> <crtc> - Restricts  the movements of the absolute device to the RandR crtc.
# enable <device> - Enable the device.
# disable <device> - Disable the device.
EOF
}

_patch_table() {
    _patch_table_edit_arguments ';;' 'device;[`_choice_device`]' 'property;[`_choice_device_property`]'
}

_choice_device() {
    xinput list --short | \
    sed -n 's/\s*\(⎡\|⎜\|⎣\|↳\)\s*//g;s/^\(\S.*\)\s\+id=\(\S\+\).*/\2\t\1/p'
}

_choice_device_property() {
    xinput list-props $argc_device | \
    sed -n 's/^\t\(.*\) (\([0-9]\+\)).*/\2\t\1/p'
}
