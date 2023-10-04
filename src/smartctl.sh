_patch_help() {
    _patch_help_run_man $@ | sed 's/-g NAME, --get=NAME, -s NAME\[,VALUE\], //'
}

_patch_table() {
    _patch_table_edit_options \
        '--badsum;[warn|exit|ignore]' \
        '--device;[`_choice_device`]' \
        '--firmwarebug;[`_choice_firmwarebug`]' \
        '--format;[`_choice_format`]' \
        '--get;*[`_choice_setting_get`]' \
        '--identify(<value>);[`_choice_identify`]' \
        '--log;[`_choice_log`]' \
        '--no-check;[never|sleep|standby|idle]' \
        '--offlineauto;[on|off]' \
        '--quietmode;[`_choice_quietmode`]' \
        '--report;[`_choice_report`]' \
        '--saveauto;[on|off]' \
        '--set;*[`_choice_setting_set`]' \
        '--smart;[on|off]' \
        '--test;[`_choice_test`]' \
        '--tolerance;[`_choice_tolerance`]' \
        '--vendorattribute;[`_choice_vendorattribute`]' \

}

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
