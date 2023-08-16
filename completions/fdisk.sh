#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --sector-size <size>                  physical and logical sector size
# @flag -B --protect-boot                          don't erase bootbits when creating a new label
# @option -c --compatibility[dos|nondos] <mode>    mode is 'dos' or 'nondos' (default)
# @option -L --color[auto|never|always] <when>     colorize output (auto, always or never) colors are enabled by default
# @flag -l --list                                  display partitions and exit
# @flag -x --list-details                          like --list but with more details
# @flag -n --noauto-pt                             don't create default partition table on empty devices
# @option -o --output <list>                       output columns
# @option -t --type <type>                         recognize specified partition table type only
# @option -u --units[cylinders|sectors] <unit>     display units: 'cylinders' or 'sectors' (default)
# @flag -s --getsz                                 display device size in 512-byte sectors [DEPRECATED]
# @flag --bytes                                    print SIZE in bytes rather than in human readable format
# @option --lock[yes|no|nonblock] <mode>           use exclusive device lock (yes, no or nonblock)
# @option -w --wipe <mode>                         wipe signatures (auto, always or never)
# @option -W --wipe-partitions[auto|never|always] <mode>  wipe signatures from new partitions (auto, always or never)
# @option -C --cylinders <number>                  specify the number of cylinders
# @option -H --heads <number>                      specify the number of heads
# @option -S --sectors <number>                    specify the number of sectors per track
# @flag -h --help                                  display this help
# @flag -V --version                               display version
# @arg devices*[`_choice_disk`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_disk() {
    _argc_util_comp_path
    _choice_block_device
}

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | \
    yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}

command eval "$(argc --argc-eval "$0" "$@")"