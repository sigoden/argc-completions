#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --update       Update m-cli
# @flag --uninstall    Uninstall m-cli

# {{ m airdrop
# @cmd Manage airdrop status
# @arg action![`_choice_action`]
airdrop() {
    :;
}
# }} m airdrop

# {{ m appearance
# @cmd Manage appearance
appearance() {
    :;
}

# {{{ m appearance darkmode
# @cmd Manage dark mode
# @arg enum[YES|NO]
appearance::darkmode() {
    :;
}
# }}} m appearance darkmode

# {{{ m appearance transparency
# @cmd Manage transparency
# @arg enum[YES|NO]
appearance::transparency() {
    :;
}
# }}} m appearance transparency

# {{{ m appearance antialiasthreshold
# @cmd Manage anti-alias threshold
# @arg value!
appearance::antialiasthreshold() {
    :;
}
# }}} m appearance antialiasthreshold

# {{{ m appearance sidebariconsize
# @cmd Manage sidebar icon size
# @arg enum[small|medium|large]
appearance::sidebariconsize() {
    :;
}
# }}} m appearance sidebariconsize

# {{{ m appearance maincolor
# @cmd Manage main UI color
# @arg enum[blue|graphite]
appearance::maincolor() {
    :;
}
# }}} m appearance maincolor

# {{{ m appearance highlightcolor
# @cmd Manage UI highlight color
# @arg color![`_choice_highlightcolor`]
appearance::highlightcolor() {
    :;
}
# }}} m appearance highlightcolor
# }} m appearance

# {{ m battery
# @cmd Get the battery status
# @arg enum[status|help]
battery() {
    :;
}
# }} m battery

# {{ m bluetooth
# @cmd Manage bluetooth status
# @arg action![`_choice_action`]
bluetooth() {
    :;
}
# }} m bluetooth

# {{ m dir
# @cmd Show and delete dir trees
dir() {
    :;
}

# {{{ m dir tree
# @cmd tree view of folders in the current or specified path
# @arg path
dir::tree() {
    :;
}
# }}} m dir tree

# {{{ m dir delete
# @cmd delete empty folders recursively in the current of specified path
# @arg enum[empty|dsfiles]
# @arg path
dir::delete() {
    :;
}
# }}} m dir delete

# {{{ m dir dsfiles
# @cmd restore/prohibit generation of .DS_Store
# @arg enum[on|off]
dir::dsfiles() {
    :;
}
# }}} m dir dsfiles

# {{{ m dir size
# @cmd calculate folder size
# @arg path
dir::size() {
    :;
}
# }}} m dir size
# }} m dir

# {{ m disk
# @cmd Manage disks and volumes
disk() {
    :;
}

# {{{ m disk list
# @cmd list disks
# @alias ls
disk::list() {
    :;
}
# }}} m disk list

# {{{ m disk filesystems
# @cmd list available filesystems for formatting
# @alias fs
disk::filesystems() {
    :;
}
# }}} m disk filesystems

# {{{ m disk info
# @cmd display information
disk::info() {
    :;
}
# }}} m disk info

# {{{ m disk ejectall
# @cmd eject al mountable volumes
disk::ejectall() {
    :;
}
# }}} m disk ejectall

# {{{ m disk verify
# @cmd verify volume or disk
# @arg enum[volume|disk]
# @arg path!
disk::verify() {
    :;
}
# }}} m disk verify

# {{{ m disk repair
# @cmd repair volume or disk
# @arg enum[volume|disk]
# @arg path!
disk::repair() {
    :;
}
# }}} m disk repair

# {{{ m disk format
# @cmd format a volume or disk
disk::format() {
    :;
}
# }}} m disk format

# {{{ m disk reformat
# @cmd reformat a volume
disk::reformat() {
    :;
}
# }}} m disk reformat

# {{{ m disk rename
# @cmd rename a volume
disk::rename() {
    :;
}
# }}} m disk rename
# }} m disk

