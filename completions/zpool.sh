#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ zpool create
# @cmd Creates a new storage pool containing the virtual devices specified on the command line.
# @flag -d                                   Do not enable any features on the new pool.
# @flag -f                                   Forces use of vdevs, even if they appear in use or specify a conflicting replication level.
# @option -m <mountpoint>                    Sets the mount point for the root dataset.
# @flag -n                                   Displays the configuration that would be used without actually creating the pool.
# @option -o <feature@feature=value>         Sets the given pool feature.
# @option -O <file-system-property=value>    Sets the given file system properties in the root file system of the pool.
# @option -R <root>                          Equivalent to -o cachefile=none -o altroot=root
# @option -t <tname>                         Sets the in-core pool name to tname while the on-disk name will be the name specified as pool.
# @arg pool[`_choice_pool`]
# @arg vdev*
create() {
    :;
}
# }} zpool create

# {{ zpool initialize
# @cmd Begins initializing by writing to all unallocated regions on the specified devices, or all eligible devices in the pool if no individual devices are specified.
# @flag -c --cancel     Cancel initializing on the specified devices, or all eligible devices if none are specified.
# @flag -s --suspend    Suspend initializing on the specified devices, or all eligible devices if none are specified.
# @flag -w --wait       Wait until the devices have finished initializing before returning.
# @arg pool[`_choice_pool`]
# @arg device*
initialize() {
    :;
}
# }} zpool initialize

# {{ zpool destroy
# @cmd Destroys the given pool, freeing up any devices for other use.
# @flag -f    Forcefully unmount all active datasets.
# @arg pool[`_choice_pool`]
destroy() {
    :;
}
# }} zpool destroy

# {{ zpool labelclear
# @cmd Removes ZFS label information from the specified device.
# @flag -f    Treat exported or foreign devices as inactive.
# @arg device
labelclear() {
    :;
}
# }} zpool labelclear

# {{ zpool attach
# @cmd Increases or decreases redundancy by attaching or detaching a device on an existing vdev (virtual device).
# @alias detach
# @flag -f                       Forces use of new_device, even if it appears to be in use.
# @option -o <property=value>    Sets the given pool properties.
# @flag -s                       The new_device is reconstructed sequentially to restore redundancy as quickly as possible.
# @flag -w                       Waits until new_device has finished resilvering before returning.
# @arg pool[`_choice_pool`]
# @arg device[`_choice_pool_udev`]
# @arg new_device
attach() {
    :;
}
# }} zpool attach

# {{ zpool add
# @cmd Adds the specified virtual devices to the given pool, or removes the specified device from the pool.
# @alias remove
# @flag -f                       Forces use of vdevs, even if they appear in use or specify a conflicting replication level.
# @flag -g                       Display vdev, GUIDs instead of the normal device names.
# @flag -L                       Display real paths for vdevs resolving all symbolic links.
# @flag -n                       Displays the configuration that would be used without actually adding the vdevs.
# @flag -P                       Display real paths for vdevs instead of only the last component of the path.
# @option -o <property=value>    Sets the given pool properties.
# @arg pool[`_choice_pool`]
# @arg vdev*[`_choice_pool_udev`]
add() {
    :;
}
# }} zpool add

# {{ zpool replace
# @cmd Replaces an existing device (which may be faulted) with a new one.
# @flag -f                       Forces use of new-device, even if it appears to be in use.
# @option -o <property=value>    Sets the given pool properties.
# @flag -s                       The new-device is reconstructed sequentially to restore redundancy as quickly as possible.
# @flag -w                       Waits until the replacement has completed before returning.
# @arg pool[`_choice_pool`]
# @arg device[`_choice_pool_udev`]
# @arg new-device
replace() {
    :;
}
# }} zpool replace

# {{ zpool split
# @cmd Creates a new pool by splitting all mirrors in an existing pool (which decreases its redundancy).
# @flag -g                       Display vdev GUIDs instead of the normal device names.
# @flag -L                       Display real paths for vdevs resolving all symbolic links.
# @flag -l                       Indicates that this command will request encryption keys for all encrypted datasets it attempts to mount as it is bringing the new pool online.
# @flag -n                       Do a dry-run ("No-op") split: do not actually perform it.
# @flag -P                       Display full paths for vdevs instead of only the last component of the path.
# @option -o <property=value>    Sets the specified property for newpool.
# @option -R <root>              Set altroot for newpool to root and automatically import it.
# @arg pool[`_choice_pool`]
# @arg newpool
# @arg device*[`_choice_pool_udev`]
split() {
    :;
}
# }} zpool split

