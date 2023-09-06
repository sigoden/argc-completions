#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ connmanctl state
# @cmd Shows the system properties.
state() {
    :;
}
# }} connmanctl state

# {{ connmanctl technologies
# @cmd Shows a list of all technology types existing on the system and their properties.
technologies() {
    :;
}
# }} connmanctl technologies

# {{ connmanctl enable
# @cmd Enables the given technology type (e.g. ethernet, wifi, 3g, etc.)  Turns power on to the technology, but doesn't connect unless there is a service with autoconnect set to True.
# @arg technology![`_choice_technology_and_offline`]
enable() {
    :;
}
# }} connmanctl enable

# {{ connmanctl disable
# @cmd Disables the given technology type.
# @arg technology![`_choice_technology_and_offline`]
disable() {
    :;
}
# }} connmanctl disable

# {{ connmanctl tether
# @cmd Enable or disable tethering on technology.
# @arg technology![`_choice_technology`]
# @arg value[on|off]
tether() {
    :;
}
# }} connmanctl tether

# {{ connmanctl services
# @cmd Shows a list of all properties for that service.
# @arg service[`_choice_service`]
services() {
    :;
}
# }} connmanctl services

# {{ connmanctl scan
# @cmd Scans for new services on the given technology.
# @arg technology![`_choice_technology`]
scan() {
    :;
}
# }} connmanctl scan

# {{ connmanctl connect
# @cmd Connects to the given service.
# @arg service![`_choice_service`]
connect() {
    :;
}
# }} connmanctl connect

# {{ connmanctl disconnect
# @cmd Disconnects from the given service.
# @arg service![`_choice_service`]
disconnect() {
    :;
}
# }} connmanctl disconnect

# {{ connmanctl move-before
# @cmd Prefer connecting to service over target-service.
# @arg service![`_choice_service`]
# @arg target-service![`_choice_service`]
move-before() {
    :;
}
# }} connmanctl move-before

# {{ connmanctl move-after
# @cmd Prefer connecting to target-service over service.
# @arg service![`_choice_service`]
# @arg target-service![`_choice_service`]
move-after() {
    :;
}
# }} connmanctl move-after

# {{ connmanctl config
# @cmd Configures a writable property of the given service to the value(s) entered after option.
# @arg service![`_choice_service`]
config() {
    :;
}
# }} connmanctl config

# {{ connmanctl monitor
# @cmd Listens for and displays DBus signals sent by Connman.
# @arg target!
monitor() {
    :;
}
# }} connmanctl monitor

# {{ connmanctl vpnconnections
# @cmd Shows the current properties of connection.
# @arg connection![`_choice_vpnconnection`]
vpnconnections() {
    :;
}
# }} connmanctl vpnconnections

# {{ connmanctl agent
# @cmd Enable or disable the wireless agent, used for entering wireless network passphrases.
# @arg value[on|off]
agent() {
    :;
}
# }} connmanctl agent

# {{ connmanctl vpnagent
# @cmd Enable or disable the vpn agent, used for entering vpn credentials.
# @arg value[on|off]
vpnagent() {
    :;
}
# }} connmanctl vpnagent

# {{ connmanctl autoconnect
# @cmd Sets the autoconnect property of the service.
# @arg value[on|off]
autoconnect() {
    :;
}
# }} connmanctl autoconnect

# {{ connmanctl ipv4
# @cmd Configures the IPv4 settings for the service.
# @arg value[off|dhcp|manual]
# @arg address
# @arg netmask
# @arg gateway
ipv4() {
    :;
}
# }} connmanctl ipv4

# {{ connmanctl ipv6
# @cmd Configures the IPv6 settings for the service.
# @arg value[off|auto|manual]
# @arg address
# @arg prefixlength
# @arg gateway
ipv6() {
    :;
}
# }} connmanctl ipv6

# {{ connmanctl nameservers
# @cmd Set the list of nameservers, separated by spaces.
# @arg dns*
nameservers() {
    :;
}
# }} connmanctl nameservers

# {{ connmanctl timeservers
# @cmd Set the list of timeservers, separated by spaces.
# @arg server*
timeservers() {
    :;
}
# }} connmanctl timeservers

# {{ connmanctl domains
# @cmd Set the list of search domains, separated by spaces.
# @arg domain*
domains() {
    :;
}
# }} connmanctl domains

# {{ connmanctl proxy
# @cmd Configures the proxy settings for the service.
# @arg value[direct|auto|manual]
proxy() {
    :;
}
# }} connmanctl proxy

# {{ connmanctl tech
# @cmd Listens for changes to technologies, for example a technology getting enabled.
# @arg off[off]
tech() {
    :;
}
# }} connmanctl tech

# {{ connmanctl manager
# @cmd Listens for the changes to global properties, available technologies, services, and peers.
# @arg off[off]
manager() {
    :;
}
# }} connmanctl manager

# {{ connmanctl vpnmanager
# @cmd Listens for added or removed vpn connections.
# @arg off[off]
vpnmanager() {
    :;
}
# }} connmanctl vpnmanager

# {{ connmanctl vpnconnection
# @cmd Listens for the changes to vpn connections, for example connecting to a VPN.
# @arg off[off]
vpnconnection() {
    :;
}
# }} connmanctl vpnconnection

_choice_technology_and_offline() {
    echo offline
    _choice_technology
}

_choice_technology() {
    connmanctl technologies | sed -n 's/^  Type = \(.*\)/\1/p'
}

_choice_service() {
    connmanctl services | sed -n 's/.\{4\}\(.*\) \+\(.*\)/\2\t\1/p'
}

_choice_vpnconnection() {
    connmanctl vpnconnections | sed -n 's/.\{4\}\(.*\) \+\(.*\)/\2\t\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"