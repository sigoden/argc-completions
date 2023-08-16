_patch_table() { 
    _patch_table_edit_options \
        '--color;[auto|never|always]' \
        '--lock;[yes|no|nonblock]' \
    | \
    _patch_table_edit_arguments 'disk;[`_choice_disk`]'
}

_choice_disk() {
    _argc_util_comp_path
    _choice_block_device
}

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | \
    yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}
