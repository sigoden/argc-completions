#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ btrfs balance
# @cmd Balance btrfs filesystem chunks across single or several devices.
balance() {
    :;
}

# {{{ btrfs balance cancel
# @cmd cancels a running or paused balance, the command will block and wait until the current blockgroup being processed completes
# @arg path!
balance::cancel() {
    :;
}
# }}} btrfs balance cancel

# {{{ btrfs balance pause
# @cmd pause running balance operation, this will store the state of the balance progress and used filters to the filesystem
# @arg path!
balance::pause() {
    :;
}
# }}} btrfs balance pause

# {{{ btrfs balance resume
# @cmd resume interrupted balance, the balance status must be stored on the filesystem from previous run, eg.
# @arg path!
balance::resume() {
    :;
}
# }}} btrfs balance resume

# {{{ btrfs balance start
# @cmd start the balance operation according to the specified filters, without any filters the data and metadata from the whole filesystem are moved.
# @option -d <filters>    act on data block groups, see FILTERS section for details about filters
# @option -m <filters>    act on metadata chunks, see FILTERS section for details about filters
# @option -s <filters>    act on system chunks (requires -f), see FILTERS section for details about filters.
# @flag -f                force a reduction of metadata integrity, eg.
# @flag --background      run the balance operation asynchronously in the background, uses fork(2) to start the process that calls the kernel ioctl
# @flag --bg              run the balance operation asynchronously in the background, uses fork(2) to start the process that calls the kernel ioctl
# @flag --enqueue         wait if there’s another exclusive operation running, otherwise continue
# @flag -v                (deprecated) alias for global -v option
# @arg path!
balance::start() {
    :;
}
# }}} btrfs balance start

# {{{ btrfs balance status
# @cmd Show status of running or paused balance.
# @flag -v    (deprecated) alias for global -v option
# @arg path!
balance::status() {
    :;
}
# }}} btrfs balance status
# }} btrfs balance

# {{ btrfs check
# @cmd Do off-line check on a btrfs filesystem.
# @flag -b --backup                         use the first valid set of backup roots stored in the superblock
# @flag --check-data-csum                   verify checksums of data blocks
# @option --chunk-root <bytenr>             use the given offset bytenr for the chunk tree root
# @option -E --subvol-extents <subvolid>    show extent state for the given subvolume
# @flag -p --progress                       indicate progress at various checking phases
# @flag -Q --qgroup-report                  verify qgroup accounting and compare against filesystem accounting
# @option -r --tree-root <bytenr>           use the given offset bytenr for the tree root
# @flag --readonly                          (default) run in read-only mode, this option exists to calm potential panic when users are going to run the checker
# @option -s --super <superblock>           use 'superblock’th superblock copy, valid values are 0, 1 or 2 if the respective superblock offset is within the device size
# @option --clear-space-cache <v1|v2>       completely wipe all free space cache of given type
# @flag --clear-ino-cache                   remove leftover items pertaining to the deprecated inode map feature
# @flag --repair                            enable the repair mode and attempt to fix problems where possible
# @flag --init-csum-tree                    create a new checksum tree and recalculate checksums in all files
# @flag --init-extent-tree                  build the extent tree from scratch
# @option --mode                            select mode of operation regarding memory and IO
# @flag --force                             allow work on a mounted filesystem.
# @arg device!
check() {
    :;
}
# }} btrfs check

# {{ btrfs device
# @cmd Manage devices managed by btrfs, including add/delete/scan and so on.
device() {
    :;
}

# {{{ btrfs device add
# @cmd Add device(s) to the filesystem identified by <path>.
# @flag -K --nodiscard    do not perform discard (TRIM) by default
# @flag -f --force        force overwrite of existing filesystem on the given disk(s)
# @flag --enqueue         wait if there’s another exclusive operation running, otherwise continue
# @arg device*
# @arg path!
device::add() {
    :;
}
# }}} btrfs device add

# {{{ btrfs device remove
# @cmd Remove device(s) from a filesystem identified by <path>
# @flag --enqueue    wait if there’s another exclusive operation running, otherwise continue
# @arg device-devid <<device>|<devid>...>
# @arg path!
device::remove() {
    :;
}
# }}} btrfs device remove

