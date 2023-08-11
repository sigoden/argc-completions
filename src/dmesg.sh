_patch_help() { 
    $@ --help | sed  '/Supported log facilities:/,$ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--color;[auto|never|always]' \
        '--console-level;[`_choice_log_level`]' \
        '--facility;[`_choice_facility`]' \
        '--level;[`_choice_level`]' \
        '--time-format;[delta|reltime|ctime|notime|iso]' \

}

_choice_facility() {
    cat <<-'EOF' | _argc_util_comp_multi ,
kern	kernel messages
user	random user-level messages
mail	mail system
daemon	system daemons
auth	security/authorization messages
syslog	messages generated internally by syslogd
lpr	line printer subsystem
news	network news subsystem
EOF
}

_choice_level() {
    _choice_log_level | _argc_util_comp_multi ,
}

_choice_log_level() {
    cat <<-'EOF'
emerg	system is unusable
alert	action must be taken immediately
crit	critical conditions
err	error conditions
warn	warning conditions
notice	normal but significant condition
info	informational
debug	debug-level messages
EOF
}
