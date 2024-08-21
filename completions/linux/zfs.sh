#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ zfs list
# @cmd Lists the property information for the given datasets in tabular form.
# @flag -H                                         Used for scripting mode.
# @option -S[`_choice_property_key`] <property>    Same as the -s option, but sorts by property in descending order.
# @option -d <depth>                               Recursively display any children of the dataset, limiting the recursion to depth.
# @option -o*,[`_choice_property_key`] <property>  A comma-separated list of properties to display.
# @flag -p                                         Display numbers in parsable (exact) values.
# @flag -r                                         Recursively display any children of the dataset on the command line.
# @option -s[`_choice_property_key`] <property>    A property for sorting the output by column in ascending order based on the value of the property.
# @option -t*,[`_choice_dataset_type`] <type>      A comma-separated list of types to display, where type is one of filesystem, snapshot, volume, bookmark, or all.
# @arg filesystem-volume-snapshot*[`_choice_filesystem_volume_snapshot`]
list() {
    :;
}
# }} zfs list

# {{ zfs create
# @cmd Creates a new ZFS file system or volume.
# @option -o*[`_choice_property`] <property=value>  Sets the specified property as if the command zfs set property=value was invoked at the same time the dataset was created.
# @flag -p                  Creates all the non-existing parent datasets.
# @flag -n                  Do a dry-run ("No-op") creation.
# @flag -P                  Print machine-parsable verbose information about the created dataset.
# @flag -u                  Do not mount the newly created file system.
# @flag -v                  Print verbose information about the created dataset.
# @option -b <blocksize>    Equivalent to -o volblocksize=blocksize.
# @arg filesystem-volume[`_choice_filesystem_volume`]
create() {
    :;
}
# }} zfs create

# {{ zfs destroy
# @cmd Destroys the given dataset(s), snapshot(s), or bookmark.
# @flag -R    Recursively destroy all dependents, including cloned file systems outside the target hierarchy.
# @flag -f    Forcibly unmount file systems.
# @flag -n    Do a dry-run ("No-op") deletion.
# @flag -p    Print machine-parsable verbose information about the deleted data.
# @flag -r    Recursively destroy all children.
# @flag -v    Print verbose information about the deleted data.
# @arg filesystem-volume[`_choice_filesystem_volume`]
destroy() {
    :;
}
# }} zfs destroy

# {{ zfs rename
# @cmd Renames the given dataset (filesystem or snapshot).
# @flag -f    Force unmount any file systems that need to be unmounted in the process.
# @flag -p    Creates all the nonexistent parent datasets.
# @flag -u    Do not remount file systems during rename.
# @arg filesystem-volume-snapshot[`_choice_filesystem_volume_snapshot`]
rename() {
    :;
}
# }} zfs rename

# {{ zfs upgrade
# @cmd Manage upgrading the on-disk version of filesystems.
# @option -V <version>    Upgrade to version.
# @flag -a                Upgrade all file systems on all imported pools.
# @flag -r                Upgrade the specified file system and all descendent file systems.
upgrade() {
    :;
}
# }} zfs upgrade

# {{ zfs snapshot
# @cmd Creates snapshots with the given names.
# @option -o*[`_choice_property`] <property=value>  Set the specified property; see zfs create for details.
# @flag -r    Recursively create snapshots of all descendent datasets
# @arg dataset-snapname* <dataset@snapname>
snapshot() {
    :;
}
# }} zfs snapshot

# {{ zfs rollback
# @cmd Roll back the given dataset to a previous snapshot.
# @flag -R    Destroy any more recent snapshots and bookmarks, as well as any clones of those snapshots.
# @flag -f    Used with the -R option to force an unmount of any clone file systems that are to be destroyed.
# @flag -r    Destroy any snapshots and bookmarks more recent than the one specified.
# @arg snapshot[`_choice_snapshot`]
rollback() {
    :;
}
# }} zfs rollback

# {{ zfs hold
# @cmd Add or remove a hold reference to the specified snapshot or snapshots.
# @alias release
# @flag -r    Specifies that a hold with the given tag is applied recursively to the snapshots of all descendent file systems.
# @arg tag
# @arg snapshot*[`_choice_snapshot`]
hold() {
    :;
}
# }} zfs hold

