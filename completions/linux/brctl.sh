#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ brctl addbr
# @cmd add bridge
# @arg bridge![`_choice_bridge`]
addbr() {
    :;
}
# }} brctl addbr

# {{ brctl delbr
# @cmd delete bridge
# @arg bridge![`_choice_bridge`]
delbr() {
    :;
}
# }} brctl delbr

# {{ brctl addif
# @cmd add interface to bridge
# @arg bridge![`_choice_bridge`]
# @arg device![`_module_os_network_interface`]
addif() {
    :;
}
# }} brctl addif

# {{ brctl delif
# @cmd delete interface from bridge
# @arg bridge![`_choice_bridge`]
# @arg device![`_module_os_network_interface`]
delif() {
    :;
}
# }} brctl delif

# {{ brctl hairpin
# @cmd turn hairpin on/off
# @arg bridge![`_choice_bridge`]
# @arg port!
# @arg enum[on|off]
hairpin() {
    :;
}
# }} brctl hairpin

# {{ brctl setageing
# @cmd set ageing time
# @arg bridge![`_choice_bridge`]
# @arg time!
setageing() {
    :;
}
# }} brctl setageing

# {{ brctl setbridgeprio
# @cmd set bridge priority
# @arg bridge![`_choice_bridge`]
# @arg prio!
setbridgeprio() {
    :;
}
# }} brctl setbridgeprio

# {{ brctl setfd
# @cmd set bridge forward delay
# @arg bridge![`_choice_bridge`]
# @arg time!
setfd() {
    :;
}
# }} brctl setfd

# {{ brctl sethello
# @cmd set hello time
# @arg bridge![`_choice_bridge`]
# @arg time!
sethello() {
    :;
}
# }} brctl sethello

# {{ brctl setmaxage
# @cmd set max message age
# @arg bridge![`_choice_bridge`]
# @arg time!
setmaxage() {
    :;
}
# }} brctl setmaxage

# {{ brctl setpathcost
# @cmd set path cost
# @arg bridge![`_choice_bridge`]
# @arg port!
# @arg cost!
setpathcost() {
    :;
}
# }} brctl setpathcost

# {{ brctl setportprio
# @cmd set port priority
# @arg bridge![`_choice_bridge`]
# @arg port!
# @arg prio!
setportprio() {
    :;
}
# }} brctl setportprio

# {{ brctl show
# @cmd show a list of bridges
# @arg bridge[`_choice_bridge`]
show() {
    :;
}
# }} brctl show

# {{ brctl showmacs
# @cmd show a list of mac addrs
# @arg bridge![`_choice_bridge`]
showmacs() {
    :;
}
# }} brctl showmacs

# {{ brctl showstp
# @cmd show bridge stp info
# @arg bridge![`_choice_bridge`]
showstp() {
    :;
}
# }} brctl showstp

# {{ brctl stp
# @cmd turn stp on/off
# @arg bridge![`_choice_bridge`]
# @arg enum[on|off]
stp() {
    :;
}
# }} brctl stp

_choice_bridge() {
    brctl show | gawk '{if (NR>1) {print $1}}'
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"