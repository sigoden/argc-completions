#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg enum[touch|sleepnow|displaysleepnow|boot]

# {{ pmset -a
# @cmd Settings for all
# @arg getting[`_choice_getting`]
# @arg value
-a() {
    :;
}
# }} pmset -a

# {{ pmset -b
# @cmd Settings for battery
# @arg getting[`_choice_getting`]
# @arg value
-b() {
    :;
}
# }} pmset -b

# {{ pmset -c
# @cmd Settings for charger
# @arg getting[`_choice_getting`]
# @arg value
-c() {
    :;
}
# }} pmset -c

# {{ pmset -u
# @cmd Settings for UPS
# @arg getting[`_choice_getting`]
# @arg value
-u() {
    :;
}
# }} pmset -u

# {{ pmset -g
# @cmd Display settings
# @arg setting[`_choice_setting`]
# @arg value
-g() {
    :;
}
# }} pmset -g

# {{ pmset schedule
# @cmd
# @arg enum[cancel|cancelall]
# @arg type!
# @arg date_time!
# @arg owner
schedule() {
    :;
}
# }} pmset schedule

# {{ pmset repeat
# @cmd
# @arg type!
# @arg time!
repeat() {
    :;
}
# }} pmset repeat

# {{ pmset relative
# @cmd
# @arg enum[wake|poweron]
# @arg seconds!
relative() {
    :;
}
# }} pmset relative

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

command eval "$(argc --argc-eval "$0" "$@")"