# {{ zfs diff
# @cmd Display the difference between a snapshot of a given filesystem and another snapshot of that filesystem from a later time or the current contents of the filesystem.
# @flag -F    Display an indication of the type of file, in a manner similar to the -F option of ls(1).
# @flag -H    Give more parsable tab-separated output, without header lines and without arrows.
# @flag -t    Display the path's inode change time as the first column of output.
# @flag -h    Do not \0ooo-escape non-ASCII paths.
# @arg snapshot[`_choice_snapshot`]
# @arg snapshot-filesystem[`_choice_snapshot_filesystem`]
diff() {
    :;
}
# }} zfs diff

# {{ zfs clone
# @cmd Creates a clone of the given snapshot.
# @option -o*[`_choice_property`] <property=value>  Sets the specified property; see zfs create for details.
# @flag -p    Creates all the non-existing parent datasets.
# @arg snapshot[`_choice_snapshot`]
# @arg filesystem-volume[`_choice_filesystem_volume`]
clone() {
    :;
}
# }} zfs clone

# {{ zfs promote
# @cmd Promotes a clone file system to no longer be dependent on its "origin" snapshot.
# @arg clone
promote() {
    :;
}
# }} zfs promote

# {{ zfs send
# @cmd Generate a send stream, which may be of a filesystem, and may be incremental from a bookmark.
# @flag -D --dedup                             Deduplicated send is no longer supported.
# @option -I[`_choice_snapshot`] <snapshot>    Generate a stream package that sends all intermediary snapshots from the first snapshot to the second snapshot.
# @flag -L --large-block                       Generate a stream which may contain blocks larger than 128KB.
# @flag -P --parsable                          Print machine-parsable verbose information about the stream package generated.
# @flag -R --replicate                         Generate a replication stream package, which will replicate the specified file system, and all descendent file systems, up to the named snapshot.
# @flag -e --embed                             Generate a more compact stream by using WRITE_EMBEDDED records for blocks which are stored more compactly on disk by the embedded_data pool feature.
# @flag -b --backup                            Sends only received property values whether or not they are overridden by local settings, but only if the dataset has ever been received.
# @flag -c --compressed                        Generate a more compact stream by using compressed WRITE records for blocks which are compressed on disk and in memory (see the compression property for details).
# @flag -w --raw                               For encrypted datasets, send data exactly as it exists on disk.
# @flag -h --holds                             Generate a stream package that includes any snapshot holds (created with the zfs hold command), and indicating to zfs receive that the holds be applied to the dataset on the receiving system.
# @option -i[`_choice_snapshot`] <snapshot>    Generate an incremental stream from the first snapshot (the incremental source) to the second snapshot (the incremental target).
# @flag -n --dryrun                            Do a dry-run ("No-op") send.
# @flag -p --props                             Include the dataset's properties in the stream.
# @flag -s --skip-missing                      Allows sending a replication stream even when there are snapshots missing in the hierarchy.
# @flag -v --verbose                           Print verbose information about the stream package generated.
# @arg snapshot[`_choice_snapshot`]
send() {
    :;
}
# }} zfs send

# {{ zfs receive
# @cmd Creates a snapshot whose contents are as specified in the stream provided on standard input.
# @flag -F                        Force a rollback of the file system to the most recent snapshot before performing the receive operation.
# @flag -d                        Discard the first element of the sent snapshot's file system name, using the remaining elements to determine the name of the target file system for the new snapshot as described in the paragraph above.
# @flag -e                        Discard all but the last element of the sent snapshot's file system name, using that element to determine the name of the target file system for the new snapshot as described in the paragraph above.
# @flag -h                        Skip the receive of holds.
# @flag -M                        Force an unmount of the file system while receiving a snapshot.
# @flag -n                        Do not actually receive the stream.
# @option -o <origin=snapshot>    Forces the stream to be received as a clone of the given snapshot.
# @arg filesystem-volume-snapshot[`_choice_filesystem_volume_snapshot`]
receive() {
    :;
}
# }} zfs receive

