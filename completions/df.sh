#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                       include pseudo, duplicate, inaccessible file systems
# @option -B --block-size <SIZE>       scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below
# @flag -h --human-readable            print sizes in powers of 1024 (e.g., 1023M)
# @flag -H --si                        print sizes in powers of 1000 (e.g., 1.1G)
# @flag -i --inodes                    list inode information instead of block usage
# @flag -k                             like --block-size=1K
# @flag -l --local                     limit listing to local file systems
# @flag --no-sync                      do not invoke sync before getting usage info (default)
# @option --output[`_choice_output`] <FIELD_LIST>  use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted.
# @flag -P --portability               use the POSIX output format
# @flag --sync                         invoke sync before getting usage info
# @flag --total                        elide all entries insignificant to available space, and produce a grand total
# @option -t --type[`_choice_type`]    limit listing to file systems of type TYPE
# @flag -T --print-type                print file system type
# @option -x --exclude-type[`_choice_type`] <TYPE>  limit listing to file systems not of type TYPE
# @flag -v                             (ignored)
# @flag --help                         display this help and exit
# @flag --version                      output version information and exit
# @arg file*

_choice_output() {
    printf "%s\n" avail file fstype iavail ipcent itotal iused pcent size source target used
}

_choice_type() {
    cat <<-'EOF'
adfs
cgroup2
efivarfs
hfs
pipefs
securityfs
ufs
autofs
configfs
ext2
hpfs
proc
sockfs
vfat
bdev
cpuset
ext3
hugetlbfs
pstore
swap
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"