# {{ zpool list
# @cmd Lists the given pools along with a health status and space usage.
# @flag -g                 Display vdev GUIDs instead of the normal device names.
# @flag -H                 Scripted mode.
# @option -o <property>    Comma-separated list of properties to display.
# @flag -L                 Display real paths for vdevs resolving all symbolic links.
# @flag -p                 Display numbers in parsable (exact) values.
# @flag -P                 Display full paths for vdevs instead of only the last component of the path.
# @option -T <u|d>         Display a time stamp.
# @flag -v                 Verbose statistics.
# @arg pool*[`_choice_pool`]
# @arg interval
# @arg count
list() {
    :;
}
# }} zpool list

# {{ zpool get
# @cmd Retrieves the given list of properties (or all properties if all is used) for the specified storage pool(s).
# @arg property[`_choice_get_property`]
# @arg pool[`_choice_pool`]
get() {
    :;
}
# }} zpool get

# {{ zpool status
# @cmd Displays the detailed health status for the given pools.
# @option -c <SCRIPT1[,SCRIPT2]…>    Run a script (or scripts) on each vdev and include the output as a new column in the zpool status output.
# @flag -i                           Display vdev initialization status.
# @flag -g                           Display vdev GUIDs instead of the normal device names These GUIDs can be used in place of device names for the zpool detach/offline/remove/replace commands.
# @flag -L                           Display real paths for vdevs resolving all symbolic links.
# @flag -p                           Display numbers in parsable (exact) values.
# @flag -P                           Display full paths for vdevs instead of only the last component of the path.
# @flag -D                           Display a histogram of deduplication statistics, showing the allocated (physically present on disk) and referenced (logically referenced in the pool) block counts and sizes by reference count.
# @flag -s                           Display the number of leaf VDEV slow IOs.
# @flag -t                           Display vdev TRIM status.
# @option -T <u|d>                   Display a time stamp.
# @flag -v                           Displays verbose data error information, printing out a complete list of all data errors since the last complete pool scrub.
# @flag -x                           Only display status for pools that are exhibiting errors or are otherwise unavailable.
# @arg pool*[`_choice_pool`]
# @arg interval
# @arg count
status() {
    :;
}
# }} zpool status

# {{ zpool iostat
# @cmd Displays logical I/O statistics for the given pools/vdevs.
# @option -c <SCRIPT1[,SCRIPT2]…>    Run a script (or scripts) on each vdev and include the output as a new column in the zpool iostat output.
# @option -T <u|d>                   Display a time stamp.
# @flag -g                           Display vdev GUIDs instead of the normal device names.
# @flag -H                           Scripted mode.
# @flag -L                           Display real paths for vdevs resolving all symbolic links.
# @flag -n                           Print headers only once when passed
# @flag -p                           Display numbers in parsable (exact) values.
# @flag -P                           Display full paths for vdevs instead of only the last component of the path.
# @flag -r                           Print request size histograms for the leaf vdev's I/O.
# @flag -v                           Verbose statistics Reports usage statistics for individual vdevs within the pool, in addition to the pool-wide statistics.
# @flag -y                           Normally the first line of output reports the statistics since boot: suppress it.
# @flag -w                           Display latency histograms: total_wait  Total I/O time (queuing + disk I/O time).
# @flag -l                           Include average latency statistics: total_wait  Average total I/O time (queuing + disk I/O time).
# @flag -q                           Include active queue statistics.
# @arg pool[`_choice_pool`]
# @arg interval
# @arg count
iostat() {
    :;
}
# }} zpool iostat

# {{ zpool events
# @cmd Lists all recent events generated by the ZFS kernel modules.
# @flag -c    Clear all previous events.
# @flag -f    Follow mode.
# @flag -H    Scripted mode.
# @flag -v    Print the entire payload for each event.
# @arg pool[`_choice_pool`]
events() {
    :;
}
# }} zpool events

# {{ zpool history
# @cmd Displays the command history of the specified pool(s) or all pools if no pool is specified.
# @flag -i    Displays internally logged ZFS events in addition to user initiated events.
# @flag -l    Displays log records in long format, which in addition to standard format includes, the user name, the hostname, and the zone in which the operation was performed.
# @arg pool*[`_choice_pool`]
history() {
    :;
}
# }} zpool history

# {{ zpool scrub
# @cmd Begins a scrub or resumes a paused scrub.
# @flag -s    Stop scrubbing.
# @flag -p    Pause scrubbing.
# @flag -w    Wait until scrub has completed before returning.
# @arg pool*[`_choice_pool`]
scrub() {
    :;
}
# }} zpool scrub

