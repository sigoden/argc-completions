#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --all                                    Show all info.
# @flag --arch                                   Show arch info.
# @flag --bios                                   Show bios info.
# @flag --block                                  Show block info.
# @flag --bluetooth                              Show bluetooth info.
# @flag --braille                                Show braille info.
# @flag --bridge                                 Show bridge info.
# @flag --camera                                 Show camera info.
# @flag --cdrom                                  Show cdrom info.
# @flag --chipcard                               Show chipcard info.
# @flag --cpu                                    Show cpu info.
# @flag --disk                                   Show disk info.
# @flag --dsl                                    Show dsl info.
# @flag --dvb                                    Show dvb info.
# @flag --fingerprint                            Show fingerprint info.
# @flag --floppy                                 Show floppy info.
# @flag --framebuffer                            Show framebuffer info.
# @flag --gfxcard                                Show gfxcard info.
# @flag --hub                                    Show hub info.
# @flag --ide                                    Show ide info.
# @flag --isapnp                                 Show isapnp info.
# @flag --isdn                                   Show isdn info.
# @flag --joystick                               Show joystick info.
# @flag --keyboard                               Show keyboard info.
# @flag --memory                                 Show memory info.
# @flag --mmc-ctrl                               Show mmc-ctrl info.
# @flag --modem                                  Show modem info.
# @flag --monitor                                Show monitor info.
# @flag --mouse                                  Show mouse info.
# @flag --netcard                                Show netcard info.
# @flag --network                                Show network info.
# @flag --nvme                                   Show nvme info.
# @flag --partition                              Show partition info.
# @flag --pci                                    Show pci info.
# @flag --pcmcia                                 Show pcmcia info.
# @flag --pcmcia-ctrl                            Show pcmcia-ctrl info.
# @flag --pppoe                                  Show pppoe info.
# @flag --printer                                Show printer info.
# @flag --redasd                                 Show redasd info.
# @flag --reallyall                              Show reallyall info.
# @flag --scanner                                Show scanner info.
# @flag --scsi                                   Show scsi info.
# @flag --smp                                    Show smp info.
# @flag --sound                                  Show sound info.
# @flag --storage-ctrl                           Show storage-ctrl info.
# @flag --sys                                    Show sys info.
# @flag --tape                                   Show tape info.
# @flag --tv                                     Show tv info.
# @flag --uml                                    Show uml info.
# @flag --usb                                    Show usb info.
# @flag --usb-ctrl                               Show usb-ctrl info.
# @flag --vbe                                    Show vbe info.
# @flag --wlan                                   Show wlan info.
# @flag --xen                                    Show xen info.
# @flag --zip                                    Show zip info.
# @flag --short                                  Show only a summary.
# @flag --listmd                                 Normally hwinfo does not report RAID devices.
# @option --only*[`_choice_device`] <DEVNAME>    This option can be given more than once.
# @option --save-config[`_choice_save_config`] <SPEC>  Store config for a particular device below /var/lib/hardware.
# @option --show-config[`_choice_device_udi`] <UDI>  Show saved config data for a particular device.
# @flag --map                                    If disk names have changed (e.g. after a kernel update) this prints a list of disk name mappings.
# @option --debug <N>                            Set debug level to N.
# @flag --verbose                                Increase verbosity.
# @option --log <FILE>                           Write log info to FILE.
# @option --dump-db[0|1] <N>                     Dump hardware data base.
# @flag --version                                Print libhd version.
# @flag --help                                   Print usage.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_device() {
    if [[ -z "$ARGC_CWORD" ]]; then
        echo "/dev/\0"
    else
        _argc_util_comp_path
    fi
}

_choice_save_config() {
    echo all
    _choice_device_udi
}

_choice_device_udi() {
    hwinfo --all | \
    gawk '{
        if (match($0, /^  Unique ID: (.*)$/, arr)) {
            id = arr[1]
        } else if (match($0, /^  Model: "(.*)"/, arr)) {
            print id "\t" arr[1]
        }
    }'
}

command eval "$(argc --argc-eval "$0" "$@")"