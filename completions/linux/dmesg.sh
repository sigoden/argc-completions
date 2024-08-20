#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -C --clear                                clear the kernel ring buffer
# @flag -c --read-clear                           read and clear all messages
# @flag -D --console-off                          disable printing messages to console
# @flag -E --console-on                           enable printing messages to console
# @option -F --file <file>                        use the file instead of the kernel log buffer
# @option -f --facility[`_choice_facility`] <list>  restrict output to defined facilities
# @flag -H --human                                human readable output
# @flag -k --kernel                               display kernel messages
# @option -L --color[auto|never|always] <when>    colorize messages (auto, always or never) colors are enabled by default
# @option -l --level[`_choice_level`] <list>      restrict output to defined levels
# @option -n --console-level[`_choice_log_level`] <level>  set level of messages printed to console
# @flag -P --nopager                              do not pipe output into a pager
# @flag -p --force-prefix                         force timestamp output on each line of multi-line messages
# @flag -r --raw                                  print the raw message buffer
# @flag --noescape                                don't escape unprintable character
# @flag -S --syslog                               force to use syslog(2) rather than /dev/kmsg
# @option -s --buffer-size <size>                 buffer size to query the kernel ring buffer
# @flag -u --userspace                            display userspace messages
# @flag -w --follow                               wait for new messages
# @flag -W --follow-new                           wait and print only new messages
# @flag -x --decode                               decode facility and level to readable string
# @flag -d --show-delta                           show time delta between printed messages
# @flag -e --reltime                              show local time and time delta in readable format
# @flag -T --ctime                                show human-readable timestamp (may be inaccurate!)
# @flag -t --notime                               don't show any timestamp with messages
# @option --time-format[delta|reltime|ctime|notime|iso] <format>  show timestamp using the given format:
# @option --since <time>                          display the lines since the specified time
# @option --until <time>                          display the lines until the specified time
# @flag -h --help                                 display this help
# @flag -V --version                              display version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"