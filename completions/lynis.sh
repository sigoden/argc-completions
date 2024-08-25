#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag --forensics                   Perform forensics on a running or mounted system
# @flag --pentest                     Non-privileged, show points of interest for pentesting
# @flag --no-colors                   Don't use colors in output
# @flag -q --quiet                    No output
# @flag --reverse-colors              Optimize color display for light backgrounds
# @flag --reverse-colours             Optimize colour display for light backgrounds
# @flag --debug                       Debug logging to screen
# @flag --no-log                      Don't create a log file
# @option --profile <profile>         Scan the system with the given profile file
# @flag --view-manpage                View man page
# @flag --man                         View man page
# @flag --verbose                     Show more details on screen
# @flag -V --version                  Display version number and quit
# @flag --wait                        Wait between a set of tests
# @option --slow-warning <seconds>    Threshold for slow test warning in seconds (default 10)
# @option --plugindir <path>          Define path of available plugins
# @flag --upload                      Upload data to central node

# {{ lynis audit
# @cmd
audit() {
    :;
}

# {{{ lynis audit system
# @cmd Perform local security scan
audit::system() {
    :;
}

# {{{{ lynis audit system remote
# @cmd Remote security scan
# @arg host!
audit::system::remote() {
    :;
}
# }}}} lynis audit system remote
# }}} lynis audit system

# {{{ lynis audit dockerfile
# @cmd Analyze Dockerfile
# @arg file!
audit::dockerfile() {
    :;
}
# }}} lynis audit dockerfile
# }} lynis audit

# {{ lynis show
# @cmd
show() {
    :;
}

# {{{ lynis show version
# @cmd Show Lynis version
show::version() {
    :;
}
# }}} lynis show version
# }} lynis show

# {{ lynis update
# @cmd
update() {
    :;
}

# {{{ lynis update info
# @cmd Show update details
update::info() {
    :;
}
# }}} lynis update info
# }} lynis update

command eval "$(argc --argc-eval "$0" "$@")"