#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -D --discard                              print discard capabilities
# @option -E --dedup*,[`_choice_column`] <column>  de-duplicate output by <column>
# @option -I --include <list>                     show only devices with specified major numbers
# @flag -J --json                                 use JSON output format
# @flag -O --output-all                           output all columns
# @flag -P --pairs                                use key="value" output format
# @flag -S --scsi                                 output info about SCSI devices
# @option -T --tree[`_choice_column`] <column>    use tree format output
# @flag -a --all                                  print all devices
# @flag -b --bytes                                print SIZE in bytes rather than in human readable format
# @flag -d --nodeps                               don't print slaves or holders
# @option -e --exclude <list>                     exclude devices by major number (default: RAM disks)
# @flag -f --fs                                   output info about filesystems
# @flag -i --ascii                                use ascii characters only
# @flag -l --list                                 use list format output
# @flag -M --merge                                group parents of sub-trees (usable for RAIDs, Multi-path)
# @flag -m --perms                                output info about permissions
# @flag -n --noheadings                           don't print headings
# @option -o --output*,[`_choice_column`] <list>  output columns
# @flag -p --paths                                print complete device path
# @flag -r --raw                                  use raw output format
# @flag -s --inverse                              inverse dependencies
# @flag -t --topology                             output info about topology
# @option -w --width <num>                        specifies output width as number of characters
# @option -x --sort[`_choice_column`] <column>    sort output by <column>
# @flag -z --zoned                                print zone model
# @option --sysroot <dir>                         use specified directory as system root
# @flag -h --help                                 display this help
# @flag -V --version                              display version
# @arg device*[`_choice_block_device`]

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

command eval "$(argc --argc-eval "$0" "$@")"