# {{{ btrfs device delete
# @cmd Alias of remove kept for backward compatibility
# @arg device-devid <<device>|<devid>...>
# @arg path!
device::delete() {
    :;
}
# }}} btrfs device delete

# {{{ btrfs device ready
# @cmd Wait until all devices of a multiple-device filesystem are scanned and registered within the kernel module.
# @arg device!
device::ready() {
    :;
}
# }}} btrfs device ready

# {{{ btrfs device scan
# @cmd Scan devices for a btrfs filesystem and register them with the kernel module.
# @flag -d --all-devices    Enumerate and register all devices, use as a fallback in case blkid is not available.
# @flag -u --forget         Unregister a given device or all stale devices if no path is given, the device must be unmounted otherwise it’s an error.
# @arg device*
device::scan() {
    :;
}
# }}} btrfs device scan

# {{{ btrfs device stats
# @cmd Read and print the device IO error statistics for all devices of the given filesystem identified by <path> or for a single <device>.
# @flag -z --reset    Print the stats and reset the values to zero afterwards.
# @flag -c --check    Check if the stats are all zeros and return 0 if it is so.
# @arg path-device <<path>|<device>>
device::stats() {
    :;
}
# }}} btrfs device stats

# {{{ btrfs device usage
# @cmd Show detailed information about internal allocations on devices.
# @flag -b --raw               raw numbers in bytes, without the B suffix
# @flag -h --human-readable    print human friendly numbers, base 1024, this is the default
# @flag -H                     print human friendly numbers, base 1000
# @flag --iec                  select the 1024 base for the following options, according to the IEC standard
# @flag --si                   select the 1000 base for the following options, according to the SI standard
# @flag -k --kbytes            show sizes in KiB, or kB with --si
# @flag -m --mbytes            show sizes in MiB, or MB with --si
# @flag -g --gbytes            show sizes in GiB, or GB with --si
# @flag -t --tbytes            show sizes in TiB, or TB with --si
# @arg path*
device::usage() {
    :;
}
# }}} btrfs device usage
# }} btrfs device

# {{ btrfs filesystem
# @cmd Manage a btrfs filesystem, including label setting/sync and so on.
filesystem() {
    :;
}

# {{{ btrfs filesystem df
# @cmd Show a terse summary information about allocation of block group types of a given mount point.
# @flag -b --raw               raw numbers in bytes, without the B suffix
# @flag -h --human-readable    print human friendly numbers, base 1024, this is the default
# @flag -H                     print human friendly numbers, base 1000
# @flag --iec                  select the 1024 base for the following options, according to the IEC standard
# @flag --si                   select the 1000 base for the following options, according to the SI standard
# @flag -k --kbytes            show sizes in KiB, or kB with --si
# @flag -m --mbytes            show sizes in MiB, or MB with --si
# @flag -g --gbytes            show sizes in GiB, or GB with --si
# @flag -t --tbytes            show sizes in TiB, or TB with --si
# @arg path!
filesystem::df() {
    :;
}
# }}} btrfs filesystem df

# {{{ btrfs filesystem defragment
# @cmd Defragment file data on a mounted filesystem.
# @option -c <algo>                     compress file contents while defragmenting.
# @flag -r                              defragment files recursively in given directories, does not descend to subvolumes or mount points
# @flag -f                              flush data for each file before going to the next file.
# @option -s <<start>[kKmMgGtTpPeE]>    defragmentation will start from the given offset, default is beginning of a file
# @option -l <<len>[kKmMgGtTpPeE]>      defragment only up to len bytes, default is the file size
# @option -t <<size>[kKmMgGtTpPeE]>     target extent size, do not touch extents bigger than size, default: 32M
# @flag -v                              (deprecated) alias for global -v option
# @arg file-dir <<file>|<dir>...>
filesystem::defragment() {
    :;
}
# }}} btrfs filesystem defragment

