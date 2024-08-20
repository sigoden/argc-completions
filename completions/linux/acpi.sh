#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --battery              battery information
# @flag -i --details              show additional details if available: - battery capacity information - temperature trip points
# @flag -a --ac-adapter           ac adapter information
# @flag -t --thermal              thermal information
# @flag -c --cooling              cooling information
# @flag -V --everything           show every device, overrides above options
# @flag -s --show-empty           show non-operational devices
# @flag -f --fahrenheit           use fahrenheit as the temperature unit
# @flag -k --kelvin               use kelvin as the temperature unit
# @option -d --directory <dir>    path to ACPI info (/sys/class resp.
# @flag -p --proc                 use old proc interface instead of new sys interface
# @flag -h --help                 display this help and exit
# @flag -v --version              output version information and exit

command eval "$(argc --argc-eval "$0" "$@")"