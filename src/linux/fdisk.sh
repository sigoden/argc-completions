_patch_table() {
    _patch_table_edit_options \
        '--color;[auto|never|always]' \
        '--compatibility;[dos|nondos]' \
        '--lock;[yes|no|nonblock]' \
        '--units;[cylinders|sectors]' \
        '--wipe-partitions;[auto|never|always]' \
    | \
    _patch_table_edit_arguments ';;' 'devices...;[`_choice_disk`]'
}

_choice_disk() {
    _argc_util_comp_path
    _choice_block_device
}

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | \
    yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}
