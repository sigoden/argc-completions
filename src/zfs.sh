_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        gawk '
            BEGIN { print "Commands:" }
            {
                if (match($0, /^     zfs-/, arr)) {
                    commandZone = 1
                    gsub(/\(8\)/, "", $0)
                    gsub(/zfs-/, "", $0)
                    gsub(/\//, ", ", $0)
                    print $0
                } else if (match($0, /^\s*$/)) {
                    commandZone = 0
                } else if (commandZone == 1) {
                    print "  " $0
                }
            }'
        cat <<'EOF'
     holds
         Lists all existing user references for the given snapshot or snapshots.
EOF
    else
        if [[ "$*" == "zfs unshare" ]]; then
            man_text="$(_patch_help_run_man zfs share)"
        else
            man_text="$(_patch_help_run_man $@)"
        fi
        echo "$man_text" | \
        gawk -v SUBCMD=$2 '
            BEGIN {
                synopsisNum = 0
                split("", options)
            }
            {
                if (match($0, /^^SYNOPSIS/)) {
                    group = "synopsis"
                } else if (match($0, /^DESCRIPTION/)) {
                    if (synopsisNum == 1) {
                        print usageText
                    }
                    group = "description"
                } else if (match($0, /^OPTIONS/)) {
                    group = "options"
                } else if (match($0, /^[A-Z]/)) {
                    group = "misc"
                } else {
                    if (group == "synopsis") {
                        if (match($0, /^     zfs /)) {
                            usageText = "Usage: " sanitizeUsage(substr($0, 6))
                            synopsisNum += 1
                        }
                    } else if (group == "description" || group == "options") {
                        if (synopsisNum == 1) {
                            print $0
                        } else {
                            if (match($0, /^     zfs /)) {
                                if (match(substr($0, RLENGTH + 1), "^" SUBCMD "( |/|$)")) {
                                    usageText = substr($0, 6)
                                    if (usageText != "zfs " SUBCMD) {
                                        print  "Usage: " sanitizeUsage(usageText)
                                    }
                                    matchCommand = 1
                                } else {
                                    matchCommand = 0
                                }
                            } else if (match($0, /^   \S/)) {
                                matchCommand = 0
                            } else if (matchCommand == 1) {
                                if (match($0, /^       (-\S+)/, arr)) {
                                    $0 = gensub(/-([A-Za-z])\|\S+/, "-\\1", 1, $0)
                                    if (options[arr[1]] == 1) {
                                        ignoreOption = 1
                                    } else {
                                        options[arr[1]] = 1
                                    }
                                    if (ignoreOption != 1) {
                                        print $0
                                    }
                                } else {
                                    if (ignoreOption != 1) {
                                        print $0
                                    }
                                } 
                            }
                        }
                    }
                }
            }
            function sanitizeUsage(value) {
                value = gensub(/-a\|(\S+)$/, "\\1", 1, value)
                gsub(/…/, "...", value)
                gsub(/\|/, "-", value)
                gsub(/\[\[-[^\]]*\][^\]]*\]/, "", value)
                return value
            }
            '
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'filesystem;[`_choice_filesystem`]' \
            'filesystem-mountpoint;[`_choice_filesystem`]' \
            'filesystem-volume;[`_choice_filesystem_volume`]' \
            'filesystem-volume-snapshot;[`_choice_filesystem_volume_snapshot`]' \
            'snapshot;[`_choice_snapshot`]' \
            'snapshot-bookmark;[`_choice_snapshot_bookmark`]' \
            'snapshot-filesystem;[`_choice_snapshot_filesystem`]' \
            'volume;[`_choice_volume`]' \
    )"
    if [[ "$*" == "zfs list" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-S;[`_choice_property_key`]' \
            '-o;*,[`_choice_property_key`]' \
            '-s;[`_choice_property_key`]' \
            '-t;*,[`_choice_dataset_type`]' \

    elif [[ "$*" == "zfs create" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-o;*[`_choice_property`]' \
        | \
        _patch_table_edit_arguments ';;' 'filesystem-volume;[`_choice_filesystem_volume`]'

    elif [[ "$*" == "zfs snapshot" ]] \
      || [[ "$*" == "zfs clone" ]] \
      || [[ "$*" == "zfs change-key" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_options \
            '-o;*[`_choice_property`]' \

    elif [[ "$*" == "zfs send" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-I;[`_choice_snapshot`]' \
            '-i;[`_choice_snapshot`]' \


    elif [[ "$*" == "zfs get" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-o;*,[`_choice_list_field`]' \
            '-s;*,[`_choice_source_type`]' \
            '-t;*,[`_choice_dataset_type`]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'property;[`_choice_get_property`]' \
            'dataset;[`_choice_dataset`]'

    elif [[ "$*" == "zfs set" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'property;*[`_choice_property`]'

    elif [[ "$*" == "zfs userspace" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-S;[`_choice_userspace_field`]' \
            '-o;*,[`_choice_userspace_field`]' \
            '-s;[`_choice_userspace_field`]' \
            '-t;*,[`_choice_userspace_type`]' \
        | \
        _patch_table_edit_arguments ';;' 'filesystem-snapshot-path;[`_choice_filesystem_snapshot_path`]'

    elif [[ "$*" == "zfs allow" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-g;*,[`_module_os_group`]' \
            '-u;*,[`_module_os_user`]' \

    elif [[ "$*" == "zfs unallow" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'filesystem-volume;[`_choice_filesystem_volume`]'

    elif [[ "$*" == "zfs program" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pool;[`_choice_pool`]'

    else
        echo "$table"
    fi
}

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