# {{ zfs bookmark
# @cmd Creates a new bookmark of the given snapshot or bookmark.
# @arg snapshot-bookmark[`_choice_snapshot_bookmark`]
# @arg newbookmark
bookmark() {
    :;
}
# }} zfs bookmark

# {{ zfs redact
# @cmd Generate a new redaction bookmark.
# @arg snapshot[`_choice_snapshot`]
# @arg redaction_bookmark
# @arg redaction_snapshot*
redact() {
    :;
}
# }} zfs redact

# {{ zfs get
# @cmd Displays properties for the given datasets.
# @flag -H                                        Display output in a form more easily parsed by scripts.
# @option -d <depth>                              Recursively display any children of the dataset, limiting the recursion to depth.
# @option -o*,[`_choice_list_field`] <field>      A comma-separated list of columns to display, defaults to name,property,value,source.
# @flag -p                                        Display numbers in parsable (exact) values.
# @flag -r                                        Recursively display properties for any children.
# @option -s*,[`_choice_source_type`] <source>    A comma-separated list of sources to display.
# @option -t*,[`_choice_dataset_type`] <type>     A comma-separated list of types to display, where type is one of filesystem, snapshot, volume, bookmark, or all.
# @arg property[`_choice_get_property`]
# @arg dataset[`_choice_dataset`]
get() {
    :;
}
# }} zfs get

# {{ zfs set
# @cmd Sets the property or list of properties to the given value(s) for each dataset.
# @arg property*[`_choice_property`]
set() {
    :;
}
# }} zfs set

# {{ zfs inherit
# @cmd Clears the specified property, causing it to be inherited from an ancestor, restored to default if no ancestor has the property set, or with the -S option reverted to the received value if one exists.
# @flag -r    Recursively inherit the given property for all children.
# @flag -S    Revert the property to the received value, if one exists; otherwise, for non-inheritable properties, to the default; otherwise, operate as if the -S option was not specified.
# @arg property
# @arg filesystem-volume-snapshot*[`_choice_filesystem_volume_snapshot`]
inherit() {
    :;
}
# }} zfs inherit

# {{ zfs userspace
# @cmd Displays space consumed by, and quotas on, each user, group, or project in the specified filesystem or snapshot.
# @alias groupspace,projectspace
# @flag -H                                         Do not print headers, use tab-delimited output.
# @option -S[`_choice_userspace_field`] <field>    Sort by this field in reverse order.
# @flag -i                                         Translate SID to POSIX ID.
# @flag -n                                         Print numeric ID instead of user/group name.
# @option -o*,[`_choice_userspace_field`] <field[,field]…>  Display only the specified fields from the following set: type, name, used, quota.
# @flag -p                                         Use exact (parsable) numeric output.
# @option -s[`_choice_userspace_field`] <field>    Sort output by this field.
# @option -t*,[`_choice_userspace_type`] <type[,type]…>  Print only the specified types from the following set: all, posixuser, smbuser, posixgroup, smbgroup.
# @arg filesystem-snapshot-path[`_choice_filesystem_snapshot_path`]
userspace() {
    :;
}
# }} zfs userspace

# {{ zfs project
# @cmd List, set, or clear project ID and/or inherit flag on the file(s) or directories.
# @flag -d    Show the directory project ID and inherit flag, not its children.
# @flag -r    List subdirectories recursively.
# @flag -k    Keep the project ID unchanged.
# @arg file-directory*
project() {
    :;
}
# }} zfs project

# {{ zfs mount
# @cmd Displays all ZFS file systems currently mounted, or mount ZFS filesystem on a path described by its mountpoint property.
# @flag -O                Perform an overlay mount.
# @flag -a                Mount all available ZFS file systems.
# @option -o <options>    An optional, comma-separated list of mount options to use temporarily for the duration of the mount.
# @flag -l                Load keys for encrypted filesystems as they are being mounted.
# @flag -v                Report mount progress.
# @flag -f                Attempt to force mounting of all filesystems, even those that couldn't normally be mounted (e.g. redacted datasets).
# @arg filesystem[`_choice_filesystem`]
mount() {
    :;
}
# }} zfs mount