# {{ zpool checkpoint
# @cmd Checkpoints the current state of pool, which can be later restored by zpool import --rewind-to-checkpoint.
# @flag -d --discard    Discards an existing checkpoint from pool.
# @flag -w --wait       Waits until the checkpoint has finished being discarded before returning.
# @arg pool[`_choice_pool`]
checkpoint() {
    :;
}
# }} zpool checkpoint

# {{ zpool trim
# @cmd Initiates an immediate on-demand TRIM operation for all of the free space in a pool.
# @flag -d --secure           Causes a secure TRIM to be initiated.
# @option -r --rate <rate>    Controls the rate at which the TRIM operation progresses.
# @flag -c --cancel           Cancel trimming on the specified devices, or all eligible devices if none are specified.
# @flag -s --suspend          Suspend trimming on the specified devices, or all eligible devices if none are specified.
# @flag -w --wait             Wait until the devices are done being trimmed before returning.
# @arg pool[`_choice_pool`]
# @arg device*[`_choice_pool_udev`]
trim() {
    :;
}
# }} zpool trim

# {{ zpool sync
# @cmd This command forces all in-core dirty data to be written to the primary pool storage and not the ZIL.
# @arg pool*[`_choice_pool`]
sync() {
    :;
}
# }} zpool sync

# {{ zpool upgrade
# @cmd Manage the on-disk format version of storage pools.
# @flag -a                Enables all supported features (from specified compatibility sets, if any) on all pools.
# @option -V <version>    Upgrade to the specified legacy version.
# @arg pool[`_choice_pool`]
upgrade() {
    :;
}
# }} zpool upgrade

# {{ zpool wait
# @cmd Waits until all background activity of the given types has ceased in the given pool.
# @flag -H            Scripted mode.
# @flag -p            Display numbers in parsable (exact) values.
# @option -T <u|d>    Display a time stamp.
# @arg pool[`_choice_pool`]
# @arg interval
wait() {
    :;
}
# }} zpool wait

# {{ zpool offline
# @cmd Takes the specified physical device offline or brings it online.
# @alias online
# @flag -f    Force fault.
# @flag -t    Temporary.
# @arg pool[`_choice_pool`]
# @arg device*[`_choice_pool_udev`]
offline() {
    :;
}
# }} zpool offline

# {{ zpool resilver
# @cmd Starts a resilver.
# @arg pool*[`_choice_pool`]
resilver() {
    :;
}
# }} zpool resilver

# {{ zpool reopen
# @cmd Reopen all the vdevs associated with the pool.
# @flag -n    Do not restart an in-progress scrub operation.
# @arg pool*[`_choice_pool`]
reopen() {
    :;
}
# }} zpool reopen

# {{ zpool clear
# @cmd Clears device errors in a pool.
# @arg pool[`_choice_pool`]
# @arg device*[`_choice_pool_udev`]
clear() {
    :;
}
# }} zpool clear

# {{ zpool import
# @cmd Make disks containing ZFS storage pools available for use on the system.
# @option -c <cachefile>     Reads configuration from the given cachefile that was created with the cachefile pool property.
# @option -d <dir|device>    Uses device or searches for devices or files in dir.
# @flag -D                   Lists destroyed pools only.
# @flag -a                   Searches for and imports all pools found.
import() {
    :;
}
# }} zpool import

# {{ zpool export
# @cmd Exports the given pools from the system.
# @flag -a    Exports all pools imported on the system.
# @flag -f    Forcefully unmount all datasets, and allow export of pools with active shared spares.
# @arg pool*[`_choice_pool`]
export() {
    :;
}
# }} zpool export

# {{ zpool reguid
# @cmd Generates a new unique identifier for the pool.
# @arg pool[`_choice_pool`]
reguid() {
    :;
}
# }} zpool reguid

# {{ zpool set
# @cmd Sets the given property on the specified pool.
# @arg property-value <property=value>
# @arg pool[`_choice_pool`]
set() {
    :;
}
# }} zpool set

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_pool() {
    zpool list -o name,comment -H | sed 's/\t-//'
}

_choice_pool_udev() {
    zpool list -Hv $argc_pool | \
    sed -n 's/^\t\([^\t]\+\).*$/\1/p' |\
    grep -v '^\(spare\|log\|cache\|mirror\|raidz\.\?\)'
}

_choice_get_property() {
    _argc_util_mode_parts ,
    _choice_get_property_value
}

_choice_get_property_value() {
    echo -e "name\tPool full name"
    echo -e "property\tProperty"
    echo -e "value\tProperty value"
    echo -e "source\tProperty value origin"
}

command eval "$(argc --argc-eval "$0" "$@")"