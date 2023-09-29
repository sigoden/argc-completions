#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --ask                                  When using this option nmcli will stop and ask for any missing required arguments, so do not use this option for non-interactive purposes like scripts.
# @option -c --colors <value>                     This option controls color output (using terminal escape sequences).
# @flag --complete-args                           Instead of conducting the desired action, nmcli will list possible completions for the last argument.
# @option -e --escape[yes|no] <value>             Whether to escape : and \ characters in terse tabular mode.
# @option -f --fields[`_choice_field`] <value>    This option is used to specify what fields (column names) should be printed.
# @option -g --get-values[`_choice_field`] <value>  This option is used to print values from specific fields.
# @flag -h --help                                 Print help information.
# @option -m --mode[tabular|multiline] <value>    Switch between tabular and multiline output:
# @flag -p --pretty                               Output is pretty.
# @flag -s --show-secrets                         When using this option nmcli will display passwords and secrets that might be present in an output of an operation.
# @flag -t --terse                                Output is terse.
# @flag -v --version                              Show nmcli version.
# @option -w --wait <seconds>                     This option sets a timeout period for which nmcli will wait for NetworkManager to finish operations.

# {{ nmcli general
# @cmd Use this command to show NetworkManager status and permissions.
general() {
    :;
}

# {{{ nmcli general status
# @cmd Show overall status of NetworkManager.
general::status() {
    :;
}
# }}} nmcli general status

# {{{ nmcli general hostname
# @cmd Get and change system hostname
# @arg hostname
general::hostname() {
    :;
}
# }}} nmcli general hostname

# {{{ nmcli general permissions
# @cmd Show the permissions a caller has for various authenticated operations that NetworkManager provides.
general::permissions() {
    :;
}
# }}} nmcli general permissions

# {{{ nmcli general logging
# @cmd Get and change NetworkManager logging level and domains.
# @arg args*[`_choice_general_logging_args`]
general::logging() {
    :;
}
# }}} nmcli general logging

# {{{ nmcli general reload
# @cmd Reload NetworkManager's configuration and perform certain updates.
# @arg args*[`_choice_general_reload_args`]
general::reload() {
    :;
}
# }}} nmcli general reload
# }} nmcli general

# {{ nmcli networking
# @cmd Query NetworkManager networking status, enable and disable networking.
networking() {
    :;
}

# {{{ nmcli networking on
# @cmd Enable networking control by NetworkManager.
networking::on() {
    :;
}
# }}} nmcli networking on

# {{{ nmcli networking off
# @cmd Disable networking control by NetworkManager.
networking::off() {
    :;
}
# }}} nmcli networking off

# {{{ nmcli networking connectivity
# @cmd Get network connectivity state.
# @arg check*[`_choice_connectivity_check`]
networking::connectivity() {
    :;
}
# }}} nmcli networking connectivity
# }} nmcli networking

# {{ nmcli radio
# @cmd Show radio switches status, or enable and disable the switches.
radio() {
    :;
}

# {{{ nmcli radio wiff
# @cmd Show or set status of Wi-Fi in NetworkManager.
# @arg enum[on|off]
radio::wiff() {
    :;
}
# }}} nmcli radio wiff

# {{{ nmcli radio wwan
# @cmd Show or set status of WWAN (mobile broadband) in NetworkManager.
# @arg enum[on|off]
radio::wwan() {
    :;
}
# }}} nmcli radio wwan

# {{{ nmcli radio all
# @cmd Show or set all previously mentioned radio switches at the same time.
# @arg enum[on|off]
radio::all() {
    :;
}
# }}} nmcli radio all
# }} nmcli radio

# {{ nmcli monitor
# @cmd Observe NetworkManager activity.
monitor() {
    :;
}
# }} nmcli monitor

# {{ nmcli connection
# @cmd NetworkManager stores all network configuration as "connections".
connection() {
    :;
}

# {{{ nmcli connection show
# @cmd List in-memory and on-disk connection profiles, some of which may also be active if a device is using that connection profile.
# @flag --active             show active connections
# @option --order <value>    specify order
# @arg id+[`_choice_connection_id`]
connection::show() {
    :;
}
# }}} nmcli connection show