# {{{ btrfs filesystem du
# @cmd Calculate disk usage of the target files using FIEMAP.
# @flag -s --summarize      display only a total for each argument
# @flag --raw               raw numbers in bytes, without the B suffix.
# @flag --human-readable    print human friendly numbers, base 1024, this is the default
# @flag --iec               select the 1024 base for the following options, according to the IEC standard.
# @flag --si                select the 1000 base for the following options, according to the SI standard.
# @flag --kbytes            show sizes in KiB, or kB with --si.
# @flag --mbytes            show sizes in MiB, or MB with --si.
# @flag --gbytes            show sizes in GiB, or GB with --si.
# @flag --tbytes            show sizes in TiB, or TB with --si.
# @arg path*
filesystem::du() {
    :;
}
# }}} btrfs filesystem du

# {{{ btrfs filesystem label
# @cmd Show or update the label of a filesystem.
# @arg device-mountpoint <<device>|<mountpoint>>
# @arg newlabel
filesystem::label() {
    :;
}
# }}} btrfs filesystem label

# {{{ btrfs filesystem resize
# @cmd Resize a mounted filesystem identified by path.
# @flag --enqueue    wait if there’s another exclusive operation running, otherwise continue
# @arg devid---size-kkmmggttppee-devid-max <[<devid>:][+/-]<size>[kKmMgGtTpPeE]|[<devid>:]max>
# @arg path!
filesystem::resize() {
    :;
}
# }}} btrfs filesystem resize

# {{{ btrfs filesystem show
# @cmd Show the btrfs filesystem with some additional info about devices and space allocation.
# @flag -m --mounted        probe kernel for mounted BTRFS filesystems
# @flag -d --all-devices    scan all devices under /dev, otherwise the devices list is extracted from the /proc/partitions file.
# @flag --raw               raw numbers in bytes, without the B suffix
# @flag --human-readable    print human friendly numbers, base 1024, this is the default
# @flag --iec               select the 1024 base for the following options, according to the IEC standard
# @flag --si                select the 1000 base for the following options, according to the SI standard
# @flag --kbytes            show sizes in KiB, or kB with --si
# @flag --mbytes            show sizes in MiB, or MB with --si
# @flag --gbytes            show sizes in GiB, or GB with --si
# @flag --tbytes            show sizes in TiB, or TB with --si
# @arg path-uuid-device-label <<path>|<uuid>|<device>|<label>>
filesystem::show() {
    :;
}
# }}} btrfs filesystem show

# {{{ btrfs filesystem sync
# @cmd Force a sync of the filesystem at path, similar to the sync(1) command.
# @arg path!
filesystem::sync() {
    :;
}
# }}} btrfs filesystem sync

# {{{ btrfs filesystem usage
# @cmd Show detailed information about internal filesystem usage.
# @flag -b --raw               raw numbers in bytes, without the B suffix
# @flag -h --human-readable    print human friendly numbers, base 1024, this is the default
# @flag -H                     print human friendly numbers, base 1000
# @flag --iec                  select the 1024 base for the following options, according to the IEC standard
# @flag --si                   select the 1000 base for the following options, according to the SI standard
# @flag -k --kbytes            show sizes in KiB, or kB with --si
# @flag -m --mbytes            show sizes in MiB, or MB with --si
# @flag -g --gbytes            show sizes in GiB, or GB with --si
# @flag -t --tbytes            show sizes in TiB, or TB with --si
# @flag -T                     show data in tabular format
# @arg path*
filesystem::usage() {
    :;
}
# }}} btrfs filesystem usage
# }} btrfs filesystem

# {{ btrfs inspect-internal
# @cmd Debug tools for developers/hackers.
inspect-internal() {
    :;
}

# {{{ btrfs inspect-internal dump-super
# @cmd (replaces the standalone tool btrfs-show-super)
# @flag -f --full                print full superblock information, including the system chunk array and backup roots
# @flag -a --all                 print information about all present superblock copies (cannot be used together with -s option)
# @option -i <super>             (deprecated since 4.8, same behaviour as --super)
# @option --bytenr <bytenr>      specify offset to a superblock in a non-standard location at bytenr, useful for debugging (disables the -f option)
# @flag -F --force               attempt to print the superblock even if a valid BTRFS signature is not found; the result may be completely wrong if the data does not resemble a superblock
# @option -s --super <bytenr>    (see compatibility note above)
# @arg device*
inspect-internal::dump-super() {
    :;
}
# }}} btrfs inspect-internal dump-super

