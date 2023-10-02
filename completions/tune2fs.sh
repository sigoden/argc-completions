#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c <max-mount-counts>              Adjust the number of mounts after which the file system will be checked by e2fsck(8).
# @option -C <mount-count>                   Set the number of times the file system has been mounted.
# @option -e*[`_choice_error_behavior`] <error-behavior>  Change the behavior of the kernel code when errors are detected.
# @option -E*[`_choice_extended_option`] <extended-options>  Set extended options for the file system.
# @flag -f                                   Force the tune2fs operation to complete even in the face of errors.
# @option -g*[`_module_os_group`] <group>    Set the group which can use the reserved file system blocks.
# @option -i[d|m|w]                          interval-between-checks Adjust the maximal time between two file system checks.
# @flag -I                                   Change the inode size used by the file system.
# @flag -j                                   Add an ext3 journal to the file system.
# @option -J*[`_choice_journal_option`] <journal-options>  Override the default ext3 journal parameters.
# @flag -l                                   List the contents of the file system superblock, including the current values of the parameters that can be set via this program.
# @option -L <volume-label>                  Set the volume label of the file system.
# @option -m <reserved-blocks-percentage>    Set the percentage of the file system which may only be allocated by privileged processes.
# @option -M <last-mounted-directory>        Set the last-mounted directory for the file system.
# @option -o*,[`_choice_mount_option`] <[^]mount-option[,...]>  Set or clear the indicated default mount options in the file system.
# @option -O*,[`_choice_feature`] <[^]feature[,...]>  Set or clear the indicated file system features (options) in the file system.
# @option -r <reserved-blocks-count>         Set the number of reserved file system blocks.
# @option -Q*[`_choice_quota_option`] <quota-options>  Sets 'quota' feature on the superblock and works on the quota files for the given quota type.
# @option -T <time-last-checked>             Set the time the file system was last checked using e2fsck.
# @option -u <user>                          Set the user who can use the reserved file system blocks.
# @option -U*[`_choice_uuid`] <UUID>         Set the universally unique identifier (UUID) of the file system to UUID.
# @option -z <undo_file>                     Before overwriting a file system block, write the old contents of the block to an undo file.
# @arg device-path

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_error_behavior() {
    cat <<-'EOF'
continue	Continue normal execution.
remount-ro	Remount file system read-only.
panic	Cause a kernel panic.
EOF
}

_choice_extended_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
clear_mmp;;Reset the MMP block (if any) back to the clean state.
mmp_update_interval=;;Adjust  the  initial  MMP update interval to interval seconds.
stride=;;Configure  the  file  system for a RAID array with stride-size file system blocks.
stripe_width=;;Configure the file system for a RAID array with stripe-width file system blocks per stripe.
hash_alg=;;Set  the  default hash algorithm used for file systems with hashed b-tree directories.
encoding=;;Enable the casefold feature in the super block and set encoding-name as the encoding to be used.
encoding_flags=;;Define parameters for file name character encoding operations.
mount_opts=;;Set  a set of default mount options which will be used when the file system is mounted.
force_fsck;;Set  a  flag in the file system superblock indicating that errors have been found.
test_fs;;Set a flag in the file system superblock indicating that it may be  mounted  using  experimental  kernel code, such as the ext4dev file system.
^test_fs;;Clear  the  test_fs  flag, indicating the file system should only be mounted using production-level file system code.
EOF
}

_choice_journal_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
size=;;Create  a  journal  stored  in the file system of size journal-size megabytes.
fast_commit_size=;;Create an additional fast commit journal area of size fast-commit-size kilobytes.
location=;;Specify  the  location of the journal. 
device=;;Attach  the  file  system to the journal block device located on external-journal.
EOF
}