# {{{ nmcli connection up
# @cmd Activate a connection.
# @arg id![`_choice_connection_id`]
# @arg value+
connection::up() {
    :;
}
# }}} nmcli connection up

# {{{ nmcli connection down
# @cmd Deactivate a connection from a device without preventing the device from further auto-activation.
# @arg id+[`_choice_connection_id`]
connection::down() {
    :;
}
# }}} nmcli connection down

# {{{ nmcli connection modify
# @cmd Add, modify or remove properties in the connection profile.
# @flag --temporary    Whether temporary modify
# @arg id![`_choice_connection_id`]
# @arg value+
connection::modify() {
    :;
}
# }}} nmcli connection modify

# {{{ nmcli connection add
# @cmd Create a new connection using specified properties.
# @arg value+
connection::add() {
    :;
}
# }}} nmcli connection add

# {{{ nmcli connection edit
# @cmd Edit an existing connection or add a new one, using an interactive editor.
# @arg id![`_choice_connection_id`]
connection::edit() {
    :;
}
# }}} nmcli connection edit

# {{{ nmcli connection clone
# @cmd Clone a connection.
# @flag --temporary    Whether temporary clone
# @arg id![`_choice_connection_id`]
# @arg new_name!
connection::clone() {
    :;
}
# }}} nmcli connection clone

# {{{ nmcli connection delete
# @cmd Delete a configured connection.
# @arg id+[`_choice_connection_id`]
connection::delete() {
    :;
}
# }}} nmcli connection delete

# {{{ nmcli connection monitor
# @cmd Monitor connection profile activity.
# @arg id+[`_choice_connection_id`]
connection::monitor() {
    :;
}
# }}} nmcli connection monitor

# {{{ nmcli connection reload
# @cmd Reload all connection files from disk.
connection::reload() {
    :;
}
# }}} nmcli connection reload

# {{{ nmcli connection load
# @cmd Load/reload one or more connection files from disk.
# @arg filename+
connection::load() {
    :;
}
# }}} nmcli connection load

# {{{ nmcli connection import
# @cmd Import an external/foreign configuration as a NetworkManager connection profile.
# @flag --temporary    Whether temporary import
# @arg file!
connection::import() {
    :;
}
# }}} nmcli connection import

# {{{ nmcli connection export
# @cmd Export a connection.
# @arg id![`_choice_connection_id`]
# @arg file
connection::export() {
    :;
}
# }}} nmcli connection export
# }} nmcli connection

# {{ nmcli device
# @cmd Show and manage network interfaces.
device() {
    :;
}

# {{{ nmcli device status
# @cmd Print status of devices.
device::status() {
    :;
}
# }}} nmcli device status

# {{{ nmcli device show
# @cmd Show detailed information about devices.
# @arg ifname[`_choice_device_ifname`]
device::show() {
    :;
}
# }}} nmcli device show

# {{{ nmcli device set
# @cmd Set device properties.
# @arg ifname![`_choice_device_ifname`]
# @arg value*[`_choice_device_set_values`]
device::set() {
    :;
}
# }}} nmcli device set

# {{{ nmcli device up
# @cmd Connect the device.
# @alias connect
# @arg ifname![`_choice_device_ifname`]
device::up() {
    :;
}
# }}} nmcli device up

# {{{ nmcli device reapply
# @cmd Attempt to update device with changes to the currently active connection made since it was last applied.
# @arg ifname![`_choice_device_ifname`]
device::reapply() {
    :;
}
# }}} nmcli device reapply

# {{{ nmcli device modify
# @cmd Modify the settings currently active on the device.
# @arg ifname![`_choice_device_ifname`]
# @arg value+
device::modify() {
    :;
}
# }}} nmcli device modify

# {{{ nmcli device down
# @cmd Disconnect a device and prevent the device from automatically activating further connections without user/manual intervention.
# @alias disconnect
# @arg ifname+[`_choice_device_ifname`]
device::down() {
    :;
}
# }}} nmcli device down

# {{{ nmcli device delete
# @cmd Delete a device.
# @arg ifname+[`_choice_device_ifname`]
device::delete() {
    :;
}
# }}} nmcli device delete