# {{ m display
# @cmd Display settings
# @arg enum[status|help|up|down]
display() {
    :;
}
# }} m display

# {{ m dns
# @cmd Manage dns
# @arg enum[flush|help]
dns() {
    :;
}
# }} m dns

# {{ m dock
# @cmd Manage dock
dock() {
    :;
}

# {{{ m dock showdelay
# @cmd changes how long the Dock takes to show up when auto-hide is enabled
# @arg x-x! <x.x>
dock::showdelay() {
    :;
}
# }}} m dock showdelay

# {{{ m dock autohide
# @cmd enable or disable Dock's auto hide feature
# @arg enum[YES|NO]
dock::autohide() {
    :;
}
# }}} m dock autohide

# {{{ m dock autohidedelay
# @cmd changes how long the Dock takes to detect you want it to show up
# @arg x-x! <x.x>
dock::autohidedelay() {
    :;
}
# }}} m dock autohidedelay

# {{{ m dock magnification
# @cmd enable or disable magnification
# @arg enum[YES|NO]
dock::magnification() {
    :;
}
# }}} m dock magnification

# {{{ m dock position
# @cmd change Dock's position
# @arg enum[BOTTOM|LEFT|RIGHT]
dock::position() {
    :;
}
# }}} m dock position

# {{{ m dock addblankspace
# @cmd add a blank space(separator) to the dock
dock::addblankspace() {
    :;
}
# }}} m dock addblankspace

# {{{ m dock additem
# @cmd add an item to the Dock, e.g. /Applications/Safari.app
dock::additem() {
    :;
}
# }}} m dock additem

# {{{ m dock addrecentitems
# @cmd add a stack containg your recent items to the Dock
dock::addrecentitems() {
    :;
}
# }}} m dock addrecentitems

# {{{ m dock prune
# @cmd removes all apps from dock
dock::prune() {
    :;
}
# }}} m dock prune
# }} m dock

# {{ m finder
# @cmd Manage finder properties
finder() {
    :;
}

# {{{ m finder showhiddenfiles
# @cmd manage hidden file visibitlity
# @arg enum[YES|NO]
finder::showhiddenfiles() {
    :;
}
# }}} m finder showhiddenfiles

# {{{ m finder showextensions
# @cmd manage file extension visibitlity
# @arg enum[YES|NO]
finder::showextensions() {
    :;
}
# }}} m finder showextensions

# {{{ m finder showdesktop
# @cmd manage desktop status
# @arg enum[YES|NO]
finder::showdesktop() {
    :;
}
# }}} m finder showdesktop

# {{{ m finder showpath
# @cmd manage current opened folder path on the top bar of the Finder window
# @arg enum[YES|NO]
finder::showpath() {
    :;
}
# }}} m finder showpath
# }} m finder

# {{ m firewall
# @cmd Manage firewall
firewall() {
    :;
}

# {{{ m firewall status
# @cmd Show status
firewall::status() {
    :;
}
# }}} m firewall status

# {{{ m firewall enable
# @cmd Enable firewall
firewall::enable() {
    :;
}
# }}} m firewall enable

# {{{ m firewall disable
# @cmd Disable firewall
firewall::disable() {
    :;
}
# }}} m firewall disable

# {{{ m firewall list
# @cmd List applications handled by firewall
firewall::list() {
    :;
}
# }}} m firewall list

# {{{ m firewall add
# @cmd Add app to firewall
firewall::add() {
    :;
}
# }}} m firewall add

# {{{ m firewall remove
# @cmd Remove app to firewall
firewall::remove() {
    :;
}
# }}} m firewall remove
# }} m firewall

# {{ m flightmode
# @cmd Manage flightmode
# @arg enum[on|off]
flightmode() {
    :;
}
# }} m flightmode

# {{ m gatekeeper
# @cmd Manage gatekeeper (security for apps)
gatekeeper() {
    :;
}

# {{{ m gatekeeper status
# @cmd gatekeeper status
gatekeeper::status() {
    :;
}
# }}} m gatekeeper status