# {{{ btrfs inspect-internal dump-tree
# @cmd (replaces the standalone tool btrfs-debug-tree)
# @flag -e --extents        print only extent-related information: extent and device trees
# @flag -d --device         print only device-related information: tree root, chunk and device trees
# @flag -r --roots          print only short root node information, ie.
# @flag -R --backups        same as --roots plus print backup root info, ie.
# @flag -u --uuid           print only the uuid tree information, empty output if the tree does not exist
# @option -b <block_num>    print info of the specified block only, can be specified multiple times
# @flag --follow            use with -b, print all children tree blocks of <block_num>
# @flag --dfs               (default up to 5.2)
# @flag --bfs               (default since 5.3)
# @flag --hide-names        print a placeholder HIDDEN instead of various names, useful for developers to inspect the dump while keeping potentially sensitive information hidden
# @flag --csum-headers      print b-tree node checksums stored in headers (metadata)
# @flag --csum-items        print checksums stored in checksum items (data)
# @flag --noscan            do not automatically scan the system for other devices from the same filesystem, only use the devices provided as the arguments
# @option -t <tree_id>      print only the tree with the specified ID, where the ID can be numerical or common name in a flexible human readable form
# @arg device*
inspect-internal::dump-tree() {
    :;
}
# }}} btrfs inspect-internal dump-tree

# {{{ btrfs inspect-internal inode-resolve
# @cmd (needs root privileges)
# @flag -v    (deprecated) alias for global -v option
# @arg ino!
# @arg path!
inspect-internal::inode-resolve() {
    :;
}
# }}} btrfs inspect-internal inode-resolve

# {{{ btrfs inspect-internal logical-resolve
# @cmd (needs root privileges)
# @flag -P                skip the path resolving and print the inodes instead
# @flag -o                ignore offsets, find all references to an extent instead of a single block.
# @option -s <bufsize>    set internal buffer for storing the file names to bufsize, default is 64k, maximum 16m.
# @flag -v                (deprecated) alias for global -v option
# @arg logical!
# @arg path!
inspect-internal::logical-resolve() {
    :;
}
# }}} btrfs inspect-internal logical-resolve

# {{{ btrfs inspect-internal min-dev-size
# @cmd (needs root privileges)
# @option --id <id>    specify the device id to query, default is 1 if this option is not used
# @arg path!
inspect-internal::min-dev-size() {
    :;
}
# }}} btrfs inspect-internal min-dev-size

# {{{ btrfs inspect-internal rootid
# @cmd for a given file or directory, return the containing tree root id, but for a subvolume itself return its own tree id (ie.
# @arg path!
inspect-internal::rootid() {
    :;
}
# }}} btrfs inspect-internal rootid

# {{{ btrfs inspect-internal subvolid-resolve
# @cmd (needs root privileges)
# @arg subvolid!
# @arg path!
inspect-internal::subvolid-resolve() {
    :;
}
# }}} btrfs inspect-internal subvolid-resolve

# {{{ btrfs inspect-internal tree-stats
# @cmd (needs root privileges)
# @flag -b    Print raw numbers in bytes.
# @arg device!
inspect-internal::tree-stats() {
    :;
}
# }}} btrfs inspect-internal tree-stats
# }} btrfs inspect-internal

# {{ btrfs property
# @cmd Get/set a property from/to a btrfs object.
property() {
    :;
}

# {{{ btrfs property get
# @cmd get property from a btrfs <object> of given <type>
# @arg object!
# @arg name
property::get() {
    :;
}
# }}} btrfs property get

# {{{ btrfs property list
# @cmd Lists available properties with their descriptions for the given object.
# @arg object!
property::list() {
    :;
}
# }}} btrfs property list

# {{{ btrfs property set
# @cmd Sets a property on a btrfs object.
# @flag -f    Force the change.
# @arg object!
# @arg name!
# @arg value!
property::set() {
    :;
}
# }}} btrfs property set
# }} btrfs property

# {{ btrfs qgroup
# @cmd Manage quota group(qgroup) for btrfs filesystem.
qgroup() {
    :;
}