# {{ zfs unmount
# @cmd Unmounts currently mounted ZFS file systems.
# @flag -a    Unmount all available ZFS file systems.
# @flag -f    Forcefully unmount the file system, even if it is currently in use.
# @flag -u    Unload keys for any encryption roots unmounted by this command.
# @arg filesystem-mountpoint[`_choice_filesystem`]
unmount() {
    :;
}
# }} zfs unmount

# {{ zfs share
# @cmd Shares available ZFS file systems.
# @flag -l    Load keys for encrypted filesystems as they are being mounted.
# @flag -a    Share all available ZFS file systems.
# @arg filesystem[`_choice_filesystem`]
share() {
    :;
}
# }} zfs share

# {{ zfs unshare
# @cmd Unshares currently shared ZFS file systems.
# @flag -a    Unshare all available ZFS file systems.
# @arg filesystem-mountpoint[`_choice_filesystem`]
unshare() {
    :;
}
# }} zfs unshare

# {{ zfs allow
# @cmd Delegate permissions on the specified filesystem or volume.
# @flag -d    Allow only for the descendent file systems.
# @flag -e    Specifies that the permissions be delegated to everyone.
# @option -g*,[`_module_os_group`] <group[,group]…>  Explicitly specify that permissions are delegated to the group.
# @flag -l    Allow "locally" only for the specified file system.
# @option -u*,[`_module_os_user`] <user[,user]…>  Explicitly specify that permissions are delegated to the user.
# @arg filesystem-volume[`_choice_filesystem_volume`]
allow() {
    :;
}
# }} zfs allow

# {{ zfs unallow
# @cmd Remove delegated permissions on the specified filesystem or volume.
# @flag -r    Recursively remove the permissions from this file system and all descendents.
# @arg filesystem-volume[`_choice_filesystem_volume`]
unallow() {
    :;
}
# }} zfs unallow

# {{ zfs change-key
# @cmd Add or change an encryption key on the specified dataset.
# @flag -l    Ensures the key is loaded before attempting to change the key.
# @option -o*[`_choice_property`] <property=value>  Allows the user to set encryption key properties (keyformat, keylocation, and pbkdf2iters) while changing the key.
# @flag -i    Indicates that zfs should make filesystem inherit the key of its parent.
# @arg filesystem[`_choice_filesystem`]
change-key() {
    :;
}
# }} zfs change-key

# {{ zfs load-key
# @cmd Load the key for the specified encrypted dataset, enabling access.
# @flag -r                    Recursively loads the keys for the specified filesystem and all descendent encryption roots.
# @flag -a                    Loads the keys for all encryption roots in all imported pools.
# @flag -n                    Do a dry-run ("No-op") load-key.
# @option -L <keylocation>    Use keylocation instead of the keylocation property.
# @arg filesystem[`_choice_filesystem`]
load-key() {
    :;
}
# }} zfs load-key

# {{ zfs unload-key
# @cmd Unload a key for the specified dataset, removing the ability to access the dataset.
# @flag -r    Recursively unloads the keys for the specified filesystem and all descendent encryption roots.
# @flag -a    Unloads the keys for all encryption roots in all imported pools.
# @arg filesystem[`_choice_filesystem`]
unload-key() {
    :;
}
# }} zfs unload-key

# {{ zfs program
# @cmd Execute ZFS administrative operations programmatically via a Lua script-language channel program.
# @flag -j                          Display channel program output in JSON format.
# @flag -n                          Executes a read-only channel program, which runs faster.
# @option -t <instruction-limit>    Limit the number of Lua instructions to execute.
# @option -m <memory-limit>         Memory limit, in bytes.
# @arg pool[`_choice_pool`]
# @arg script
program() {
    :;
}
# }} zfs program

# {{ zfs jail
# @cmd Attaches a filesystem to a jail.
# @arg jailid-jailname
# @arg filesystem[`_choice_filesystem`]
jail() {
    :;
}
# }} zfs jail

# {{ zfs unjail
# @cmd Detaches a filesystem from a jail.
# @arg jailid-jailname
# @arg filesystem[`_choice_filesystem`]
unjail() {
    :;
}
# }} zfs unjail