# {{{ m gatekeeper list
# @cmd list rules
gatekeeper::list() {
    :;
}
# }}} m gatekeeper list

# {{{ m gatekeeper enable
# @cmd enable gatekeeper or a rule
# @arg rule
gatekeeper::enable() {
    :;
}
# }}} m gatekeeper enable

# {{{ m gatekeeper disable
# @cmd disable gatekeeper or a rule
# @arg rule
gatekeeper::disable() {
    :;
}
# }}} m gatekeeper disable

# {{{ m gatekeeper create
# @cmd create a rule for an application
# @arg rulename
# @arg path!
gatekeeper::create() {
    :;
}
# }}} m gatekeeper create
# }} m gatekeeper

# {{ m group
# @cmd Manage groups
group() {
    :;
}

# {{{ m group list
# @cmd list of groups
group::list() {
    :;
}
# }}} m group list

# {{{ m group info
# @cmd display group information
# @arg group![`_module_os_group`]
group::info() {
    :;
}
# }}} m group info

# {{{ m group adduser
# @cmd add an user to a specific group
# @arg user![`_module_os_user`]
# @arg group![`_module_os_group`]
group::adduser() {
    :;
}
# }}} m group adduser

# {{{ m group removeuser
# @cmd remove an user from a specific group
# @arg user![`_module_os_user`]
# @arg group![`_module_os_group`]
group::removeuser() {
    :;
}
# }}} m group removeuser

# {{{ m group ismember
# @cmd show if the user is a member of a specific group
# @arg user![`_module_os_user`]
# @arg group![`_module_os_group`]
group::ismember() {
    :;
}
# }}} m group ismember
# }} m group

# {{ m hostname
# @cmd Dislays or set the computre's hostname
hostname() {
    :;
}
# }} m hostname

# {{ m info
# @cmd print macOS operating system version information
info() {
    :;
}
# }} m info

# {{ m itunes
# @cmd itunes command line control
itunes() {
    :;
}

# {{{ m itunes status
# @cmd show status, current artist and track
itunes::status() {
    :;
}
# }}} m itunes status

# {{{ m itunes play
# @cmd start playing iTunes
itunes::play() {
    :;
}
# }}} m itunes play

# {{{ m itunes pause
# @cmd pause iTunes
itunes::pause() {
    :;
}
# }}} m itunes pause

# {{{ m itunes next
# @cmd go to the next track
itunes::next() {
    :;
}
# }}} m itunes next

# {{{ m itunes prev
# @cmd go to the previous track
itunes::prev() {
    :;
}
# }}} m itunes prev

# {{{ m itunes mute
# @cmd mute volume
itunes::mute() {
    :;
}
# }}} m itunes mute

# {{{ m itunes unmute
# @cmd mute volume
itunes::unmute() {
    :;
}
# }}} m itunes unmute

# {{{ m itunes vol
# @cmd increase and decrease volume
# @arg enum[up|down]
itunes::vol() {
    :;
}
# }}} m itunes vol

# {{{ m itunes stop
# @cmd stop iTune
itunes::stop() {
    :;
}
# }}} m itunes stop

# {{{ m itunes quit
# @cmd quit iTunes
itunes::quit() {
    :;
}
# }}} m itunes quit
# }} m itunes

# {{ m localhost
# @cmd Manage localhost file
localhost() {
    :;
}

# {{{ m localhost ls
# @cmd list records from localhost file
localhost::ls() {
    :;
}
# }}} m localhost ls

# {{{ m localhost add
# @cmd add record to localhost file
# @arg ip!
# @arg domain!
localhost::add() {
    :;
}
# }}} m localhost add

# {{{ m localhost remove
# @cmd remove record from localhost file
# @arg domain!
localhost::remove() {
    :;
}
# }}} m localhost remove
# }} m localhost

# {{ m lock
# @cmd Lock session
lock() {
    :;
}
# }} m lock

# {{ m network
# @cmd Manage network interfaces and locations
network() {
    :;
}

