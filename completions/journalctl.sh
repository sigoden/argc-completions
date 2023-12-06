#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --system                              Show the system journal
# @flag --user                                Show the user journal for the current user
# @option -M --machine <CONTAINER>            Operate on local container
# @option -S --since <DATE>                   Show entries not older than the specified date
# @option -U --until <DATE>                   Show entries not newer than the specified date
# @option -c --cursor                         Show entries starting at the specified cursor
# @option --after-cursor <CURSOR>             Show entries after the specified cursor
# @flag --show-cursor                         Print the cursor after all the entries
# @option --cursor-file <FILE>                Show entries after cursor in FILE and update FILE
# @option -b --boot[`_choice_boot`] <ID>      Show current boot or the specified boot
# @flag --list-boots                          Show terse information about recorded boots
# @flag -k --dmesg                            Show kernel message log from the current boot
# @option -u --unit[`_choice_unit`]           Show logs from the specified unit
# @option --user-unit[`_choice_user_unit`] <UNIT>  Show logs from the specified user unit
# @option -t --identifier <STRING>            Show entries with the specified syslog identifier
# @option -p --priority[`_choice_priority`] <RANGE>  Show entries with the specified priority
# @option --facility*,[`_choice_facility`]    Show entries with the specified facilities
# @option -g --grep <PATTERN>                 Show entries with MESSAGE matching PATTERN
# @option --case-sensitive <BOOL>             Force case sensitive or insensitive matching
# @flag -e --pager-end                        Immediately jump to the end in the pager
# @flag -f --follow                           Follow the journal
# @option -n --lines <INTEGER>                Number of journal entries to show
# @flag --no-tail                             Show all lines, even in follow mode
# @flag -r --reverse                          Show the newest entries first
# @option -o --output[`_choice_output`] <STRING>  Change journal output mode
# @option --output-fields <LIST>              Select fields to print in verbose/export/json modes
# @flag --utc                                 Express time in Coordinated Universal Time (UTC)
# @flag -x --catalog                          Add message explanations where available
# @flag --no-full                             Ellipsize fields
# @flag -a --all                              Show all fields, including long and unprintable
# @flag -q --quiet                            Do not show info messages and privilege warning
# @flag --no-pager                            Do not pipe output into a pager
# @flag --no-hostname                         Suppress output of hostname field
# @flag -m --merge                            Show entries from all available journals
# @option -D --directory <PATH>               Show journal files from directory
# @option --file <PATH>                       Show journal file
# @option --root <DIR>                        Operate on files below a root directory
# @option --image <FILE>                      Operate on files in filesystem image
# @option --namespace                         Show journal data from specified namespace
# @option --interval <TIME>                   Time interval for changing the FSS sealing key
# @option --verify-key <KEY>                  Specify FSS verification key
# @flag --force                               Override of the FSS key pair with --setup-keys
# @flag -h --help                             Show this help text
# @flag --version                             Show package version
# @flag -N --fields                           List all field names currently used
# @option -F --field[`_choice_field`]         List all values that a specified field takes
# @flag --disk-usage                          Show total disk usage of all journal files
# @option --vacuum-size <BYTES>               Reduce disk usage below specified size
# @option --vacuum-files <INT>                Leave only the specified number of journal files
# @option --vacuum-time <TIME>                Remove journal files older than specified time
# @flag --verify                              Verify journal file consistency
# @flag --sync                                Synchronize unwritten journal messages to disk
# @flag --relinquish-var                      Stop logging to disk, log to temporary file system
# @flag --smart-relinquish-var                Similar, but NOP if log directory is on root mount
# @flag --flush                               Flush all journal data from /run into /var
# @flag --rotate                              Request immediate rotation of the journal files
# @flag --header                              Show journal header information
# @flag --list-catalog                        Show all message IDs in the catalog
# @flag --dump-catalog                        Show entries in the message catalog
# @flag --update-catalog                      Update the message catalog database
# @flag --setup-keys                          Generate a new FSS key pair

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_boot() {
    journalctl --list-boots | gawk '{x=""; for (i = 3; i <= NF; i++) x = x " " $i;  print $1 "\t" x; print $2 "\t" x}'
}

_choice_unit() {
    systemctl list-units --no-pager -o json | yq '.[] | .unit + "	" + .description'
}

_choice_user_unit() {
    systemctl --user list-units --no-pager -o json | yq '.[] | .unit + "	" + .description'
}

_choice_priority() {
    _argc_util_mode_kv '..'
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_priority_value
    else
        _choice_priority_value
    fi
}

_choice_facility() {
    journalctl --facility=help | tail -n +2
}

_choice_output() {
    cat <<-'EOF'
short	generates an output that is mostly identical to the formatting of classic syslog files
short-full	shows timestamps in the format the --since= and --until= options accept
short-iso	shows ISO 8601 wallclock timestamps.
short-iso-precise	as for short-iso but includes full microsecond precision.
short-precise	shows classic syslog timestamps with full microsecond precision
short-monotonic	shows monotonic timestamps instead of wallclock timestamps
short-unix	shows seconds passed since January 1st 1970 UTC
verbose	shows the full-structured entry items with all fields
export	serializes the journal into a binary
json	formats entries as JSON objects
json-pretty	formats entries as JSON data structures
json-sse	formats entries as JSON data structures
json-seq	formats entries as JSON data structures
cat	generates a very terse output
with-unit	similar to short-full, but prefixes the unit and user unit names
EOF
}

_choice_field() {
    journalctl --fields
}

_choice_priority_value() {
    cat <<-'EOF'
0	emerg
1	alert
2	crit
3	err
4	warning
5	notice
6	info
7	debug
emerg	0
alert	1
crit	2
err	3
warning	4
notice	5
info	6
debug	7
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"