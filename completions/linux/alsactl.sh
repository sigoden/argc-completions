#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                        this help
# @flag -d --debug                       debug mode
# @flag -v --version                     print version of this program
# @option -f --file <file>               configuration file (default /var/lib/alsa/asound.state)
# @option -a --config-dir <dir>          boot / hotplug configuration directory (default /var/lib/alsa)
# @flag -l --lock                        use file locking to serialize concurrent access
# @flag -L --no-lock                     do not use file locking to serialize concurrent access
# @option -O --lock-state-file <file>    state lock file path (default /var/lock/asound.state.lock)
# @flag -F --force                       try to restore the matching controls as much as possible (default mode)
# @flag -g --ignore                      ignore 'No soundcards found' error
# @flag -P --pedantic                    do not restore mismatching controls (old default)
# @flag -I --no-init-fallback            don't initialize even if restore fails
# @option -r --runstate <file>           save restore and init state to this file (only errors) default settings is 'no file set'
# @flag -R --remove                      remove runstate file at first, otherwise append errors
# @option -p --period <value>            store period in seconds for the daemon command
# @option -e --pid-file <file>           pathname for the process id (daemon mode)
# @option -E --env <k=v>                 set environment variable for init phase (NAME=VALUE)
# @option -i --initfile <file>           main configuration file for init phase (default /usr/share/alsa/init/00main)
# @flag -b --background                  run daemon in background
# @flag -s --syslog                      use syslog for messages
# @option -n --nice <value>              set the process priority (see 'man nice')
# @flag -c --sched-idle                  set the process scheduling policy to idle (SCHED_IDLE)
# @flag -D --ucm-defaults                execute also the UCM 'defaults' section
# @flag -U --no-ucm                      don't init with UCM
# @flag -X --ucm-nodev                   show UCM no device errors

# {{ alsactl store
# @cmd save current driver setup for one or each soundcards to configuration file
# @arg card[`_choice_card`]
store() {
    :;
}
# }} alsactl store

# {{ alsactl restore
# @cmd load current driver setup for one or each soundcards from configuration file
# @arg card[`_choice_card`]
restore() {
    :;
}
# }} alsactl restore

# {{ alsactl nrestore
# @cmd like restore, but notify the daemon to rescan soundcards
# @arg card[`_choice_card`]
nrestore() {
    :;
}
# }} alsactl nrestore

# {{ alsactl init
# @cmd initialize driver to a default state
# @arg card[`_choice_card`]
init() {
    :;
}
# }} alsactl init

# {{ alsactl daemon
# @cmd store state periodically for one or each soundcards
# @arg card[`_choice_card`]
daemon() {
    :;
}
# }} alsactl daemon

# {{ alsactl rdaemon
# @cmd like daemon but do the state restore at first
# @arg card[`_choice_card`]
rdaemon() {
    :;
}
# }} alsactl rdaemon

# {{ alsactl kill
# @cmd notify daemon to quit, rescan or save_and_quit
kill() {
    :;
}
# }} alsactl kill

# {{ alsactl monitor
# @cmd monitor control events
# @arg card[`_choice_card`]
monitor() {
    :;
}
# }} alsactl monitor

# {{ alsactl clean
# @cmd clean application controls
# @arg card[`_choice_card`]
clean() {
    :;
}
# }} alsactl clean

# {{ alsactl dump-state
# @cmd dump the state (for all cards)
dump-state() {
    :;
}
# }} alsactl dump-state

# {{ alsactl dump-cfg
# @cmd dump the configuration (expanded, for all cards)
dump-cfg() {
    :;
}
# }} alsactl dump-cfg

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}

command eval "$(argc --argc-eval "$0" "$@")"