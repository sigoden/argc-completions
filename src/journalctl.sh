_patch_help() {
    $@ --help
}

_patch_table() { 
    _patch_table_edit_options \
        '--boot;[`_choice_boot`]' \
        '--facility;*,[`_choice_facility`]' \
        '--field;[`_choice_field`]' \
        '--image(<FILE>)' \
        '--output;[`_choice_output`]' \
        '--output-fileds;*,[`_choice_field`]' \
        '--priority;[`_choice_priority`]' \
        '--root(<DIR>)' \
        '--unit;[`_choice_unit`]' \
        '--user-unit;[`_choice_user_unit`]' \

}

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
