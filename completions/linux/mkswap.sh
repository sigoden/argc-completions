#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --check                          check bad blocks before creating the swap area
# @flag -f --force                          allow swap size area be larger than device
# @option -p --pagesize <SIZE>              specify page size in bytes
# @option -L --label                        specify label
# @option -v --swapversion <NUM>            specify swap-space version number
# @option -U --uuid                         specify the uuid to use
# @flag --verbose                           verbose output
# @option --lock[yes|no|nonblock] <mode>    use exclusive device lock (yes, no or nonblock)
# @flag -h --help                           display this help
# @flag -V --version                        display version
# @arg device[`_choice_block_device`]

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | \
    yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}

command eval "$(argc --argc-eval "$0" "$@")"