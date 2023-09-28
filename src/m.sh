_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
--update        Update m-cli
--uninstall     Uninstall m-cli

# airdrop <action> - Manage airdrop status

# appearance - Manage appearance
## darkmode {YES|NO} - Manage dark mode
## transparency {YES|NO} - Manage transparency
## antialiasthreshold <value> - Manage anti-alias threshold
## sidebariconsize {small|medium|large} - Manage sidebar icon size
## maincolor {blue|graphite} - Manage main UI color
## highlightcolor <color> - Manage UI highlight color

# battery {status|help} - Get the battery status

# bluetooth <action> - Manage bluetooth status

# dir - Show and delete dir trees
## tree [path] - tree view of folders in the current or specified path
## delete {empty|dsfiles} [path] - delete empty folders recursively in the current of specified path
## dsfiles {on|off} - restore/prohibit generation of .DS_Store
## size [path] - calculate folder size

# disk - Manage disks and volumes
## list/ls - list disks
## filesystems/fs - list available filesystems for formatting
## info - display information
## ejectall - eject al mountable volumes
## verify {volume|disk} <path> - verify volume or disk
## repair {volume|disk} <path> - repair volume or disk
## format - format a volume or disk
## reformat - reformat a volume
## rename - rename a volume

# display {status|help|up|down} - Display settings

# dns {flush|help} - Manage dns

# dock - Manage dock
## showdelay <x.x> - changes how long the Dock takes to show up when auto-hide is enabled
## autohide {YES|NO} - enable or disable Dock's auto hide feature
## autohidedelay <x.x> - changes how long the Dock takes to detect you want it to show up
## magnification {YES|NO} - enable or disable magnification
## position {BOTTOM|LEFT|RIGHT} - change Dock's position
## addblankspace - add a blank space(separator) to the dock
## additem - add an item to the Dock, e.g. /Applications/Safari.app
## addrecentitems - add a stack containg your recent items to the Dock
## prune - removes all apps from dock

# finder - Manage finder properties
## showhiddenfiles {YES|NO} - manage hidden file visibitlity
## showextensions {YES|NO} - manage file extension visibitlity
## showdesktop {YES|NO} - manage desktop status
## showpath {YES|NO} - manage current opened folder path on the top bar of the Finder window

# firewall - Manage firewall
## status - Show status
## enable - Enable firewall
## disable - Disable firewall
## list - List applications handled by firewall
## add - Add app to firewall
## remove - Remove app to firewall

# flightmode {on|off} - Manage flightmode

# gatekeeper - Manage gatekeeper (security for apps)
## status - gatekeeper status
## list - list rules
## enable RULE - enable gatekeeper or a rule
## disable RULE - disable gatekeeper or a rule
## create RULENAME <path> - create a rule for an application

# group - Manage groups
## list - list of groups
## info <group> - display group information
## adduser <user> <group> - add an user to a specific group
## removeuser <user> <group> - remove an user from a specific group
## ismember <user> <group> - show if the user is a member of a specific group

# hostname - Dislays or set the computre's hostname

# info - print macOS operating system version information

# itunes - itunes command line control
## status - show status, current artist and track
## play - start playing iTunes
## pause - pause iTunes
## next - go to the next track
## prev - go to the previous track
## mute - mute volume
## unmute - mute volume
## vol {up|down} - increase and decrease volume
## stop - stop iTune
## quit - quit iTunes

# localhost - Manage localhost file
## ls - list records from localhost file
## add <ip> <domain> - add record to localhost file
## remove <domain> - remove record from localhost file

# lock - Lock session

# network - Manage network interfaces and locations
## list - list network interfaces
## location - get or set the current location
### list/ls - list locations
### create <value> - create a location
### delete <value> - delete a location
### switch <value> - switch location

# nosleep - Prevent sleeping
## until - until timeout, pid or specified script ends

# notification - Manage the Notification Settings
## showcenter {YES|NO} - enable or disable notification center

# ntp - Manage the network time service
## status - status of the network time service
## enable - enable clock to use network time
## disable - disable clock to use network time
## set <server> - set network time server

# printer - Display information about the printers
## settings - Display printer settings
## name - Display printer names on system
## queue - Display items in printer queue on system
## drivers - Display all printer drivers
## web - Enable and show web interface

# restart - Restart computer

# safeboot {status|enable|disable} - Manage safeboot

# screensaver - Launch and manage the screensaver properties

# service - Manage services
--status-all     list all services
--list           list all services
--ls <srv>       show information about a specific service
## start <srv> - start a service
## stop <srv> - stop a service
## load <srv> - load a service
## unload <srv> - unload a service

# shutdown - Shutdown computer

# sleep - Sleep computer

# timezone - Manage timezone
## list - list available timezones
## set - set timezone

# touchbar - Manage touchbar
## reset - reset the touchbar

# trash - Manage the trash
## status - get trash info
## clean - clean trash

# update - Manage macOS updates
## list - list available updates
## install - install update(s)

# user - Manage users
## list/ls - list users
## info <user> - display user information
## create - create specified user (interactive)
## delete <user> - delete specified user

# volume - Manage the sound's volume

# vpn - Basic vpn operations, start,stop, status, list
## list/ls - list VPN connections
## start <vpn> <user> <pass> <secret> - start vpn connection
## stop <vpn> - stop vpn connection
## status <vpn> - status vpn connection

# wallpaper - Set the wallpaper

# wifi - Manage the wifi
## status - wifi status
## scan - scan wifi
## showpassword ESSID - show wifi network password
## list/ls - list known networks
## forget <ESSID> - forget a network
## history - wifi connection history
## off - turn off your wifi
## on - turn on your wifi
## connect <ESSID> PASSWORD - join a wifi network
EOF
}

_patch_table() {
    if [[ "$*" == "m airdrop" ]] \
    || [[ "$*" == "m bluetooth" ]] \
    ; then
        _patch_table_edit_arguments 'action;[`_choice_action`]'

    elif [[ "$*" == "m appearance highlightcolor" ]]; then
        _patch_table_edit_arguments 'color;[`_choice_highlightcolor`]'
    
    elif [[ "$*" == "m group info" ]]; then
        _patch_table_edit_arguments 'group;[`_module_os_group`]'

    elif [[ "$*" == "m group adduser" ]] \
      || [[ "$*" == "m group removeuser" ]] \
      || [[ "$*" == "m group ismember" ]] \
    ; then
        _patch_table_edit_arguments 'user;[`_module_os_user`]' 'group;[`_module_os_group`]'

    elif [[ "$*" == "m group user delete" ]] \
      || [[ "$*" == "m group user info" ]] \
    ; then
        _patch_table_edit_arguments 'user;[`_module_os_user`]'

    else
        cat
    fi
}

_choice_action() {
    printf "%s\n" status on enable off disable
}

_choice_highlightcolor() {
    printf "%s\n" graphite cayenne asparagus clover teal midnight plum tin nickel \
        mocha fern moss ocean eggplant maroon steel aluminum maraschino lemon spring \
        turquoise blueberry magenta iron magnesium tangerine lime seafoam aqua grape \
        strawberry tungsten silver salmon banana flora ice orchid bubblegum lead mercery \
        cantaloupe honeydew spindrift sky lavender carnation licorice snow
}
