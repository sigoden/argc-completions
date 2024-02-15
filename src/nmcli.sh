_patch_help() { 
    if [[ "$*" == "nmcli" ]]; then
        _patch_help_run_man nmcli | \
        sed -n '/^OPTIONS/,/^GENERAL COMMANDS/ {//!p}' | \
        sed -e 's/-\(\S\) | --/-\1, --/' -e 's/ {.*}/ <value>/'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# general - Use this command to show NetworkManager status and permissions. 
## status - Show overall status of NetworkManager.
## hostname [hostname] - Get and change system hostname
## permissions - Show the permissions a caller has for various authenticated operations that NetworkManager provides.
## logging [args]... - Get and change NetworkManager logging level and domains.
## reload [args]... - Reload NetworkManager's configuration and perform certain updates.

# networking - Query NetworkManager networking status, enable and disable networking.
## on - Enable networking control by NetworkManager.
## off - Disable networking control by NetworkManager.
## connectivity [check] - Get network connectivity state.

# radio - Show radio switches status, or enable and disable the switches.
## wiff (on|off) - Show or set status of Wi-Fi in NetworkManager. 
## wwan (on|off) - Show or set status of WWAN (mobile broadband) in NetworkManager.
## all (on|off) - Show or set all previously mentioned radio switches at the same time.

# monitor - Observe NetworkManager activity.

# connection - NetworkManager stores all network configuration as "connections".
## show <id>... - List in-memory and on-disk connection profiles, some of which may also be active if a device is using that connection profile.
    --active            show active connections
    --order <value>     specify order
## up <id> <value>... - Activate a connection.
## down <id>... - Deactivate a connection from a device without preventing the device from further auto-activation.
## modify <id> <value>... - Add, modify or remove properties in the connection profile.
    --temporary         Whether temporary modify
## add <value>... - Create a new connection using specified properties.
## edit <id> - Edit an existing connection or add a new one, using an interactive editor.
## clone <id> <new_name> - Clone a connection.
    --temporary         Whether temporary clone
## delete <id>... - Delete a configured connection.
## monitor <id>... - Monitor connection profile activity. 
## reload - Reload all connection files from disk.
## load <filename>... - Load/reload one or more connection files from disk.
## import <file> - Import an external/foreign configuration as a NetworkManager connection profile.
    --temporary         Whether temporary import
## export <id> [file] - Export a connection.

# device - Show and manage network interfaces.
## status - Print status of devices.
## show [ifname] - Show detailed information about devices.
## set <ifname> <value>... - Set device properties.
## up/connect <ifname> - Connect the device.
## reapply <ifname> - Attempt to update device with changes to the currently active connection made since it was last applied.
## modify <ifname> <value>... - Modify the settings currently active on the device.
## down/disconnect <ifname>... - Disconnect a device and prevent the device from automatically activating further connections without user/manual intervention.
## delete <ifname>... - Delete a device.
## monitor [ifname]... - Monitor device activity.
## wifi - Manage wifi devices.
### list <value>... - List available Wi-Fi access points. 
    --rescan <auto|no|yes>   Trigger new Wi-Fi scan
### connect <value>... - Connect to a Wi-Fi network specified by SSID or BSSID.
### hotspot <value>... - Create a Wi-Fi hotspot.
### rescan <value>... - Request that NetworkManager immediately re-scan for available access points.
### show-password <value>... - Show the details of the active Wi-Fi networks, including the secrets.
## lldp - Manage lldp devices.

# agent - Run nmcli as a NetworkManager secret agent, or polkit agent.
## secret - Register nmcli as a NetworkManager secret agent and listen for secret requests.
## polkit - Register nmcli as a polkit agent for the user session and listen for authorization requests.
## all - Runs nmcli as both NetworkManager secret and a polkit agent.
EOF
}

_patch_table() {
    if [[ "$*" == "nmcli" ]]; then
        _patch_table_edit_options \
            '--color;[auto|yes|no]' \
            '--escape;[yes|no]' \
            '--fields;[`_choice_field`]' \
            '--get-values;[`_choice_field`]' \
            '--mode;[tabular|multiline]' \

    elif [[ "$*" == "nmcli general logging" ]]; then
        _patch_table_edit_arguments ';;'  'args;*[`_choice_general_logging_args`]'

    elif [[ "$*" == "nmcli general reload" ]]; then
        _patch_table_edit_arguments ';;' 'args;*[`_choice_general_reload_args`]'

    elif [[ "$*" == "nmcli networking connectivity" ]]; then
        _patch_table_edit_arguments ';;' 'check;*[`_choice_connectivity_check`]'

    elif [[ "$*" == "nmcli connection"* ]]; then
        _patch_table_edit_arguments 'id;[`_choice_connection_id`]'

    elif [[ "$*" == "nmcli device"* ]]; then
        table="$(_patch_table_edit_arguments 'ifname;[`_choice_device_ifname`]')"

        if [[ "$*" == "nmcli device set" ]]; then
            echo "$table" | _patch_table_edit_arguments 'value;*[`_choice_device_set_values`]'

        elif [[ "$*" == "nmcli device wifi list" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'args;*[`_choice_device_wifi_list_args`]'

        elif [[ "$*" == "nmcli device wifi connect" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'ssid;[`_choice_wifi_ssid`]'

        elif [[ "$*" == "nmcli device wifi hotspot" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'args;*[`_choice_device_wifi_hotspot_args`]'

        elif [[ "$*" == "nmcli device wifi rescan" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'args;*[`_choice_device_wifi_rescan_args`]'

        elif [[ "$*" == "nmcli device wifi show-password" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'const;[ifname]' 'ifname;[`_choice_wifi_ifname`]'

        elif [[ "$*" == "nmcli device lldp" ]]; then
            echo "$table" | _patch_table_edit_arguments ';;' 'const1;[list]' 'const2;[ifname]' 'ifname;[`_choice_device_ifname`]'

        else
            echo "$table"
        fi

    else
        cat
    fi
}

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