# {{{ btrfs qgroup assign
# @cmd Assign qgroup <src> as the child qgroup of <dst> in the btrfs filesystem identified by <path>.
# @flag --rescan       (default since: 4.19) Automatically schedule quota rescan if the new qgroup assignment would lead to quota inconsistency.
# @flag --no-rescan    Explicitly ask not to do a rescan, even if the assignment will make the quotas inconsistent.
# @arg src!
# @arg dst!
# @arg path!
qgroup::assign() {
    :;
}
# }}} btrfs qgroup assign

# {{{ btrfs qgroup create
# @cmd Create a subvolume quota group.
# @arg qgroupid!
# @arg path!
qgroup::create() {
    :;
}
# }}} btrfs qgroup create

# {{{ btrfs qgroup destroy
# @cmd Destroy a qgroup.
# @arg qgroupid!
# @arg path!
qgroup::destroy() {
    :;
}
# }}} btrfs qgroup destroy

# {{{ btrfs qgroup limit
# @cmd Limit the size of a qgroup to <size> or no limit in the btrfs filesystem identified by <path>.
# @flag -c    limit amount of data after compression.
# @flag -e    limit space exclusively assigned to this qgroup.
# @arg size-none <<size>|none>
# @arg qgroupid
# @arg path!
qgroup::limit() {
    :;
}
# }}} btrfs qgroup limit

# {{{ btrfs qgroup remove
# @cmd Remove the relationship between child qgroup <src> and parent qgroup <dst> in the btrfs filesystem identified by <path>.
# @flag --rescan       (default since: 4.19) Automatically schedule quota rescan if the removed qgroup relation would lead to quota inconsistency.
# @flag --no-rescan    Explicitly ask not to do a rescan, even if the removal will make the quotas inconsistent.
# @arg src!
# @arg dst!
# @arg path!
qgroup::remove() {
    :;
}
# }}} btrfs qgroup remove

# {{{ btrfs qgroup show
# @cmd Show all qgroups in the btrfs filesystem identified by <path>.
# @flag -p                                       print parent qgroup id.
# @flag -c                                       print child qgroup id.
# @flag -r                                       print limit of referenced size of qgroup.
# @flag -e                                       print limit of exclusive size of qgroup.
# @flag -F                                       list all qgroups which impact the given path(include ancestral qgroups)
# @flag -f                                       list all qgroups which impact the given path(exclude ancestral qgroups)
# @flag --raw                                    raw numbers in bytes, without the B suffix.
# @flag --human-readable                         print human friendly numbers, base 1024, this is the default
# @flag --iec                                    select the 1024 base for the following options, according to the IEC standard.
# @flag --si                                     select the 1000 base for the following options, according to the SI standard.
# @flag --kbytes                                 show sizes in KiB, or kB with --si.
# @flag --mbytes                                 show sizes in MiB, or MB with --si.
# @flag --gbytes                                 show sizes in GiB, or GB with --si.
# @flag --tbytes                                 show sizes in TiB, or TB with --si.
# @option --sort* <[+/-]<attr>[,[+/-]<attr>]>    list qgroups in order of <attr>.
# @flag --sync                                   To retrieve information after updating the state of qgroups, force sync of the filesystem identified by <path> before getting information.
# @arg path!
qgroup::show() {
    :;
}
# }}} btrfs qgroup show
# }} btrfs qgroup

# {{ btrfs quota
# @cmd Manage quota on btrfs filesystem like enabling/rescan and etc.
quota() {
    :;
}

# {{{ btrfs quota disable
# @cmd Disable subvolume quota support for a filesystem.
# @arg path!
quota::disable() {
    :;
}
# }}} btrfs quota disable

# {{{ btrfs quota enable
# @cmd Enable subvolume quota support for a filesystem.
# @arg path!
quota::enable() {
    :;
}
# }}} btrfs quota enable

# {{{ btrfs quota rescan
# @cmd Trash all qgroup numbers and scan the metadata again with the current config.
# @flag -s    show status of a running rescan operation.
# @flag -w    wait for rescan operation to finish(can be already in progress).
# @arg path!
quota::rescan() {
    :;
}
# }}} btrfs quota rescan
# }} btrfs quota

