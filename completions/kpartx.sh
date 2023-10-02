#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a    add partition devmappings
# @flag -r    devmappings will be readonly
# @flag -d    del partition devmappings
# @flag -u    update partition devmappings
# @flag -l    list partitions devmappings that would be added by -a
# @flag -p    set device name-partition number delimiter
# @flag -g    force GUID partition table (GPT)
# @flag -f    force devmap create
# @flag -v    verbose
# @flag -n    nosync mode.
# @flag -s    sync mode (Default).
# @arg path

command eval "$(argc --argc-eval "$0" "$@")"