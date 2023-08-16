_patch_help() { 
    $@ --help | sed '/^Available output columns:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--dedup;*,[`_choice_column`]' \
        '--output;*,[`_choice_column`]' \
        '--sort;[`_choice_column`]' \
        '--tree;[`_choice_column`]' \
    | \
    _patch_table_edit_arguments 'device;*[`_choice_block_device`]'
}

_choice_column() {
    cat <<-'EOF'
NAME	device name
KNAME	internal kernel device name
PATH	path to the device node
MAJ:MIN	major:minor device number
FSAVAIL	filesystem size available
FSSIZE	filesystem size
FSTYPE	filesystem type
FSUSED	filesystem size used
FSUSE%	filesystem use percentage
FSVER	filesystem version
MOUNTPOINT	where the device is mounted
LABEL	filesystem LABEL
UUID	filesystem UUID
PTUUID	partition table identifier (usually UUID)
PTTYPE	partition table type
PARTTYPE	partition type code or UUID
PARTTYPENAME	partition type name
PARTLABEL	partition LABEL
PARTUUID	partition UUID
PARTFLAGS	partition flags
RA	read-ahead of the device
RO	read-only device
RM	removable device
HOTPLUG	removable or hotplug device (usb, pcmcia, ...)
MODEL	device identifier
SERIAL	disk serial number
SIZE	size of the device
STATE	state of the device
OWNER	user name
GROUP	group name
MODE	device node permissions
ALIGNMENT	alignment offset
MIN-IO	minimum I/O size
OPT-IO	optimal I/O size
PHY-SEC	physical sector size
LOG-SEC	logical sector size
ROTA	rotational device
SCHED	I/O scheduler name
RQ-SIZE	request queue size
TYPE	device type
DISC-ALN	discard alignment offset
DISC-GRAN	discard granularity
DISC-MAX	discard max bytes
DISC-ZERO	discard zeroes data
WSAME	write same max bytes
WWN	unique storage identifier
RAND	adds randomness
PKNAME	internal parent kernel device name
HCTL	Host:Channel:Target:Lun for SCSI
TRAN	device transport type
SUBSYSTEMS	de-duplicated chain of subsystems
REV	device revision
VENDOR	device vendor
ZONED	zone model
DAX	dax-capable device
EOF
}

_choice_block_device() {
    lsblk --json -o KNAME,LABEL,PARTLABEL,PARTUUID,PATH,SIZE,PARTTYPENAME,TYPE,UUID | yq '.blockdevices[] | .path + "	" + .size + " " + (.parttypename // "")'
}
