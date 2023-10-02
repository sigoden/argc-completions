_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--mountpoint;[`_choice_mountpoint`]' \
        '--output;*[`_choice_column`]' \
        '--source;[`_choice_source`]' \
        '--task;[`_module_os_pid`]' \
    | \
    _patch_table_edit_arguments ';;' 'device-mountpoint;[`_choice_device_mountpoint`]'

}

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