# {{{ nmcli device monitor
# @cmd Monitor device activity.
# @arg ifname*[`_choice_device_ifname`]
device::monitor() {
    :;
}
# }}} nmcli device monitor

# {{{ nmcli device wifi
# @cmd Manage wifi devices.
device::wifi() {
    :;
}

# {{{{ nmcli device wifi list
# @cmd List available Wi-Fi access points.
# @option --rescan[auto|no|yes]    Trigger new Wi-Fi scan
# @arg args*[`_choice_device_wifi_list_args`]
device::wifi::list() {
    :;
}
# }}}} nmcli device wifi list

# {{{{ nmcli device wifi connect
# @cmd Connect to a Wi-Fi network specified by SSID or BSSID.
# @arg ssid[`_choice_wifi_ssid`]
device::wifi::connect() {
    :;
}
# }}}} nmcli device wifi connect

# {{{{ nmcli device wifi hotspot
# @cmd Create a Wi-Fi hotspot.
# @arg args*[`_choice_device_wifi_hotspot_args`]
device::wifi::hotspot() {
    :;
}
# }}}} nmcli device wifi hotspot

# {{{{ nmcli device wifi rescan
# @cmd Request that NetworkManager immediately re-scan for available access points.
# @arg args*[`_choice_device_wifi_rescan_args`]
device::wifi::rescan() {
    :;
}
# }}}} nmcli device wifi rescan

# {{{{ nmcli device wifi show-password
# @cmd Show the details of the active Wi-Fi networks, including the secrets.
# @arg const[ifname]
# @arg ifname[`_choice_wifi_ifname`]
device::wifi::show-password() {
    :;
}
# }}}} nmcli device wifi show-password
# }}} nmcli device wifi

# {{{ nmcli device lldp
# @cmd Manage lldp devices.
# @arg const1[list]
# @arg const2[ifname]
# @arg ifname[`_choice_device_ifname`]
device::lldp() {
    :;
}
# }}} nmcli device lldp
# }} nmcli device

# {{ nmcli agent
# @cmd Run nmcli as a NetworkManager secret agent, or polkit agent.
agent() {
    :;
}

# {{{ nmcli agent secret
# @cmd Register nmcli as a NetworkManager secret agent and listen for secret requests.
agent::secret() {
    :;
}
# }}} nmcli agent secret

# {{{ nmcli agent polkit
# @cmd Register nmcli as a polkit agent for the user session and listen for authorization requests.
agent::polkit() {
    :;
}
# }}} nmcli agent polkit

# {{{ nmcli agent all
# @cmd Runs nmcli as both NetworkManager secret and a polkit agent.
agent::all() {
    :;
}
# }}} nmcli agent all
# }} nmcli agent

_choice_field() {
    cat <<-'EOF'
ACTIVE
CONNECTION
RATE
TIMESTAMP
ACTIVE-PATH
CONNECTIVITY
READONLY
TIMESTAMP-REAL
all
CON-PATH
RUNNING
TYPE
AUTOCONNECT
CON-UUID
SECURITY
UUID
AUTOCONNECT-PRIORITY
DBUS-PATH
SIGNAL
VERSION
BARS
DEVICE
SLAVE
WIFI
BSSID
MODE
SSID
WIFI-HW
CHAN
NAME
STARTUP
WWAN
common
NETWORKING
STATE
WWAN-HW
EOF
}

