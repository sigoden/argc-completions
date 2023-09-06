#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                     Show this help
# @flag --version                     Show package version
# @flag --no-pager                    Do not pipe output into a pager
# @flag --system                      Operate on system systemd instance
# @flag --user                        Operate on user systemd instance
# @flag --global                      Operate on global user configuration
# @option -H --host <[USER@]HOST>     Operate on remote host
# @option -M --machine <CONTAINER>    Operate on local container
# @flag --order                       Show only order in the graph
# @flag --require                     Show only requirement in the graph
# @option --from-pattern <GLOB>       Show only origins in the graph
# @option --to-pattern <GLOB>         Show only destinations in the graph
# @option --fuzz <SECONDS>            Also print services which finished SECONDS earlier than the latest in the branch
# @option --man <BOOL>                Do [not] check for existence of man pages
# @option --generators <BOOL>         Do [not] run unit generators (requires privileges)
# @option --iterations <N>            Show the specified number of iterations
# @option --base-time <TIMESTAMP>     Calculate calendar times relative to specified time

# {{ systemd-analyze blame
# @cmd Print list of running units ordered by time to init
blame() {
    :;
}
# }} systemd-analyze blame

# {{ systemd-analyze critical-chain
# @cmd Print a tree of the time critical chain of units
critical-chain() {
    :;
}
# }} systemd-analyze critical-chain

# {{ systemd-analyze plot
# @cmd Output SVG graphic showing service initialization
plot() {
    :;
}
# }} systemd-analyze plot

# {{ systemd-analyze dot
# @cmd Output dependency graph in dot(1) format
# @arg unit*[`_choice_unit`]
dot() {
    :;
}
# }} systemd-analyze dot

# {{ systemd-analyze dump
# @cmd Output state serialization of service manager
dump() {
    :;
}
# }} systemd-analyze dump

# {{ systemd-analyze cat-config
# @cmd Show configuration file and drop-ins
cat-config() {
    :;
}
# }} systemd-analyze cat-config

# {{ systemd-analyze unit-files
# @cmd List files and symlinks for units
unit-files() {
    :;
}
# }} systemd-analyze unit-files

# {{ systemd-analyze unit-paths
# @cmd List load directories for units
unit-paths() {
    :;
}
# }} systemd-analyze unit-paths

# {{ systemd-analyze exit-status
# @cmd List exit status definitions
# @arg status*
exit-status() {
    :;
}
# }} systemd-analyze exit-status

# {{ systemd-analyze capability
# @cmd List capability definitions
# @arg cap*
capability() {
    :;
}
# }} systemd-analyze capability

# {{ systemd-analyze syscall-filter
# @cmd Print list of syscalls in seccomp filter
syscall-filter() {
    :;
}
# }} systemd-analyze syscall-filter

# {{ systemd-analyze condition
# @cmd Evaluate conditions and asserts
# @arg condition*
condition() {
    :;
}
# }} systemd-analyze condition

# {{ systemd-analyze verify
# @cmd Check unit files for correctness
# @arg file*
verify() {
    :;
}
# }} systemd-analyze verify

# {{ systemd-analyze calendar
# @cmd Validate repetitive calendar time events
# @arg spec*
calendar() {
    :;
}
# }} systemd-analyze calendar

# {{ systemd-analyze timestamp
# @cmd Validate a timestamp
# @arg timestamp*
timestamp() {
    :;
}
# }} systemd-analyze timestamp

# {{ systemd-analyze timespan
# @cmd Validate a time span
# @arg span*
timespan() {
    :;
}
# }} systemd-analyze timespan

# {{ systemd-analyze security
# @cmd Analyze security of unit
# @arg unit*[`_choice_unit`]
security() {
    :;
}
# }} systemd-analyze security

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_unit() {
    _argc_util_parallel _choice_unit_only ::: _choice_unit_file
}

_choice_unit_file() {
    _systemctl list-unit-files -o json | yq '.[] | .unit_file'
}

_choice_unit_only() {
    _systemctl list-units -o json | yq '.[] | .unit + "	" + .description'
}

_systemctl() {
    systemctl $(_argc_util_param_select_options --user) "$@"
}

command eval "$(argc --argc-eval "$0" "$@")"