#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                                        Prints a usage message to STDOUT and exits.
# @flag --help                                    Prints a usage message to STDOUT and exits.
# @flag --usage                                   Prints a usage message to STDOUT and exits.
# @flag -V                                        Prints version, copyright, license, home page and SVN revision information for your copy of smartctl to STDOUT and then exits.
# @flag --version                                 Prints version, copyright, license, home page and SVN revision information for your copy of smartctl to STDOUT and then exits.
# @flag --copyright                               Prints version, copyright, license, home page and SVN revision information for your copy of smartctl to STDOUT and then exits.
# @flag --license                                 Prints version, copyright, license, home page and SVN revision information for your copy of smartctl to STDOUT and then exits.
# @flag -i --info                                 Prints the device model number, serial number, firmware version, and ATA Standard version/revision information.
# @option --identify[`_choice_identify`] <value>  [ATA only] Prints an annotated table of the IDENTIFY DEVICE data.
# @flag -a --all                                  Prints all SMART information about the device.
# @flag -x --xall                                 Prints all SMART and non-SMART information about the device.
# @flag --scan                                    Scans for devices and prints each device name, device type and protocol ([ATA] or [SCSI]) info.
# @flag --scan-open                               Same as --scan, but also tries to open each device before printing device info.
# @option -g --get*[`_choice_setting_get`] <NAME>  Get non-SMART device settings.
# @option -j --json <cgiosuvy>                    Enables JSON or YAML output mode.
# @option -q --quietmode[`_choice_quietmode`] <TYPE>  Specifies that smartctl should run in one of the quiet modes described here.
# @option -d --device[`_choice_device`] <TYPE>    Specifies the type of the device.
# @option -T --tolerance[`_choice_tolerance`] <TYPE>  [ATA only] Specifies how tolerant smartctl should be of ATA and SMART command failures.
# @option -b --badsum[warn|exit|ignore] <TYPE>    [ATA only] Specifies the action smartctl should take if a checksum error is detected in the: (1) Device Identity Structure, (2) SMART Self-Test Log Structure, (3) SMART Attribute Value Structure, (4) SMART Attribute Threshold Structure, or (5) ATA Error Log Structure.
# @option -r --report[`_choice_report`] <TYPE>    Intended primarily to help smartmontools developers understand the behavior of smartmontools on non-conforming or poorly conforming hardware.
# @option -n --nocheck <POWERMODE[,STATUS[,STATUS2]]>  [ATA, SCSI] Specifies if smartctl should exit before performing any checks when the device is in a low-power mode.
# @option -s --smart[on|off] <VALUE>              Enables or disables SMART on device.
# @option -o --offlineauto[on|off] <VALUE>        [ATA only] Enables or disables SMART automatic offline test, which scans the drive every four hours for disk defects.
# @option -S --saveauto[on|off] <VALUE>           [ATA] Enables or disables SMART autosave of device vendor-specific Attributes.
# @option --set*[`_choice_setting_set`] <NAME[,VALUE]>  Gets/sets non-SMART device settings.
# @flag -H --health                               Prints the health status of the device.
# @flag -c --capabilities                         [ATA] Prints only the generic SMART capabilities.
# @flag -A --attributes                           [ATA] Prints only the vendor specific SMART Attributes.
# @option -f --format[`_choice_format`]           [ATA only] Selects the output format of the attributes:
# @option -l --log[`_choice_log`] <TYPE>          Prints various device logs.
# @option -v --vendorattribute*[`_choice_vendorattribute`] <ID,FORMAT>  [ATA only] Sets a vendor-specific raw value print FORMAT, an optional BYTEORDER and an optional NAME for Attribute ID.
# @option -F --firmwarebug[`_choice_firmwarebug`] <TYPE>  [ATA only] Modifies the behavior of smartctl to compensate for some known and understood device firmware or driver bug.
# @option -P --presets <TYPE>                     [ATA only] Specifies whether smartctl should use any preset options that are available for this drive.
# @option -B --drivedb <[+]FILE>                  [ATA only] Read the drive database from FILE.
# @option -t --test[`_choice_test`]               Executes TEST immediately.
# @flag -C --captive                              [ATA] Runs self-tests in captive mode.
# @flag -X --abort                                Aborts non-captive SMART Self Tests.
# @arg device

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_identify() {
    cat <<-'EOF'
b	print all bits from valid words
n	suppress printing bits from valid words
v	print all bits from valid words
wb	print all bits from all words
wn	suppress printing bits from all words
wv	print all bits from all words
EOF
}

_choice_setting_get() {
    _helper_raw_setting | sed -e 's/=.*;;/;;/' -e 's/;;/\t/'
}

_choice_quietmode() {
    cat <<-'EOF'
errorsonly	only print
silent	print no output.
noserial	Do not print the serial number of the device.
EOF
}

_choice_device() {
    printf "%s\n" ata scsi nvme sat usbcypress usbjmicron usbprolific usbsunplus \
        marvell areca 3ware hpt megaraid cciss auto test
}

_choice_tolerance() {
    printf "%s\n" normal conservative permissive verypermissive
}

_choice_report() {
    printf "%s\n" ioctl ataioctl scsiioctl nvmeioctl    
}

_choice_setting_set() {
    _helper_raw_setting | _argc_util_comp_kv ,
}

_choice_format() {
    cat <<-'EOF'
old	Old smartctl format.
brief	New format which fits into 80 columns (except in some rare cases).
hex,id	Print all attribute IDs as hexadecimal numbers.
hex,val	Print all normalized values as hexadecimal numbers.
hex	Same as '-f hex,id -f hex,val'.
EOF
}

_choice_log() {
    printf "%s\n" error selftest selective directory xerror xselftest background \
        sasphy sataphy scttemp scttempsts scttemphist scttempint scterc devstat \
        ssd gplog smartlog nvmelog

}

_choice_vendorattribute() {
    smartctl -v help | sed -n 's/^\s\+\(\w\+,\w\+\).*/\1/p'
}

_choice_firmwarebug() {
    printf "%s\n" none nologdir samsung samsung2 samsung3 xerrorlba swapid
}

_choice_test() {
    prinf "%s\n" offline short long conveyance force vendor select pending afterselect,on afterselect,off scttempint
}

_helper_raw_setting() {
    cat <<-'EOF'
all;;Gets all values.
aam=off;;[ATA only] Gets/sets the Automatic Acoustic Management (AAM) feature (if supported).
lookahead=on,off;; [ATA only] Gets/sets the read look-ahead feature (if supported).
security;;[ATA only] Gets the status of ATA Security feature (if supported).
security-freeze;;[ATA only] Sets ATA Security feature to frozen mode. 
standby=off,now;;[ATA] Sets the standby (spindown) timer and places the drive in the IDLE mode.
wcache=on,off;;Gets/sets the volatile write cache feature (if supported).
wcache-sct=ata,on,off;;[ATA only] Gets/sets the write cache feature through SCT Feature Control (if sup‐ported).
wcreorder=on,off;;[ATA only] Gets/sets Write Cache Reordering.
rcache=on,off;;[SCSI only] Gets/sets the 'Read Cache Disable' (RCE) bit.
dsn=on,off;;[ATA only] Gets/sets the DSN feature (if supported).
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"