# {{{ m network list
# @cmd list network interfaces
network::list() {
    :;
}
# }}} m network list

# {{{ m network location
# @cmd get or set the current location
network::location() {
    :;
}

# {{{{ m network location list
# @cmd list locations
# @alias ls
network::location::list() {
    :;
}
# }}}} m network location list

# {{{{ m network location create
# @cmd create a location
# @arg value!
network::location::create() {
    :;
}
# }}}} m network location create

# {{{{ m network location delete
# @cmd delete a location
# @arg value!
network::location::delete() {
    :;
}
# }}}} m network location delete

# {{{{ m network location switch
# @cmd switch location
# @arg value!
network::location::switch() {
    :;
}
# }}}} m network location switch
# }}} m network location
# }} m network

# {{ m nosleep
# @cmd Prevent sleeping
nosleep() {
    :;
}

# {{{ m nosleep until
# @cmd until timeout, pid or specified script ends
nosleep::until() {
    :;
}
# }}} m nosleep until
# }} m nosleep

# {{ m notification
# @cmd Manage the Notification Settings
notification() {
    :;
}

# {{{ m notification showcenter
# @cmd enable or disable notification center
# @arg enum[YES|NO]
notification::showcenter() {
    :;
}
# }}} m notification showcenter
# }} m notification

# {{ m ntp
# @cmd Manage the network time service
ntp() {
    :;
}

# {{{ m ntp status
# @cmd status of the network time service
ntp::status() {
    :;
}
# }}} m ntp status

# {{{ m ntp enable
# @cmd enable clock to use network time
ntp::enable() {
    :;
}
# }}} m ntp enable

# {{{ m ntp disable
# @cmd disable clock to use network time
ntp::disable() {
    :;
}
# }}} m ntp disable

# {{{ m ntp set
# @cmd set network time server
# @arg server!
ntp::set() {
    :;
}
# }}} m ntp set
# }} m ntp

# {{ m printer
# @cmd Display information about the printers
printer() {
    :;
}

# {{{ m printer settings
# @cmd Display printer settings
printer::settings() {
    :;
}
# }}} m printer settings

# {{{ m printer name
# @cmd Display printer names on system
printer::name() {
    :;
}
# }}} m printer name

# {{{ m printer queue
# @cmd Display items in printer queue on system
printer::queue() {
    :;
}
# }}} m printer queue

# {{{ m printer drivers
# @cmd Display all printer drivers
printer::drivers() {
    :;
}
# }}} m printer drivers

# {{{ m printer web
# @cmd Enable and show web interface
printer::web() {
    :;
}
# }}} m printer web
# }} m printer

# {{ m restart
# @cmd Restart computer
restart() {
    :;
}
# }} m restart

# {{ m safeboot
# @cmd Manage safeboot
# @arg enum[status|enable|disable]
safeboot() {
    :;
}
# }} m safeboot

# {{ m screensaver
# @cmd Launch and manage the screensaver properties
screensaver() {
    :;
}
# }} m screensaver

# {{ m service
# @cmd Manage services
# @flag --status-all    list all services
# @flag --list          list all services
# @option --ls <srv>    show information about a specific service
service() {
    :;
}

# {{{ m service start
# @cmd start a service
# @arg srv!
service::start() {
    :;
}
# }}} m service start

# {{{ m service stop
# @cmd stop a service
# @arg srv!
service::stop() {
    :;
}
# }}} m service stop

# {{{ m service load
# @cmd load a service
# @arg srv!
service::load() {
    :;
}
# }}} m service load

# {{{ m service unload
# @cmd unload a service
# @arg srv!
service::unload() {
    :;
}
# }}} m service unload
# }} m service

# {{ m shutdown
# @cmd Shutdown computer
shutdown() {
    :;
}
# }} m shutdown

# {{ m sleep
# @cmd Sleep computer
sleep() {
    :;
}
# }} m sleep

# {{ m timezone
# @cmd Manage timezone
timezone() {
    :;
}

