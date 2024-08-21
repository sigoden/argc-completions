#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ diskutil list
# @cmd List the partitions of a disk
# @flag -plist    Return a property list
list() {
    :;
}
# }} diskutil list

# {{ diskutil info
# @cmd Get information on a specific disk or partition
# @flag -plist    Return a property list
# @flag -all      Process all disks
info() {
    :;
}
# }} diskutil info

# {{ diskutil listFilesystems
# @cmd List file systems available for formatting
listFilesystems() {
    :;
}
# }} diskutil listFilesystems

# {{ diskutil listClients
# @cmd List all current disk management clients
listClients() {
    :;
}
# }} diskutil listClients

# {{ diskutil activity
# @cmd Continuous log of system-wide disk arbitration
activity() {
    :;
}
# }} diskutil activity

# {{ diskutil umount
# @cmd Unmount a single volume
umount() {
    :;
}
# }} diskutil umount

# {{ diskutil unmountDisk
# @cmd Unmount an entire disk (all volumes)
unmountDisk() {
    :;
}
# }} diskutil unmountDisk

# {{ diskutil eject
# @cmd Eject a disk
eject() {
    :;
}
# }} diskutil eject

# {{ diskutil mount
# @cmd Mount a single volume
mount() {
    :;
}
# }} diskutil mount

# {{ diskutil mountDisk
# @cmd Mount an entire disk (all mountable volumes)
mountDisk() {
    :;
}
# }} diskutil mountDisk

# {{ diskutil enableJournal
# @cmd Enable HFS+ journaling on a mounted HFS+ volume
enableJournal() {
    :;
}
# }} diskutil enableJournal

# {{ diskutil disableJournal
# @cmd Disable HFS+ journaling on a mounted HFS+ volume
disableJournal() {
    :;
}
# }} diskutil disableJournal

# {{ diskutil moveJournal
# @cmd Move the HFS+ journal onto another volume
moveJournal() {
    :;
}
# }} diskutil moveJournal

# {{ diskutil enableOwnership
# @cmd Exact on-disk User/Group IDs on a mounted volume
enableOwnership() {
    :;
}
# }} diskutil enableOwnership

# {{ diskutil disableOwnership
# @cmd Ignore on-disk User/Group IDs on a mounted volume
disableOwnership() {
    :;
}
# }} diskutil disableOwnership

# {{ diskutil rename
# @cmd Rename a volume
rename() {
    :;
}
# }} diskutil rename

# {{ diskutil verifyVolume
# @cmd Verify the file system data structures of a volume
verifyVolume() {
    :;
}
# }} diskutil verifyVolume

# {{ diskutil repairVolume
# @cmd Repair the file system data structures of a volume
repairVolume() {
    :;
}
# }} diskutil repairVolume

# {{ diskutil verifyDisk
# @cmd Verify the components of a partition map of a disk
verifyDisk() {
    :;
}
# }} diskutil verifyDisk

# {{ diskutil repairDisk
# @cmd Repair the components of a partition map of a disk
repairDisk() {
    :;
}
# }} diskutil repairDisk

# {{ diskutil resetFusion
# @cmd Reset the components of a machine's Fusion Drive
resetFusion() {
    :;
}
# }} diskutil resetFusion

# {{ diskutil eraseDisk
# @cmd Erase an existing disk, removing all volumes
eraseDisk() {
    :;
}
# }} diskutil eraseDisk

# {{ diskutil eraseVolume
# @cmd Erase an existing volume
eraseVolume() {
    :;
}
# }} diskutil eraseVolume

# {{ diskutil reformat
# @cmd Erase an existing volume with same name and type
reformat() {
    :;
}
# }} diskutil reformat

# {{ diskutil eraseOptical
# @cmd Erase optical media (CD/RW, DVD/RW, etc.)
eraseOptical() {
    :;
}
# }} diskutil eraseOptical

# {{ diskutil zeroDisk
# @cmd Erase a disk, writing zeros to the media
zeroDisk() {
    :;
}
# }} diskutil zeroDisk

# {{ diskutil randomDisk
# @cmd Erase a disk, writing random data to the media
randomDisk() {
    :;
}
# }} diskutil randomDisk

# {{ diskutil secureErase
# @cmd Securely erase a disk or freespace on a volume
secureErase() {
    :;
}
# }} diskutil secureErase

# {{ diskutil partitionDisk
# @cmd (re)Partition a disk, removing all volumes
partitionDisk() {
    :;
}
# }} diskutil partitionDisk

