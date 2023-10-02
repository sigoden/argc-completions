#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -s --fstab                                 search in static table of filesystems
# @flag -m --mtab                                  search in table of mounted filesystems (includes user space mount options)
# @flag -k --kernel                                search in kernel table of mounted filesystems (default)
# @option -p --poll <list>                         monitor changes in table of mounted filesystems
# @option -w --timeout <num>                       upper limit in milliseconds that --poll will block
# @flag -A --all                                   disable all built-in filters, print all filesystems
# @flag -a --ascii                                 use ASCII chars for tree formatting
# @flag -b --bytes                                 print sizes in bytes rather than in human readable format
# @flag -C --nocanonicalize                        don't canonicalize when comparing paths
# @flag -c --canonicalize                          canonicalize printed paths
# @flag -D --df                                    imitate the output of df(1)
# @option -d --direction <word>                    direction of search, 'forward' or 'backward'
# @option -e --evaluate[LABEL|UUID|PARTUUID|PARTLABEL]  convert tags to device names
# @option -F --tab-file <path>                     alternative file for -s, -m or -k options
# @flag -f --first-only                            print the first found filesystem only
# @flag -i --invert                                invert the sense of matching
# @flag -J --json                                  use JSON output format
# @flag -l --list                                  use list format output
# @option -N --task[`_module_os_pid`] <tid>        use alternative namespace (/proc/<tid>/mountinfo file)
# @flag -n --noheadings                            don't print column headings
# @option -O --options <list>                      limit the set of filesystems by mount options
# @option -o --output*[`_choice_column`] <list>    the output columns to be shown
# @flag --output-all                               output all available columns
# @flag -P --pairs                                 use key="value" output format
# @flag --pseudo                                   print only pseudo-filesystems
# @flag --shadowed                                 print only filesystems over-mounted by another filesystem
# @flag -R --submounts                             print all submounts for the matching filesystems
# @flag -r --raw                                   use raw output format
# @flag --real                                     print only real filesystems
# @option -S --source[`_choice_source`] <string>   the device to mount (by name, maj:min, LABEL=, UUID=, PARTUUID=, PARTLABEL=)
# @option -T --target <path>                       the path to the filesystem to use
# @flag --tree                                     enable tree format output if possible
# @option -M --mountpoint[`_choice_mountpoint`] <dir> <the> <mountpoint> <directory>
# @option -t --types <list>                        limit the set of filesystems by FS types
# @flag -U --uniq                                  ignore filesystems with duplicate target
# @flag -u --notruncate                            don't truncate text in columns
# @flag -v --nofsroot                              don't print [/dir] for bind or btrfs mounts
# @flag -x --verify                                verify mount table content (default is fstab)
# @flag --verbose                                  print more details
# @flag --vfs-all                                  print all VFS options
# @flag -h --help                                  display this help
# @flag -V --version                               display version
# @arg device-mountpoint[`_choice_device_mountpoint`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_column() {
    findmnt -h | sed -n '/^Available output columns:/,/^\s*$/ {//d; s/^\s*\(\S\+\) \(.*\)/\1\t\2/p}'
}

_choice_source() {
    cat <<-'EOF' | _argc_util_comp_kv =
LABEL=`_choice_label`
UUID=`_choice_uuid`
PARTLABEL=`_choice_partlabel`
PARTUUID=`_choice_partuuid`
*=`_choice_device_maj_min`
EOF
}

_choice_mountpoint() {
    findmnt -lnve -o TARGET
}

_choice_device_mountpoint() {
    _argc_util_parallel _choice_device ::: _choice_mountpoint
}

_choice_device() {
    findmnt -n -o SOURCE
}

_choice_device_maj_min() {
    _argc_util_parallel _choice_device ::: _choice_maj_min
}

_choice_label() {
    findmnt -n -o LABEL | sed '/^\s*$/ d'
}

_choice_maj_min() {
    findmnt -n -o MAJ:MIN
}

_choice_partlabel() {
    findmnt -n -o PARTLABEL | sed '/^\s*$/ d'
}

_choice_partuuid() {
    findmnt -n -o PARTUUID | sed '/^\s*$/ d'
}

_choice_uuid() {
    findmnt -n -o UUID | sed '/^\s*$/ d'
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"