#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a --ac_adapter               AC adapter information
# @flag -A --Asus                     show supported Asus ACPI extensions (LCD brightness level, video out routing DSTD/acpi4asus info)
# @flag -b                            battery status, available batteries only
# @flag -B --battery                  battery status, all info on all battery entries
# @flag -c --cpu                      CPU information (type, speed, cache size, frequency scaling, c-states, .
# @flag -e                            show just about everything
# @flag -f --fan                      show fan status
# @option -F[1|0] <x>                 force fan on (x=1) or switch back to auto mode (x=0).
# @flag -h --help                     show this help screen
# @flag -j                            eject ultrabay device (Thinkpad only)
# @option -l[`_choice_level`] <x>     set LCD brightness level to x, where x is 0..7 (Toshiba and Thinkpad only)
# @option -m[1|0] <x>                 switch the mail led on (x=1) or off (x=0) (Asus only)
# @option -n[1|0] <x>                 switch the wireless led on (x=1) or off (x=0).
# @option -o[1|0] <x>                 set LCD on (x=1) or off (x=0).
# @flag -s --suspend                  suspend to memory (sleep state S3), if supported
# @flag -S                            suspend to disk (sleep state S4), if supported
# @flag -t --thermal                  thermal information, including trip_points
# @flag -T --Toshiba                  show supported Toshiba ACPI extensions (LCD brightness level, video out routing, fan status)
# @flag -v                            be more verbose (more detailed error messages, only usefull combined with other options)
# @flag -V --version                  show application version number and release date
# @flag -w --wakeup                   show wakeup capable devices
# @option -W <x>                      enable/disable wakeup capable device x.
# @option -z[`_choice_level2`] <x>    set Asus LCD brightness level to x, where x is 0..15 (Asus only).

_choice_level() {
    seq 0 7
}

_choice_level2() {
    seq 0 15
}

command eval "$(argc --argc-eval "$0" "$@")"