# {{ diskutil addPartition
# @cmd Create a new partition to occupy free space
addPartition() {
    :;
}
# }} diskutil addPartition

# {{ diskutil splitPartition
# @cmd Split an existing partition into two or more
splitPartition() {
    :;
}
# }} diskutil splitPartition

# {{ diskutil mergePartitions
# @cmd Combine two or more existing partitions into one
mergePartitions() {
    :;
}
# }} diskutil mergePartitions

# {{ diskutil resizeVolume
# @cmd Resize a volume, increasing or decreasing its size
resizeVolume() {
    :;
}
# }} diskutil resizeVolume

# {{ diskutil appleRAID
# @cmd Perform additional verbs related to AppleRAID
appleRAID() {
    :;
}

# {{{ diskutil appleRAID list
# @cmd Display the current status of RAID sets
appleRAID::list() {
    :;
}
# }}} diskutil appleRAID list

# {{{ diskutil appleRAID create
# @cmd Create a RAID set on multiple disks
appleRAID::create() {
    :;
}
# }}} diskutil appleRAID create

# {{{ diskutil appleRAID delete
# @cmd Delete an existing RAID set
appleRAID::delete() {
    :;
}
# }}} diskutil appleRAID delete

# {{{ diskutil appleRAID repairMirror
# @cmd Repair a damaged RAID mirror set
appleRAID::repairMirror() {
    :;
}
# }}} diskutil appleRAID repairMirror

# {{{ diskutil appleRAID add
# @cmd Add a spare or member disk to an existing RAID
appleRAID::add() {
    :;
}
# }}} diskutil appleRAID add

# {{{ diskutil appleRAID remove
# @cmd Remove a spare or member disk from an existing RAID
appleRAID::remove() {
    :;
}
# }}} diskutil appleRAID remove

# {{{ diskutil appleRAID enable
# @cmd Convert a volume into a single disk RAID set
appleRAID::enable() {
    :;
}
# }}} diskutil appleRAID enable

# {{{ diskutil appleRAID update
# @cmd Update the settings of an existing RAID
appleRAID::update() {
    :;
}
# }}} diskutil appleRAID update
# }} diskutil appleRAID

# {{ diskutil coreStorage
# @cmd Perform additional verbs related to CoreStorage
coreStorage() {
    :;
}

# {{{ diskutil coreStorage list
# @cmd Show status of CoreStorage volumes
coreStorage::list() {
    :;
}
# }}} diskutil coreStorage list

# {{{ diskutil coreStorage info
# @cmd Get CoreStorage information by UUID or disk
coreStorage::info() {
    :;
}
# }}} diskutil coreStorage info

# {{{ diskutil coreStorage delete
# @cmd Delete a CoreStorage logical volume group
coreStorage::delete() {
    :;
}
# }}} diskutil coreStorage delete

# {{{ diskutil coreStorage unlockVolume
# @cmd Attach/mount a locked CoreStorage logical volume
coreStorage::unlockVolume() {
    :;
}
# }}} diskutil coreStorage unlockVolume
# }} diskutil coreStorage

# {{ diskutil apfs
# @cmd Perform additional verbs related to APFS
apfs() {
    :;
}

# {{{ diskutil apfs list
# @cmd Show status of all current APFS Containers
apfs::list() {
    :;
}
# }}} diskutil apfs list

# {{{ diskutil apfs listUsers
# @cmd List cryptographic users/keys of an APFS Volume
apfs::listUsers() {
    :;
}
# }}} diskutil apfs listUsers

# {{{ diskutil apfs listSnapshots
# @cmd List APFS Snapshots in a mounted APFS Volume
apfs::listSnapshots() {
    :;
}
# }}} diskutil apfs listSnapshots

# {{{ diskutil apfs listVolumeGroups
# @cmd List all current APFS Volume Group relationships
apfs::listVolumeGroups() {
    :;
}
# }}} diskutil apfs listVolumeGroups

# {{{ diskutil apfs convert
# @cmd Nondestructively convert from HFS to APFS
apfs::convert() {
    :;
}
# }}} diskutil apfs convert

# {{{ diskutil apfs create
# @cmd Create a new APFS Container with one APFS Volume
apfs::create() {
    :;
}
# }}} diskutil apfs create

# {{{ diskutil apfs createContainer
# @cmd Create a new empty APFS Container
apfs::createContainer() {
    :;
}
# }}} diskutil apfs createContainer

