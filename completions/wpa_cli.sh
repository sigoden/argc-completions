#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @option -p <path>                       Change the path where control sockets should be found.
# @option -g <control> <socket> <path>    Connect to the global control socket at the indicated path rather than an interface-specific control socket.
# @option -i <ifname>                     Specify the interface that is being configured.
# @flag -h                                Help.
# @flag -v                                Show version information.
# @flag -B                                Run as a daemon in the background.
# @option -a <file>                       Run in daemon mode executing the action file based on events from wpa_supplicant.
# @option -P <file>                       Set the location of the PID file.
# @option -G <ping> <interval>            Set the interval (in seconds) at which wpa_cli pings the supplicant.

# {{ wpa_cli status
# @cmd get current WPA/EAPOL/EAP status
status() {
    :;
}
# }} wpa_cli status

# {{ wpa_cli mib
# @cmd get MIB variables (dot1x, dot11)
mib() {
    :;
}
# }} wpa_cli mib

# {{ wpa_cli interface
# @cmd show interfaces/select interface
# @arg ifname[`_module_os_network_interface`]
interface() {
    :;
}
# }} wpa_cli interface

# {{ wpa_cli level
# @cmd change debug level
# @arg debug-level! <debug level>
level() {
    :;
}
# }} wpa_cli level

# {{ wpa_cli license
# @cmd show full wpa_cli license
license() {
    :;
}
# }} wpa_cli license

# {{ wpa_cli logoff
# @cmd IEEE 802.1X EAPOL state machine logoff
logoff() {
    :;
}
# }} wpa_cli logoff

# {{ wpa_cli logon
# @cmd IEEE 802.1X EAPOL state machine logon
logon() {
    :;
}
# }} wpa_cli logon

# {{ wpa_cli set
# @cmd set variables (shows list of variables when run without arguments)
set() {
    :;
}
# }} wpa_cli set

# {{ wpa_cli pmksa
# @cmd show PMKSA cache
pmksa() {
    :;
}
# }} wpa_cli pmksa

# {{ wpa_cli reassociate
# @cmd force reassociation
reassociate() {
    :;
}
# }} wpa_cli reassociate

# {{ wpa_cli reconfigure
# @cmd force wpa_supplicant to re-read its configuration file
reconfigure() {
    :;
}
# }} wpa_cli reconfigure

# {{ wpa_cli preauthenticate
# @cmd force preauthentication
# @arg bssid!
preauthenticate() {
    :;
}
# }} wpa_cli preauthenticate

# {{ wpa_cli identity
# @cmd configure identity for an SSID
# @arg network-id![`_choice_network_id`] <network id>
# @arg identity!
identity() {
    :;
}
# }} wpa_cli identity

# {{ wpa_cli password
# @cmd configure password for an SSID
# @arg network-id![`_choice_network_id`] <network id>
# @arg password!
password() {
    :;
}
# }} wpa_cli password

# {{ wpa_cli pin
# @cmd configure pin for an SSID
# @arg network-id![`_choice_network_id`] <network id>
# @arg pin!
pin() {
    :;
}
# }} wpa_cli pin

# {{ wpa_cli otp
# @cmd configure one-time-password for an SSID
# @arg network-id![`_choice_network_id`] <network id>
# @arg password!
otp() {
    :;
}
# }} wpa_cli otp

# {{ wpa_cli bssid
# @cmd set preferred BSSID for an SSID
# @arg network-id![`_choice_network_id`] <network id>
# @arg bssid!
bssid() {
    :;
}
# }} wpa_cli bssid

# {{ wpa_cli list_networks
# @cmd list configured networks
list_networks() {
    :;
}
# }} wpa_cli list_networks

# {{ wpa_cli terminate
# @cmd terminate wpa_supplicant
terminate() {
    :;
}
# }} wpa_cli terminate

# {{ wpa_cli quit
# @cmd exit wpa_cli
quit() {
    :;
}
# }} wpa_cli quit

_choice_network_id() {
    wpa_cli list_networks | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/'
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"