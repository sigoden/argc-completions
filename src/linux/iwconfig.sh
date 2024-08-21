_patch_help() {
    :;
}

_patch_table() {
    _patch_table_edit_arguments \
        ';;' \
        'network;[`_module_os_network_interface`]' \
        'args;*[`_choice_args`]' \

}

_choice_args() {
    cat <<-'EOF' | _argc_util_comp_tv
essid=any,on,off;;Set the ESSID (or Network Name - in some products it may also be called Domain ID). 
nwid=on,off;;Set the Network ID.
nick=;;Set the nickname, or the station name.
mode=Ad-Hoc,Managed,Master,Repeater,Secondary,Monitor,Auto;;Set the operating mode of the device, which depends on the network topology.
freq=;;Set the operating frequency or channel in the device.
channel=;;Set the operating frequency or channel in the device.
ap=any,off;;Force the card to register to the Access Point given by the address, if it is possible.
rate=auto,fixed;;For  cards  supporting  multiple  bit rates, set the bit-rate in b/s.
bit=auto,fixed;;For  cards  supporting  multiple  bit rates, set the bit-rate in b/s.
txpower=auto,off;;For cards supporting multiple transmit powers, sets the transmit power in dBm.
sens=;;Set the sensitivity threshold. This define how sensitive is the card to poor operating  conditions  (low  signal,
retry=;;Most cards have MAC retransmissions, and some allow to set the behaviour of the retry mechanism.
rts=auto,fixed,off;;TS/CTS  adds a handshake before each packet transmission to make sure that the channel is clear.
frag=auto,fixed,off;;Fragmentation allows to split an IP packet in a burst of smaller fragments transmitted on  the  medium.
key=;;Used to manipulate encryption or scrambling keys and security mode.
enc=;;Used to manipulate encryption or scrambling keys and security mode.
power=;;Used to manipulate power management scheme parameters and mode.
modu=11g,CCK,OFDMa,auto;;Force the card to use a specific set of modulations.
commit=;;Forces the card to apply all pending changes.
EOF
}
