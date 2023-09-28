_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# \-a - Settings for all
# \-b - Settings for battery
# \-c - Settings for charger
# \-u - Settings for UPS
# \-g - Display settings
# schedule {cancel|cancelall} <type> <date_time> [owner]
# repeat <type> <time>
# relative {wake|poweron} <seconds>
EOF
}

_patch_table() {
    if [[ "$*" == "pmset" ]]; then
        _patch_table_edit_arguments ';;' 'enum;[touch|sleepnow|displaysleepnow|boot]'

    elif [[ "$*" == "pmset -a" ]] \
      || [[ "$*" == "pmset -b" ]] \
      || [[ "$*" == "pmset -c" ]] \
      || [[ "$*" == "pmset -u" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'getting;[`_choice_getting`]' 'value'

    elif [[ "$*" == "pmset -g" ]]; then
        _patch_table_edit_arguments ';;' 'setting;[`_choice_setting`]' 'value'

    else
        cat
    fi
}

_choice_getting() {
    cat <<-'EOF'
live	displays the settings currently in use.
custom	displays custom settings for all power sources.
cap	displays which power management features the machine supports.
sched	displays scheduled startup/wake and shutdown/sleep events.
ups	displays UPS emergency thresholds.
ps	displays status of UPSs.
batt	displays status of batteries.
pslog	displays an ongoing log of power source (battery and UPS) state.
rawlog	displays an ongoing log of battery state as read directly from battery.
therm	shows thermal conditions that affect CPU speed. Not available on all platforms.
thermlog	shows a log of thermal notifications that affect CPU speed. Not available on all platforms.
assertions	displays a summary of power assertions. Assertions may prevent system sleep or display sleep.
assertionslog	shows a log of assertion creations and releases. Available 10.6 and later.
sysload	displays the "system load advisory" - a summary of system activity available from the IOGetSystemLoadAdvisory API.
sysloadlog	displays an ongoing log of lives changes to the system load advisory. Available 10.6 and later.
ac	will display details about an attached AC power adapter. Only supported for MacBook and MacBook Pro.
adapter	will display details about an attached AC power adapter. Only supported for MacBook and MacBook Pro.
log	displays a history of sleeps, wakes, and other power management events. This log is for admin & debugging purposes.
uuid	displays the currently active sleep/wake UUID; used within OS X to correlate sleep/wake activity within one sleep cycle.
uuidlog	displays the currently active sleep/wake UUID, and prints a new UUID as they're set by the system.
history	Prints a timeline of system sleeplwake UUIDs, when enabled with boot-arg io=0x3000000.
historydetailed	Prints driver-level timings for a sleep/wake. Pass a UUID as an argument.
powerstate	Prints the current power states for I/O Kit drivers.
powerstatelog	Periodically prints the power state residency times for some drivers.
stats	Prints the counts for number sleeps and wakes system has gone thru since boot.
systemstate	Prints the current power state of the system and available capabilites.
everything	Prints output from every argument under the GETTING header.
EOF
}

_choice_setting() {
    cat <<-'EOF'
displaysleep	display sleep timer; replaces 'dim' argument in 10.4 (value in minutes, or 0 to disable)
disksleep	disk spindown timer; replaces 'spindown' argument in 10.4 (value in minutes, or 0 to disable)
sleep	system sleep timer (value in minutes, or 0 to disable)
womp	wake on ethernet magic packet (value = 0/1). Same as "Wake for network access" in System Settings.
ring	wake on modem ring (value = 0/1)
powernap	enable/disable Power Nap on supported machines (value = 0/1)
proximitywake	On supported systems, this option controls system wake from sleep based on proximity of devices using same iCloud id. (value = 0/1)
autorestart	automatic restart on power loss (value = 0/1)
lidwake	wake the machine when the laptop lid (or clamshell) is opened (value = 0/1)
acwake	wake the machine when power source (AC/battery) is changed (value = 0/1)
lessbright	slightly turn down display brightness when switching to this power source (value = 0/1)
halfdim	display sleep will use an intermediate half-brightness state between full brightness and fully off  (value = 0/1)
sms	use Sudden Motion Sensor to park disk heads on sudden changes in G force (value = 0/1)
hibernatemode	change hibernation mode. Please use caution. (value = integer)
hibernatefile	change hibernation image file location.
ttyskeepawake	prevent idle system sleep when any tty (e.g. remote login session) is 'active'. 
networkoversleep	this setting affects how OS X networking presents shared network services during system sleep.
destroyfvkeyonstandby	Destroy File Vault Key when going to standby mode. 
EOF
}
