#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ tmutil setdestination
# @cmd Configure a local HFS+ or APFS volume, AFP share, or SMB share as a backup destination.
setdestination() {
    :;
}
# }} tmutil setdestination

# {{ tmutil destinationinfo
# @cmd Print information about destinations currently configured for use with Time Machine.
destinationinfo() {
    :;
}
# }} tmutil destinationinfo

# {{ tmutil setquota
# @cmd Set the quota for the destination with the specified unique identifier to the specified number of gigabytes.
setquota() {
    :;
}
# }} tmutil setquota

# {{ tmutil removedestination
# @cmd Remove the destination with the specified unique identifier from the Time Machine configuration.
removedestination() {
    :;
}
# }} tmutil removedestination

# {{ tmutil addexclusion
# @cmd Configure an exclusion that tells Time Machine not to back up a file, directory, or volume during future backups.
addexclusion() {
    :;
}
# }} tmutil addexclusion

# {{ tmutil removeexclusion
# @cmd Configure Time Machine to back up a file, directory, or volume during future backups.
removeexclusion() {
    :;
}
# }} tmutil removeexclusion

# {{ tmutil isexcluded
# @cmd Determine if a file, directory, or volume are excluded from Time Machine backups.
isexcluded() {
    :;
}
# }} tmutil isexcluded

# {{ tmutil enable
# @cmd Turn on automatic backups.
enable() {
    :;
}
# }} tmutil enable

# {{ tmutil disable
# @cmd Turn off automatic backups.
disable() {
    :;
}
# }} tmutil disable

# {{ tmutil startbackup
# @cmd Begin a backup if one is not already running.
# @flag --auto           Run the backup in a mode similar to system-scheduled backups.
# @flag --block          Wait (block) until the backup is finished before exiting.
# @flag --rotation       Allow automatic destination rotation during the backup.
# @flag --destination    Perform the backup to the destination corresponding to the specified ID.
startbackup() {
    :;
}
# }} tmutil startbackup

# {{ tmutil stopbackup
# @cmd Cancel a backup currently in progress.
stopbackup() {
    :;
}
# }} tmutil stopbackup

# {{ tmutil compare
# @cmd Perform a backup diff.
# @flag -a    Compare all supported metadata.
# @flag -n    No metadata comparison.
# @flag -@    Compare extended attributes.
# @flag -c    Compare creation times.
# @flag -d    Compare file data forks.
# @flag -e    Compare ACLs.
# @flag -f    Compare file flags.
# @flag -g    Compare GIDs.
# @flag -m    Compare file modes.
# @flag -s    Compare sizes.
# @flag -t    Compare modification times.
# @flag -u    Compare UIDs.
# @flag -D    Limit traversal depth to depth levels from the beginning of iteration.
# @flag -E    Don't take exclusions into account when comparing items inside volumes.
# @flag -I    Ignore paths with a path component equal to name during iteration.
# @flag -U    Ignore logical volume identity (volume UUIDs) when directly comparing a local volume or volume store to a volume store.
# @flag -X    Print output in XML property list format.
compare() {
    :;
}
# }} tmutil compare

# {{ tmutil verifychecksums
# @cmd Compute a checksum of data contained within a backup and verify the result(s) against checksum information computed at the time of backup.
verifychecksums() {
    :;
}
# }} tmutil verifychecksums

# {{ tmutil restore
# @cmd Restore the item src, which is inside a backup, to the location dst.
restore() {
    :;
}
# }} tmutil restore

# {{ tmutil delete
# @cmd Deletes the backups with the specified timestamp from the backup volume mounted at the specified mountpoint.
delete() {
    :;
}
# }} tmutil delete

# {{ tmutil deleteinprogress
# @cmd Delete all in-progress backups for a machine directory.
deleteinprogress() {
    :;
}
# }} tmutil deleteinprogress

# {{ tmutil latestbackup
# @cmd List this computer's latest completed backup.
latestbackup() {
    :;
}
# }} tmutil latestbackup

# {{ tmutil listbackups
# @cmd List all of this computer's completed backups.
listbackups() {
    :;
}
# }} tmutil listbackups

# {{ tmutil machinedirectory
# @cmd Print the path to the current machine directory for this computer.
machinedirectory() {
    :;
}
# }} tmutil machinedirectory

# {{ tmutil calculatedrift
# @cmd Analyze the backups in an HFS machine directory and determine the amount of change between each.
calculatedrift() {
    :;
}
# }} tmutil calculatedrift

# {{ tmutil uniquesize
# @cmd Analyze the specified path in an HFS+ backup or path to an APFS backup and determine its unique size.
uniquesize() {
    :;
}
# }} tmutil uniquesize

# {{ tmutil inheritbackup
# @cmd Claim a machine directory or sparsebundle for use by the current machine.
inheritbackup() {
    :;
}
# }} tmutil inheritbackup

# {{ tmutil associatedisk
# @cmd Bind a volume store directory to the specified local disk, thereby reconfiguring the backup history.
associatedisk() {
    :;
}
# }} tmutil associatedisk

# {{ tmutil localsnapshot
# @cmd Create new local Time Machine snapshots of all APFS volumes included in the Time Machine backup.
localsnapshot() {
    :;
}
# }} tmutil localsnapshot

# {{ tmutil listlocalsnapshots
# @cmd List local Time Machine snapshots of the specified volume.
listlocalsnapshots() {
    :;
}
# }} tmutil listlocalsnapshots

# {{ tmutil listlocalsnapshotdates
# @cmd List the creation dates of all local Time Machine snapshots.
listlocalsnapshotdates() {
    :;
}
# }} tmutil listlocalsnapshotdates

# {{ tmutil deletelocalsnapshots
# @cmd If a date is specified, delete all local Time Machine snapshots on all mounted disks for the specified date (formatted YYYY-MM-DD-HHMMSS).
deletelocalsnapshots() {
    :;
}
# }} tmutil deletelocalsnapshots

# {{ tmutil thinlocalsnapshots
# @cmd Thin local Time Machine snapshots for the specified volume.
thinlocalsnapshots() {
    :;
}
# }} tmutil thinlocalsnapshots

command eval "$(argc --argc-eval "$0" "$@")"