# {{{ diskutil apfs deleteContainer
# @cmd Delete an APFS Container and free or reformat disks
apfs::deleteContainer() {
    :;
}
# }}} diskutil apfs deleteContainer

# {{{ diskutil apfs resizeContainer
# @cmd Resize an APFS Container and its disk space usage
apfs::resizeContainer() {
    :;
}
# }}} diskutil apfs resizeContainer

# {{{ diskutil apfs addVolume
# @cmd Export a new APFS Volume from an APFS Container
apfs::addVolume() {
    :;
}
# }}} diskutil apfs addVolume

# {{{ diskutil apfs deleteVolume
# @cmd Remove an APFS Volume from its APFS Container
apfs::deleteVolume() {
    :;
}
# }}} diskutil apfs deleteVolume

# {{{ diskutil apfs deleteVolumeGroup
# @cmd Remove grouped APFS Volumes from its APFS Container
apfs::deleteVolumeGroup() {
    :;
}
# }}} diskutil apfs deleteVolumeGroup

# {{{ diskutil apfs eraseVolume
# @cmd Erase contents of, but keep, an APFS Volume
apfs::eraseVolume() {
    :;
}
# }}} diskutil apfs eraseVolume

# {{{ diskutil apfs changeVolumeRole
# @cmd Change the Role metadata flags of an APFS Volume
apfs::changeVolumeRole() {
    :;
}
# }}} diskutil apfs changeVolumeRole

# {{{ diskutil apfs unlockVolume
# @cmd Unlock an encrypted APFS Volume which is locked
apfs::unlockVolume() {
    :;
}
# }}} diskutil apfs unlockVolume

# {{{ diskutil apfs lockVolume
# @cmd Lock an encrypted APFS Volume (diskutil unmount)
apfs::lockVolume() {
    :;
}
# }}} diskutil apfs lockVolume

# {{{ diskutil apfs changePassphrase
# @cmd Change the passphrase of a cryptographic user
apfs::changePassphrase() {
    :;
}
# }}} diskutil apfs changePassphrase

# {{{ diskutil apfs setPassphraseHint
# @cmd Set or clear passphrase hint of a cryptographic user
apfs::setPassphraseHint() {
    :;
}
# }}} diskutil apfs setPassphraseHint

# {{{ diskutil apfs encryptVolume
# @cmd Enable FileVault security in background or instantly
apfs::encryptVolume() {
    :;
}
# }}} diskutil apfs encryptVolume

# {{{ diskutil apfs decryptVolume
# @cmd Disable FileVault security in background or instantly
apfs::decryptVolume() {
    :;
}
# }}} diskutil apfs decryptVolume

# {{{ diskutil apfs deleteSnapshot
# @cmd Remove an APFS Snapshot from an APFS Volume
apfs::deleteSnapshot() {
    :;
}
# }}} diskutil apfs deleteSnapshot

# {{{ diskutil apfs defragment
# @cmd Arm or check status or begin APFS defragmentation
apfs::defragment() {
    :;
}
# }}} diskutil apfs defragment

# {{{ diskutil apfs updatePreboot
# @cmd Update a macOS Volume's related APFS Preboot Volume
apfs::updatePreboot() {
    :;
}
# }}} diskutil apfs updatePreboot

# {{{ diskutil apfs syncPatchUsers
# @cmd Copy Volume Group crypto users System-to-Data role
apfs::syncPatchUsers() {
    :;
}
# }}} diskutil apfs syncPatchUsers
# }} diskutil apfs

# {{ diskutil image
# @cmd Perform additional verbs related to DiskImage
# @flag -v --verbose         Verbose output
# @flag --stdinpassphrase    Provide the passphrase for the disk image via stdin
# @flag --plist              Produce output in a plist format
# @flag -h --help            Show help information.
image() {
    :;
}

# {{{ diskutil image attach
# @cmd Attach a disk image as a device.
image::attach() {
    :;
}
# }}} diskutil image attach

# {{{ diskutil image info
# @cmd Print info regarding a disk image.
image::info() {
    :;
}
# }}} diskutil image info

# {{{ diskutil image create
# @cmd Create a disk image.
image::create() {
    :;
}
# }}} diskutil image create

# {{{ diskutil image resize
# @cmd Resize a given image to a specified size if applicable.
image::resize() {
    :;
}
# }}} diskutil image resize
# }} diskutil image

command eval "$(argc --argc-eval "$0" "$@")"