# {{ btrfs receive
# @cmd Receive subvolume data from stdin/file for restore and etc.
# @option -f <FILE>                 read the stream from <FILE> instead of stdin,
# @flag -C --chroot                 confine the process to path using chroot(1)
# @flag -e                          terminate after receiving an end cmd marker in the stream.
# @option -E --max-errors <NERR>    terminate as soon as NERR errors occur while stream processing commands from the stream
# @option -m <ROOTMOUNT>            the root mount point of the destination filesystem
# @flag --dump                      dump the stream metadata, one line per operation
# @flag -v --verbose                increase verbosity about performed actions, print details about each operation
# @flag -q --quiet                  suppress all messages except errors
# @arg path!
receive() {
    :;
}
# }} btrfs receive

# {{ btrfs replace
# @cmd Replace btrfs devices.
replace() {
    :;
}

# {{{ btrfs replace cancel
# @cmd Cancel a running device replace operation.
# @arg mount_point!
replace::cancel() {
    :;
}
# }}} btrfs replace cancel

# {{{ btrfs replace start
# @cmd Replace device of a btrfs filesystem.
# @flag -r                only read from <srcdev> if no other zero-defect mirror exists.
# @flag -f                force using and overwriting <targetdev> even if it looks like it contains a valid btrfs filesystem.
# @flag -B                no background replace.
# @flag --enqueue         wait if there’s another exclusive operation running, otherwise continue
# @flag -K --nodiscard    Do not perform whole device TRIM operation on devices that are capable of that.
# @arg srcdev-devid <<srcdev>|<devid>>
# @arg targetdev!
# @arg path!
replace::start() {
    :;
}
# }}} btrfs replace start

# {{{ btrfs replace status
# @cmd Print status and progress information of a running device replace operation.
# @flag -1    print once instead of print continuously until the replace operation finishes (or is cancelled)
# @arg mount_point!
replace::status() {
    :;
}
# }}} btrfs replace status
# }} btrfs replace

# {{ btrfs rescue
# @cmd Try to rescue damaged btrfs filesystem.
rescue() {
    :;
}

# {{{ btrfs rescue chunk-recover
# @cmd Recover the chunk tree by scanning the devices
# @flag -y    assume an answer of yes to all questions.
# @flag -h    help.
# @flag -v    (deprecated) alias for global -v option
# @arg device!
rescue::chunk-recover() {
    :;
}
# }}} btrfs rescue chunk-recover

# {{{ btrfs rescue fix-device-size
# @cmd fix device size and super block total bytes values that are do not match
# @arg device!
rescue::fix-device-size() {
    :;
}
# }}} btrfs rescue fix-device-size

# {{{ btrfs rescue clear-uuid-tree
# @cmd Clear uuid tree, so that kernel can re-generate it at next read-write mount.
# @arg device!
rescue::clear-uuid-tree() {
    :;
}
# }}} btrfs rescue clear-uuid-tree

# {{{ btrfs rescue super-recover
# @cmd Recover bad superblocks from good copies.
# @flag -y    assume an answer of yes to all questions.
# @flag -v    (deprecated) alias for global -v option
# @arg device!
rescue::super-recover() {
    :;
}
# }}} btrfs rescue super-recover

# {{{ btrfs rescue zero-log
# @cmd clear the filesystem log tree
# @arg device!
rescue::zero-log() {
    :;
}
# }}} btrfs rescue zero-log
# }} btrfs rescue