# {{ zfs wait
# @cmd Wait for background activity in a filesystem to complete.
# @arg filesystem[`_choice_filesystem`]
wait() {
    :;
}
# }} zfs wait

# {{ zfs holds
# @cmd Lists all existing user references for the given snapshot or snapshots.
holds() {
    :;
}
# }} zfs holds

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_property_key() {
    _helper_raw_property | sed -e 's/=.*;;/;;/' -e 's/;;/\t/'
}

_choice_dataset_type() {
    cat <<-'EOF'
filesystem	ZFS filesystem
snapshot	ZFS filesystem snapshot
volume	ZFS block storage device
bookmark	ZFS snapshot bookmark
all	Any ZFS dataset
EOF
}

_choice_filesystem_volume_snapshot() {
    _argc_util_parallel _choice_filesystem ::: _choice_volume :: _choice_snapshot
}

_choice_property() {
    _helper_raw_property | _argc_util_comp_kv =
}

_choice_filesystem_volume() {
    _argc_util_parallel _choice_filesystem ::: _choice_volume
}

_choice_snapshot() {
    zfs list -t snapshot -o name -H
}

_choice_snapshot_filesystem() {
    _argc_util_parallel _choice_snapshot ::: _choice_filesystem
}

_choice_snapshot_bookmark() {
    _argc_util_parallel _choice_snapshot ::: _choice_bookmark
}

_choice_list_field() {
    cat <<-'EOF'
name	Dataset full name
property	Property
value	Property value
source	Property value origin
EOF
}

_choice_source_type() {
    cat <<-'EOF'
local	Dataset-specific value
default	Default ZFS value
inherited	Value inherited from parent dataset
received	Value received by 'zfs receive'
temporary	Value valid for the current mount
none	Read-only value
EOF
}

_choice_get_property() {
    _argc_util_mode_parts ,
    echo "all"
    _choice_property_key
}

_choice_dataset() {
    zfs list -t all -o name -H
}

_choice_userspace_field() {
    cat <<-'EOF'
type	Identity type
name	Identity name
used	Space usage
quota	Space quota
EOF
}

_choice_userspace_type() {
    cat <<-'EOF'
posixuser	POSIX user
smbuser	Samba user
all	Both types
EOF
}

_choice_filesystem_snapshot_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_snapshot_filesystem
}

_choice_filesystem() {
    zfs list -t filesystem -o name -H
}

_choice_pool() {
    zpool list -o name,comment -H | sed 's/\t-//'
}

_choice_bookmark() {
    zfs list -t bookmark -o name -H
}

_choice_volume() {
    zfs list -t volume -o name -H
}

