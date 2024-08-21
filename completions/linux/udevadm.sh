#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ udevadm info
# @cmd Query sysfs or the udev database
# @flag -h --help                          Print this message
# @flag -V --version                       Print version of the program
# @option -q --query <TYPE>                Query device information:
# @option -p --path <SYSPATH>              sysfs device path used for query or attribute walk
# @option -n --name                        Node or symlink name used for query or attribute walk
# @flag -r --root                          Prepend dev directory to path names
# @flag -a --attribute-walk                Print all key matches walking along the chain of parent devices
# @option -d --device-id-of-file <FILE>    Print major:minor of device containing this file
# @flag -x --export                        Export key/value pairs
# @flag -P --export-prefix                 Export the key name with a prefix
# @flag -e --export-db                     Export the content of the udev database
# @flag -c --cleanup-db                    Clean up the udev database
# @option -w --wait-for-initialization <SECONDS>  Wait for device to be initialized
info() {
    :;
}
# }} udevadm info

# {{ udevadm trigger
# @cmd Request events from the kernel
# @flag -h --help                               Show this help
# @flag -V --version                            Show package version
# @flag -v --verbose                            Print the list of devices while running
# @flag -n --dry-run                            Do not actually trigger the events
# @flag -q --quiet                              Suppress error logging in triggering events
# @option -t --type                             Type of events to trigger devices  sysfs devices (default) subsystems  sysfs subsystems and drivers
# @option -c --action <ACTION|help>             Event action value, default is "change"
# @option -s --subsystem-match <SUBSYSTEM>      Trigger devices from a matching subsystem
# @option -S --subsystem-nomatch <SUBSYSTEM>    Exclude devices from a matching subsystem
# @option -a --attr-match <FILE[=VALUE]>        Trigger devices with a matching attribute
# @option -A --attr-nomatch <FILE[=VALUE]>      Exclude devices with a matching attribute
# @option -p --property-match <KEY=VALUE>       Trigger devices with a matching property
# @option -g --tag-match <TAG>                  Trigger devices with a matching tag
# @option -y --sysname-match <NAME>             Trigger devices with this /sys path
# @option --name-match <NAME>                   Trigger devices with this /dev name
# @option -b --parent-match <NAME>              Trigger devices with that parent device
# @flag -w --settle                             Wait for the triggered events to complete
# @option --wait-daemon <SECONDS>               Wait for udevd daemon to be initialized before triggering uevents
# @flag --uuid                                  Print synthetic uevent UUID
trigger() {
    :;
}
# }} udevadm trigger

# {{ udevadm settle
# @cmd Wait for pending udev events
# @flag -h --help                       Show this help
# @flag -V --version                    Show package version
# @option -t --timeout <SEC>            Maximum time to wait for events
# @option -E --exit-if-exists <FILE>    Stop waiting if file exists
settle() {
    :;
}
# }} udevadm settle

# {{ udevadm control
# @cmd Control the udev daemon
# @flag -h --help                      Show this help
# @flag -V --version                   Show package version
# @flag -e --exit                      Instruct the daemon to cleanup and exit
# @option -l --log-level <LEVEL>       Set the udev log level for the daemon
# @flag -s --stop-exec-queue           Do not execute events, queue only
# @flag -S --start-exec-queue          Execute events, flush queue
# @flag -R --reload                    Reload rules and databases
# @option -p --property <KEY=VALUE>    Set a global property for all events
# @option -m --children-max <N>        Maximum number of children
# @flag --ping                         Wait for udev to respond to a ping message
# @option -t --timeout <SECONDS>       Maximum time to block for a reply
control() {
    :;
}
# }} udevadm control

# {{ udevadm monitor
# @cmd Listen to kernel and udev events
# @flag -h --help                 Show this help
# @flag -V --version              Show package version
# @flag -p --property             Print the event properties
# @flag -k --kernel               Print kernel uevents
# @flag -u --udev                 Print udev events
# @option -s --subsystem-match <SUBSYSTEM[/DEVTYPE]>  Filter events by subsystem
# @option -t --tag-match <TAG>    Filter events by tag
monitor() {
    :;
}
# }} udevadm monitor

# {{ udevadm test
# @cmd Test an event run
# @flag -h --help                                 Show this help
# @flag -V --version                              Show package version
# @option -a --action <ACTION|help>               Set action string
# @option -N --resolve-names[early|late|never]    When to resolve names
test() {
    :;
}
# }} udevadm test

# {{ udevadm test-builtin
# @cmd Test a built-in command
# @flag -h --help       Print this message
# @flag -V --version    Print version of the program
test-builtin() {
    :;
}
# }} udevadm test-builtin

command eval "$(argc --argc-eval "$0" "$@")"