# {{ btrfs restore
# @cmd Try to restore files from a damaged btrfs filesystem.
# @flag -s --snapshots            get also snapshots that are skipped by default
# @flag -x --xattr                get extended attributes
# @flag -m --metadata             restore owner, mode and times for files and directories
# @flag -S --symlinks             restore symbolic links as well as normal files
# @flag -i --ignore-errors        ignore errors during restoration and continue
# @flag -o --overwrite            overwrite directories/files in <path>, eg.
# @option -t <bytenr>             use <bytenr> to read the root tree
# @option -f <bytenr>             only restore files that are under specified subvolume root pointed by <bytenr>
# @option -u --super <mirror>     use given superblock mirror identified by <mirror>, it can be 0,1 or 2
# @option -r --root <rootid>      only restore files that are under a specified subvolume whose objectid is <rootid>
# @flag -d                        find directory
# @flag -l --list-roots           list subvolume tree roots, can be used as argument for -r
# @flag -D --dry-run              dry run (only list files that would be recovered)
# @option --path-regex <regex>    restore only filenames matching a regular expression (regex(7)) with a mandatory format
# @flag -c                        ignore case (--path-regex only)
# @flag -v --verbose              be verbose and print what is being restored
# @arg device!
# @arg path!
restore() {
    :;
}
# }} btrfs restore

# {{ btrfs scrub
# @cmd Scrub a btrfs filesystem.
scrub() {
    :;
}

# {{{ btrfs scrub cancel
# @cmd If a scrub is running on the filesystem identified by path or device, cancel it.
# @arg path-device <<path>|<device>>
scrub::cancel() {
    :;
}
# }}} btrfs scrub cancel

# {{{ btrfs scrub resume
# @cmd Resume a cancelled or interrupted scrub on the filesystem identified by path or on a given device.
# @arg path-device <<path>|<device>>
scrub::resume() {
    :;
}
# }}} btrfs scrub resume

# {{{ btrfs scrub start
# @cmd Start a scrub on all devices of the mounted filesystem identified by path or on a single device.
# @flag -B                         do not background and print scrub statistics when finished
# @flag -d                         print separate statistics for each device of the filesystem (-B only) at the end
# @flag -r                         run in read-only mode, do not attempt to correct anything, can be run on a read-only filesystem
# @flag -R                         raw print mode, print full data instead of summary
# @option -c <ioprio_class>        set IO priority class (see ionice(1) manpage)
# @option -n <ioprio_classdata>    set IO priority classdata (see ionice(1) manpage)
# @flag -f                         force starting new scrub even if a scrub is already running, this can useful when scrub status file is damaged and reports a running scrub although it is not, but should not normally be necessary
# @flag -q                         (deprecated) alias for global -q option
# @arg path-device <<path>|<device>>
scrub::start() {
    :;
}
# }}} btrfs scrub start

# {{{ btrfs scrub status
# @cmd Show status of a running scrub for the filesystem identified by path or for the specified device.
# @flag -d                  print separate statistics for each device of the filesystem
# @flag -R                  print all raw statistics without postprocessing as returned by the status ioctl
# @flag --raw               print all numbers raw values in bytes without the B suffix
# @flag --human-readable    print human friendly numbers, base 1024, this is the default
# @flag --iec               select the 1024 base for the following options, according to the IEC standard
# @flag --si                select the 1000 base for the following options, according to the SI standard
# @flag --kbytes            show sizes in KiB, or kB with --si
# @flag --mbytes            show sizes in MiB, or MB with --si
# @flag --gbytes            show sizes in GiB, or GB with --si
# @flag --tbytes            show sizes in TiB, or TB with --si
# @arg path-device <<path>|<device>>
scrub::status() {
    :;
}
# }}} btrfs scrub status
# }} btrfs scrub

# {{ btrfs send
# @cmd Send subvolume data to stdout/file for backup and etc.
# @flag -e                  if sending multiple subvolumes at once, use the new format and omit the end cmd marker in the stream separating the subvolumes
# @option -p <parent>       send an incremental stream from parent to subvol
# @option -c <clone-src>    use this snapshot as a clone source for an incremental send (multiple allowed)
# @option -f <outfile>      output is normally written to standard output so it can be, for example, piped to btrfs receive.
# @flag --no-data           send in NO_FILE_DATA mode
# @flag -q --quiet          suppress all messages except errors
# @flag -v --verbose        increase output verbosity, print generated commands in a readable form
# @arg subvol*
send() {
    :;
}
# }} btrfs send

# {{ btrfs subvolume
# @cmd Create/delete/list/manage btrfs subvolume.
subvolume() {
    :;
}