_helper_raw_property() {
    cat <<-'EOF' 
available;;The amount of space available to the dataset and all its children, assuming that there is no otheractivity in the pool.
compressratio;;For non-snapshots, the compression ratio achieved for the used space of this dataset, expressed asa multiplier.
createtxg;;The transaction group (txg) in which the dataset was created.
creation;;The time this dataset was created.
clones;;For snapshots, this property is a comma-separated list of filesystems or volumes which are clonesof this snapshot.
defer_destroy;;This property is on if the snapshot has been marked for deferred destroy by using the zfs destroy-d command.
encryptionroot;;For encrypted datasets, indicates where the dataset is currently inheriting its encryption keyfrom.
filesystem_count;;The total number of filesystems and volumes that exist under this location in the dataset tree.
keystatus;;Indicates if an encryption key is currently loaded into ZFS.
guid;;The 64 bit GUID of this dataset or bookmark which does not change over its entire lifetime.
logicalreferenced;;The amount of space that is "logically" accessible by this dataset.
logicalused;;The amount of space that is "logically" consumed by this dataset and all its descendents.
mounted;;For file systems, indicates whether the file system is currently mounted.
objsetid;;A unique identifier for this dataset within the pool.
origin;;For cloned file systems or volumes, the snapshot from which the clone was created.
receive_resume_token;;For filesystems or volumes which have saved partially-completed state from zfs receive -s, thisopaque token can be provided to zfs send -t to resume and complete the zfs receive.
redact_snaps;;For bookmarks, this is the list of snapshot guids the bookmark contains a redaction list for.
referenced;;The amount of data that is accessible by this dataset, which may or may not be shared with otherdatasets in the pool.
refcompressratio;;The compression ratio achieved for the referenced space of this dataset, expressed as a multi‐plier.
snapshot_count;;The total number of snapshots that exist under this location in the dataset tree.
type;;The type of dataset: filesystem, volume, snapshot, or bookmark.
used;;The amount of space consumed by this dataset and all its descendents.
usedby*;;The usedby* properties decompose the used properties into the various reasons that space is used.
usedbychildren;;The amount of space used by children of this dataset, which would be freed if all the dataset'schildren were destroyed.
usedbydataset;;The amount of space used by this dataset itself, which would be freed if the dataset were de‐stroyed (after first removing any refreservation and destroying any necessary snapshots ordescendents).
usedbyrefreservation;;The amount of space used by a refreservation set on this dataset, which would be freed if therefreservation was removed.
usedbysnapshots;;The amount of space consumed by snapshots of this dataset.
userused@user;;The amount of space consumed by the specified user in this dataset.
userobjused@user;;The userobjused property is similar to userused but instead it counts the number of objects con‐sumed by a user.
userrefs;;This property is set to the number of user holds on this snapshot.
groupused@group;;The amount of space consumed by the specified group in this dataset.
groupobjused@group;;The number of objects consumed by the specified group in this dataset.
projectused@project;;The amount of space consumed by the specified project in this dataset.
projectobjused@project;;The projectobjused is similar to projectused but instead it counts the number of objects consumedby project.
volblocksize;;For volumes, specifies the block size of the volume.
written;;The amount of space referenced by this dataset, that was written since the previous snapshot (i.
written@snapshot;;The amount of referenced space written to this dataset since the specified snapshot.
aclinherit=discard,noallow,restricted,passthrough,passthrough-x;;Controls how ACEs are inherited when files and directories are created.
aclmode=discard,groupmask,passthrough,restricted;;Controls how an ACL is modified during chmod(2) and how inherited ACEs are modified by the file creation mode:discard      default, deletes all ACEs except for those representing the mode of the file or directory requestedby chmod(2).
acltype=off,nfsv4,posix;;Controls whether ACLs are enabled and if so what type of ACL to use.
atime=on,off;;Controls whether the access time for files is updated when they are read.
canmount=on,off,noauto;;If this property is set to off, the file system cannot be mounted, and is ignored by zfs mount -a.
checksum=on,off,fletcher2,fletcher4,sha256,noparity,sha512,skein,edonr;;Controls the checksum used to verify data integrity.
compression=on,off,gzip,gzip-N,lz4,lzjb,zle,zstd,zstd-N,zstd-fast,zstd-fast-N;;Controls the compression algorithm used for this dataset.
context=none,SELinux-User:SELinux-Role:SELinux-Type:Sensitivity-Level;;This flag sets the SELinux context for all files in the file system under a mount point for that file system.
fscontext=none,SELinux-User:SELinux-Role:SELinux-Type:Sensitivity-Level;;This flag sets the SELinux context for the file system file system being mounted.
defcontext=none,SELinux-User:SELinux-Role:SELinux-Type:Sensitivity-Level;;This flag sets the SELinux default context for unlabeled files.
rootcontext=none,SELinux-User:SELinux-Role:SELinux-Type:Sensitivity-Level;;This flag sets the SELinux context for the root inode of the file system.
copies=1,2,3;;Controls the number of copies of data stored for this dataset.
devices=on,off;;Controls whether device nodes can be opened on this file system.
dedup=off,on,verify,sha256[,verify],sha512[,verify],skein[,verify],edonr,verify;;Configures deduplication for a dataset.
dnodesize=legacy,auto,1k,2k,4k,8k,16k;;Specifies a compatibility mode or literal value for the size of dnodes in the file system.
encryption=off,on,aes-128-ccm,aes-192-ccm,aes-256-ccm,aes-128-gcm,aes-192-gcm,aes-256-gcm;;Controls the encryption cipher suite (block cipher, key length, and mode) used for this dataset.
keyformat=raw,hex,passphrase;;Controls what format the user's encryption key will be provided as.
keylocation=_argc_value=file;;Controls where the user's encryption key will be loaded from by default for commands such as zfs load-key and zfsmount -l.
pbkdf2iters=iterations;;Controls the number of PBKDF2 iterations that a passphrase encryption key should be run through when processing itinto an encryption key.
exec=on,off;;Controls whether processes can be executed from within this file system.
filesystem_limit=count,none;;Limits the number of filesystems and volumes that can exist under this point in the dataset tree.
special_small_blocks=size;;This value represents the threshold block size for including small file blocks into the special allocation class.
mountpoint=path,none,legacy;;Controls the mount point used for this file system.
nbmand=on,off;;Controls whether the file system should be mounted with nbmand (Non-blocking mandatory locks).
overlay=on,off;;Allow mounting on a busy directory or a directory which already contains files or directories.
primarycache=all,none,metadata;;Controls what is cached in the primary cache (ARC).
quota=size,none;;Limits the amount of space a dataset and its descendents can consume.
snapshot_limit=count,none;;Limits the number of snapshots that can be created on a dataset and its descendents.
userquota@user=size,none;;Limits the amount of space consumed by the specified user.
userobjquota@user=size,none;;The userobjquota is similar to userquota but it limits the number of objects a user can create.
groupquota@group=size,none;;Limits the amount of space consumed by the specified group.
groupobjquota@group=size,none;;The groupobjquota is similar to groupquota but it limits number of objects a group can consume.
projectquota@project=size,none;;Limits the amount of space consumed by the specified project.
projectobjquota@project=size,none;;The projectobjquota is similar to projectquota but it limits number of objects a project can consume.
readonly=on,off;;Controls whether this dataset can be modified.
recordsize=size;;Specifies a suggested block size for files in the file system.
redundant_metadata=all,most;;Controls what types of metadata are stored redundantly.
refquota=size,none;;Limits the amount of space a dataset can consume.
refreservation=size,none,auto;;The minimum amount of space guaranteed to a dataset, not including its descendents.
relatime=on,off;;Controls the manner in which the access time is updated when atime=on is set.
reservation=size,none;;The minimum amount of space guaranteed to a dataset and its descendants.
secondarycache=all,none,metadata;;Controls what is cached in the secondary cache (L2ARC).
setuid=on,off;;Controls whether the setuid bit is respected for the file system.
sharesmb=on,off,opts;;Controls whether the file system is shared by using Samba USERSHARES and what options are to be used.
sharenfs=on,off,opts;;Controls whether the file system is shared via NFS, and what options are to be used.
logbias=latency,throughput;;Provide a hint to ZFS about handling of synchronous requests in this dataset.
snapdev=hidden,visible;;Controls whether the volume snapshot devices under /dev/zvol/⟨pool⟩ are hidden or visible.
snapdir=hidden,visible;;Controls whether the .zfs directory is hidden or visible in the root of the file system as discussed in the Snapshots section of zfsconcepts(7).
sync=standard,always,disabled;;Controls the behavior of synchronous requests.
version=N,current;;The on-disk version of this file system, which is independent of the pool version.
volsize=size;;For volumes, specifies the logical size of the volume.
volmode=default,full,geom,dev,none;;This property specifies how volumes should be exposed to the OS.
vscan=on,off;;Controls whether regular files should be scanned for viruses when a file is opened and closed.
xattr=on,off,sa;;Controls whether extended attributes are enabled for this file system.
jailed=off,on;;Controls whether the dataset is managed from a jail.
zoned=on,off;;Controls whether the dataset is managed from a non-global zone.
casesensitivity=sensitive,insensitive,mixed;;Indicates whether the file name matching algorithm used by the file system should be case-sensitive, case-insensitive,or allow a combination of both styles of matching.
normalization=none,formC,formD,formKC,formKD;;Indicates whether the file system should perform a unicode normalization of file names whenever two file names arecompared, and which normalization algorithm should be used.
utf8only=on,off;;Indicates whether the file system should reject file names that include characters that are not present in the UTF-8character code set.
EOF
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"