# {{{ m timezone list
# @cmd list available timezones
timezone::list() {
    :;
}
# }}} m timezone list

# {{{ m timezone set
# @cmd set timezone
timezone::set() {
    :;
}
# }}} m timezone set
# }} m timezone

# {{ m touchbar
# @cmd Manage touchbar
touchbar() {
    :;
}

# {{{ m touchbar reset
# @cmd reset the touchbar
touchbar::reset() {
    :;
}
# }}} m touchbar reset
# }} m touchbar

# {{ m trash
# @cmd Manage the trash
trash() {
    :;
}

# {{{ m trash status
# @cmd get trash info
trash::status() {
    :;
}
# }}} m trash status

# {{{ m trash clean
# @cmd clean trash
trash::clean() {
    :;
}
# }}} m trash clean
# }} m trash

# {{ m update
# @cmd Manage macOS updates
update() {
    :;
}

# {{{ m update list
# @cmd list available updates
update::list() {
    :;
}
# }}} m update list

# {{{ m update install
# @cmd install update(s)
update::install() {
    :;
}
# }}} m update install
# }} m update

# {{ m user
# @cmd Manage users
user() {
    :;
}

# {{{ m user list
# @cmd list users
# @alias ls
user::list() {
    :;
}
# }}} m user list

# {{{ m user info
# @cmd display user information
# @arg user!
user::info() {
    :;
}
# }}} m user info

# {{{ m user create
# @cmd create specified user (interactive)
user::create() {
    :;
}
# }}} m user create

# {{{ m user delete
# @cmd delete specified user
# @arg user!
user::delete() {
    :;
}
# }}} m user delete
# }} m user

# {{ m volume
# @cmd Manage the sound's volume
volume() {
    :;
}
# }} m volume

# {{ m vpn
# @cmd Basic vpn operations, start,stop, status, list
vpn() {
    :;
}

# {{{ m vpn list
# @cmd list VPN connections
# @alias ls
vpn::list() {
    :;
}
# }}} m vpn list

# {{{ m vpn start
# @cmd start vpn connection
# @arg vpn!
# @arg user!
# @arg pass!
# @arg secret!
vpn::start() {
    :;
}
# }}} m vpn start

# {{{ m vpn stop
# @cmd stop vpn connection
# @arg vpn!
vpn::stop() {
    :;
}
# }}} m vpn stop

# {{{ m vpn status
# @cmd status vpn connection
# @arg vpn!
vpn::status() {
    :;
}
# }}} m vpn status
# }} m vpn

# {{ m wallpaper
# @cmd Set the wallpaper
wallpaper() {
    :;
}
# }} m wallpaper

# {{ m wifi
# @cmd Manage the wifi
wifi() {
    :;
}

# {{{ m wifi status
# @cmd wifi status
wifi::status() {
    :;
}
# }}} m wifi status

# {{{ m wifi scan
# @cmd scan wifi
wifi::scan() {
    :;
}
# }}} m wifi scan

# {{{ m wifi showpassword
# @cmd show wifi network password
# @arg essid
wifi::showpassword() {
    :;
}
# }}} m wifi showpassword

# {{{ m wifi list
# @cmd list known networks
# @alias ls
wifi::list() {
    :;
}
# }}} m wifi list

# {{{ m wifi forget
# @cmd forget a network
# @arg essid!
wifi::forget() {
    :;
}
# }}} m wifi forget

# {{{ m wifi history
# @cmd wifi connection history
wifi::history() {
    :;
}
# }}} m wifi history

# {{{ m wifi off
# @cmd turn off your wifi
wifi::off() {
    :;
}
# }}} m wifi off

# {{{ m wifi on
# @cmd turn on your wifi
wifi::on() {
    :;
}
# }}} m wifi on

# {{{ m wifi connect
# @cmd join a wifi network
# @arg essid!
# @arg password
wifi::connect() {
    :;
}
# }}} m wifi connect
# }} m wifi

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

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"