# {{{ btrfs subvolume create
# @cmd Create a subvolume <name> in <dest>.
# @option -i <qgroupid>    Add the newly created subvolume to a qgroup.
# @arg dest-name <[<dest>/]<name>>
subvolume::create() {
    :;
}
# }}} btrfs subvolume create

# {{{ btrfs subvolume delete
# @cmd Delete the subvolume(s) from the filesystem.
# @flag -c --commit-after             wait for transaction commit at the end of the operation.
# @flag -C --commit-each              wait for transaction commit after deleting each subvolume.
# @option -i --subvolid <subvolid>    subvolume id to be removed instead of the <path> that should point to the filesystem with the subvolume
# @flag -v --verbose                  (deprecated) alias for global -v option
# @arg subvolume*
subvolume::delete() {
    :;
}
# }}} btrfs subvolume delete

# {{{ btrfs subvolume find-new
# @cmd List the recently modified files in a subvolume, after <last_gen> generation.
# @arg subvolume!
# @arg last_gen!
subvolume::find-new() {
    :;
}
# }}} btrfs subvolume find-new

# {{{ btrfs subvolume get-default
# @cmd Get the default subvolume of the filesystem <path>.
# @arg path!
subvolume::get-default() {
    :;
}
# }}} btrfs subvolume get-default

# {{{ btrfs subvolume list
# @cmd List the subvolumes present in the filesystem <path>.
# @flag -o                                 print only subvolumes below specified <path>.
# @flag -a                                 print all the subvolumes in the filesystem and distinguish between absolute and relative path with respect to the given <path>.
# @flag -p                                 print the parent ID (parent here means the subvolume which contains this subvolume).
# @flag -c                                 print the ogeneration of the subvolume, aliases: ogen or origin generation.
# @flag -g                                 print the generation of the subvolume (default).
# @flag -u                                 print the UUID of the subvolume.
# @flag -q                                 print the parent UUID of the subvolume (parent here means subvolume of which this subvolume is a snapshot).
# @flag -R                                 print the UUID of the sent subvolume, where the subvolume is the result of a receive operation.
# @flag -s                                 only snapshot subvolumes in the filesystem will be listed.
# @flag -r                                 only readonly subvolumes in the filesystem will be listed.
# @flag -d                                 list deleted subvolumes that are not yet cleaned.
# @flag -t                                 print the result as a table.
# @option -G <[+|-]<value>>                list subvolumes in the filesystem that its generation is >=, ⟨ or = value.
# @option -C <[+|-]<value>>                list subvolumes in the filesystem that its ogeneration is >=, <= or = value.
# @option --sort <rootid,gen,ogen,path>    list subvolumes in order by specified items.
# @arg path!
subvolume::list() {
    :;
}
# }}} btrfs subvolume list

# {{{ btrfs subvolume set-default
# @cmd Set the default subvolume for the (mounted) filesystem.
# @arg subvolume-id-path <<subvolume>|<id> <path>>
subvolume::set-default() {
    :;
}
# }}} btrfs subvolume set-default

# {{{ btrfs subvolume show
# @cmd Show more information about a subvolume (UUIDs, generations, times, flags, related snapshots).
# @option -r --rootid <ID>    show details about subvolume with root <ID>, looked up in <path>
# @option -u --uuid           show details about subvolume with the given <UUID>, looked up in <path>
# @arg path!
subvolume::show() {
    :;
}
# }}} btrfs subvolume show

# {{{ btrfs subvolume snapshot
# @cmd Create a snapshot of the subvolume <source> with the name <name> in the <dest> directory.
# @flag -r                 Make the new snapshot read only.
# @option -i <qgroupid>    Add the newly created subvolume to a qgroup.
# @arg source!
# @arg dest-dest-name <<dest>|[<dest>/]<name>>
subvolume::snapshot() {
    :;
}
# }}} btrfs subvolume snapshot

# {{{ btrfs subvolume sync
# @cmd Wait until given subvolume(s) are completely removed from the filesystem after deletion.
# @option -s <N>    sleep N seconds between checks (default: 1)
# @arg path!
# @arg subvolid*
subvolume::sync() {
    :;
}
# }}} btrfs subvolume sync
# }} btrfs subvolume

command eval "$(argc --argc-eval "$0" "$@")"