_choice_mount_option() {
    if [[ "$ARGC_CWORD" == '^'* ]]; then
        echo __argc_prefix=^
        echo __argc_filter="${ARGC_CWORD:1}"
    fi
    cat <<-'EOF'
debug	Enable debugging code for this file system.
bsdgroups	Emulate BSD behavior when creating new files
user_xattr	Enable user-specified extended attributes.
acl	Enable Posix Access Control Lists.
uid16	Disables 32-bit UIDs and GIDs.
journal_data	When  the file system is mounted with journaling enabled, all data (not just metadata) is committed into the journal prior to being written into the main file system.
journal_data_ordered	When the file system is mounted with journaling enabled, all data is forced directly  out  to  the  main file system prior to its metadata being committed to the journal.
journal_data_writeback	When  the  file system is mounted with journaling enabled, data may be written into the main file system after its metadata has been committed to the journal.
nobarrier	The  file  system will be mounted with barrier operations in the journal disabled.
block_validity	The file system will be mounted with the block_validity option enabled, which causes extra checks to  be performed  after  reading or writing from the file system.
discard	The file system will be mounted with the discard mount option.
nodelalloc	The file system will be mounted with the nodelalloc mount option.
EOF
}

_choice_feature() {
    if [[ "$ARGC_CWORD" == '^'* ]]; then
        echo __argc_prefix=^
        echo __argc_filter="${ARGC_CWORD:1}"
    fi
    cat <<-'EOF'
64bit	Enable the file system to be larger than 2^32 blocks.
casefold	Enable support for file system level casefolding.
dir_index	Use hashed b-trees to speed up lookups for large directories.
dir_nlink	Allow more than 65000 subdirectories per directory.
ea_inode	Allow the value of each extended attribute to be placed in the data blocks of a separate inode if neces‐sary, increasing the limit on the size and number of extended attributes per file.
encrypt	Enable support for file system level encryption. Tune2fs currently only supports setting this file sys‐tem feature.
extent	Enable the use of extent trees to store the location of data blocks in inodes.
extra_isize	Enable the extended inode fields used by ext4.
filetype	Store file type information in directory entries.
flex_bg	Allow bitmaps and inode tables for a block group to be placed anywhere on the storage media.
has_journal	Use a journal to ensure file system consistency even across unclean shutdowns.
fast_commit	Enable fast commit journaling feature to improve fsync latency.
large_dir	Increase the limit on the number of files per directory.
huge_file	Support files larger than 2 terabytes in size.
large_file	File System can contain files that are greater than 2GB.
metadata_csum	Store a checksum to protect the contents in each metadata block.
metadata_csum_seed	Allow the file system to store the metadata checksum seed in the superblock, enabling the administrator to change the UUID of a file system using the metadata_csum feature while it is mounted.
mmp	Enable or disable multiple mount protection (MMP) feature.
project	Enable project ID tracking.
quota	Enable internal file system quota inodes.
read-only	Force the kernel to mount the file system read-only.
resize_inode	Reserve space so the block group descriptor table may grow in the future.
sparse_super	Limit the number of backup superblocks to save space on large file systems.
stable_inodes	Prevent the file system from being shrunk or having its UUID changed, in order to allow the use of spe‐cialized encryption settings that make use of the inode numbers and UUID.
uninit_bg	Allow the kernel to initialize bitmaps and inode tables lazily, and to keep a high watermark for the un‐used inodes in a file system, to reduce e2fsck(8) time.
verity	Enable support for verity protected files.
EOF
}

_choice_quota_option() {
    cat <<-'EOF'
usrquota	Sets/clears user quota inode in the superblock.
grpquota	Sets/clears group quota inode in the superblock.
prjquota	Sets/clears project quota inode in the superblock.
^usrquota	Sets/clears user quota inode in the superblock.
^grpquota	Sets/clears group quota inode in the superblock.
^prjquota	Sets/clears project quota inode in the superblock.
EOF
}

_choice_uuid() {
    cat <<-'EOF'
clear	clear the file system UUID
random	generate a new randomly-generated UUID
time	generate a new time-based UUID
EOF
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"