_choice_general_logging_args() {
    len=${#argc__positionals[@]}
    if [[ $len -eq 1  ]]; then
        printf "%s\n" level domains
    elif [[ "${argc__positionals[0]}" == "level" ]]; then
        if [[ $len -eq 2 ]]; then
            _choice_logging_level
        elif [[ $len -eq 3 ]]; then
            echo domains
        else
            _choice_logging_domain
        fi
    else
        _choice_logging_domain
    fi
}

_choice_general_reload_args() {
    cat <<-'EOF'
conf	Reload the NetworkManager.conf configuration from disk. 
dns-rc	Update DNS configuration, which usually involves writing /etc/resolv.conf anew.
dns-full	Restart the DNS plugin.
EOF
}

_choice_connectivity_check() {
    cat <<-'EOF'
none	the host is not connected to any network.
portal	the host is behind a captive portal and cannot reach the full Internet.
limited	the host is connected to a network, but it has no access to the Internet.
full	the host is connected to a network and has full access to the Internet.
unknown	the connectivity status cannot be found out.
EOF
}

_choice_connection_id() {
    nmcli --terse connection show | gawk -F: '{print $1 "\t" $3 " " $2}'
}

_choice_device_ifname() {
    nmcli --terse --fields device,type device status | gawk -F: '{print $1 "\t" $2}'
}

_choice_device_set_values() {
    len=${#argc__positionals[@]}
    if [[ $len -eq 2 ]] || [[ $len -eq 4 ]]; then
        printf "%s\n" autoconnect managed
    elif [[ $len -eq 3 ]] || [[ $len -eq 5 ]]; then
        printf "%s\n" yes no
    fi
}

_choice_device_wifi_list_args() {
    len=${#argc__positionals[@]}
    if [[ $len -eq 1 ]]; then
        printf "%s\n" ifname bssid
    elif [[ $len -eq 2 ]] || [[ $len -eq 4 ]]; then
        if [[ "${argc__positionals[-2]}" == "ifname" ]]; then
            _choice_wifi_ifname
        elif [[ "${argc__positionals[-2]}" == "bssid" ]]; then
            _choice_wifi_bssid
        fi
    elif [[ $len -eq 3 ]]; then
        if [[ "${argc__positionals[0]}" == "ifname" ]]; then
            echo bssid
        elif [[ "${argc__positionals[0]}" == "bssid" ]]; then
            echo ifname
        fi
    fi
}

_choice_wifi_ssid() {
     nmcli --terse --fields ssid device wifi list
}

_choice_device_wifi_hotspot_args() {
    len=${#argc__positionals[@]}
    if (( $len % 2 == 1 )); then
        printf "%s\n" ifname con-name ssid band channel password
    elif [[ "${argc__positionals[-2]}" == "ifname" ]]; then
        _choice_wifi_ifname
    elif [[ "${argc__positionals[-2]}" == "ssid" ]]; then
        _choice_wifi_ssid
    elif [[ "${argc__positionals[-2]}" == "band" ]]; then
        printf "%s\n" a bg
    fi
}

_choice_device_wifi_rescan_args() {
    len=${#argc__positionals[@]}
    if [[ $len -eq 1 ]]; then
        printf "%s\n" ifname ssid
    elif [[ $len -eq 2 ]]; then
        if [[ "${argc__positionals[0]}" == "ifname" ]]; then
            _choice_wifi_ifname
        elif [[ "${argc__positionals[0]}" == "ssid" ]]; then
            _choice_wifi_ssid
        fi
    elif [[ $len -eq 3 ]]; then
        if [[ "${argc__positionals[0]}" == "ifname" ]]; then
            echo ssid
        elif [[ "${argc__positionals[0]}" == "ssid" ]]; then
            _choice_wifi_ssid
        fi
    else
        _choice_wifi_ssid
    fi
}

_choice_wifi_ifname() {
    nmcli --terse --fields device,type device status | gawk -F: '{if ($2 == "wifi") {print $1 "\t" $2}}'
}

_choice_logging_domain() {
    cat <<-'EOF'
PLATFORM
RFKILL
ETHER
WIFI
BT
MB
DHCP4
DHCP6
PPP
IP4
IP6
AUTOIP4
DNS
VPN
SHARING
SUPPLICANT
AGENTS
SETTINGS
SUSPEND
CORE
DEVICE
OLPC
INFINIBAND
FIREWALL
ADSL
BOND
VLAN
BRIDGE
TEAM
CONCHECK
DCB
DISPATCH
AUDIT
SYSTEMD
EOF
}

_choice_logging_level() {
    cat <<-'EOF'
ERR	log only critical errors
WARN	log warning messages
INFO	log various informational messages
DEBUG	verbose logging for debugging purposes
EOF
}

_choice_wifi_bssid() {
     nmcli --terse --fields bssid,ssid device wifi list | gawk '{print substr($0, 1, 17) "\t" substr($0, 19)}'
}

command eval "$(argc --argc-eval "$0" "$@")"