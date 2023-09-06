#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help               Show this help
# @flag --version               Print version
# @option --esp-path <PATH>     Path to the EFI System Partition (ESP)
# @option --boot-path <PATH>    Path to the $BOOT partition
# @flag -p --print-esp-path     Print path to the EFI System Partition
# @flag -x --print-boot-path    Print path to the $BOOT partition
# @flag --no-variables          Don't touch EFI variables
# @flag --no-pager              Do not pipe output into a pager
# @flag --graceful              Don't fail when the ESP cannot be found or EFI variables cannot be written
# @option --make-machine-id-directory[yes|no|auto]  Create $BOOT/$MACHINE_ID

# {{ bootctl status
# @cmd Show status of installed boot loader and EFI variables
status() {
    :;
}
# }} bootctl status

# {{ bootctl reboot-to-firmware
# @cmd Query or set reboot-to-firmware EFI flag
reboot-to-firmware() {
    :;
}
# }} bootctl reboot-to-firmware

# {{ bootctl systemd-efi-options
# @cmd Query or set system options string in EFI variable
systemd-efi-options() {
    :;
}
# }} bootctl systemd-efi-options

# {{ bootctl list
# @cmd List boot loader entries
list() {
    :;
}
# }} bootctl list

# {{ bootctl set-default
# @cmd Set default boot loader entry
# @arg id[`_choice_boot`]
set-default() {
    :;
}
# }} bootctl set-default

# {{ bootctl set-oneshot
# @cmd Set default boot loader entry, for next boot only
# @arg id[`_choice_boot`]
set-oneshot() {
    :;
}
# }} bootctl set-oneshot

# {{ bootctl install
# @cmd Install systemd-boot to the ESP and EFI variables
install() {
    :;
}
# }} bootctl install

# {{ bootctl update
# @cmd Update systemd-boot in the ESP and EFI variables
update() {
    :;
}
# }} bootctl update

# {{ bootctl remove
# @cmd Remove systemd-boot from the ESP and EFI variables
remove() {
    :;
}
# }} bootctl remove

# {{ bootctl is-installed
# @cmd Test whether systemd-boot is installed in the ESP
is-installed() {
    :;
}
# }} bootctl is-installed

# {{ bootctl random-seed
# @cmd Initialize random seed in ESP and EFI variables
random-seed() {
    :;
}
# }} bootctl random-seed

_choice_boot() {
    bootctl --no-legend --no-pager list | \
    sed -n 's/^\s*\(\S\+\)\s\+\(.*\)$/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"