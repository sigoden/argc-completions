_patch_table() { 
    _patch_table_edit_options '--lock;[yes|no|nonblock]' | \
    _patch_table_edit_arguments ';;' 'device;[`_choice_block_device`]'
}

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | \
    yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}
