#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -L --color[auto|never|always] <when>    colorize output (auto, always or never) colors are enabled by default
# @flag -z --zero                                 start with zeroed partition table
# @option --lock[yes|no|nonblock] <mode>          use exclusive device lock (yes, no or nonblock)
# @flag -r --read-only                            forced open cfdisk in read-only mode
# @flag -h --help                                 display this help
# @flag -V --version                              display version
# @arg disk![`_choice_disk`]

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