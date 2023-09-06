_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# help - Shows the abbreviated help menu in the terminal.
# state - Shows the system properties.
# technologies - Shows a list of all technology types existing on the system and their properties.
# enable <technology> - Enables the given technology type (e.g. ethernet, wifi, 3g, etc.)  Turns power on to the technology, but doesn't connect unless there is a service with autoconnect set to True.
# disable <technology> - Disables the given technology type.
# tether <technology> {on|off} - Enable or disable tethering on technology.
# services [service] - Shows a list of all properties for that service.
# scan <technology> - Scans for new services on the given technology.
# connect <service> - Connects to the given service.
# disconnect <service> - Disconnects from the given service.
# move-before <service> <target-service> - Prefer connecting to service over target-service.
# move-after <service> <target-service> - Prefer connecting to target-service over service.
# config <service> - Configures a writable property of the given service to the value(s) entered after option.
# monitor <target> - Listens for and displays DBus signals sent by Connman.
# vpnconnections <connection> - Shows the current properties of connection.
# agent {on|off} - Enable or disable the wireless agent, used for entering wireless network passphrases.
# vpnagent {on|off} - Enable or disable the vpn agent, used for entering vpn credentials.
# autoconnect {on|off} - Sets the autoconnect property of the service.
# ipv4 {off|dhcp|manual} [address] [netmask] [gateway] -  Configures the IPv4 settings for the service.
# ipv6 {off|auto|manual} [address] [prefixlength] [gateway] - Configures the IPv6 settings for the service.
# nameservers [dns]... - Set the list of nameservers, separated by spaces.
# timeservers [server]... - Set the list of timeservers, separated by spaces.
# domains [domain]... - Set the list of search domains, separated by spaces.
# proxy {direct|auto|manual} - Configures the proxy settings for the service.
# tech [off] - Listens for changes to technologies, for example a technology getting enabled.
# manager [off] - Listens for the changes to global properties, available technologies, services, and peers.
# vpnmanager [off] - Listens for added or removed vpn connections.
# vpnconnection [off] - Listens for the changes to vpn connections, for example connecting to a VPN.
EOF
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'technology;[`_choice_technology`]' \
            'service;[`_choice_service`]' \
            'target-service;[`_choice_service`]' \
            'connection;[`_choice_vpnconnection`]' \
            'off;[off]' \
    )"
    if [[ "$*" == "connmanctl enable" ]] \
    || [[ "$*" == "connmanctl disable" ]] \
    ; then
        echo "$table" | \
            _patch_table_edit_arguments \
                'technology;[`_choice_technology_and_offline`]'

    else
        echo "$table"
    fi
}

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
