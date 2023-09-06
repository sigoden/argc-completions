#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help       Show this screen.
# @flag -f --force      Force every question asked to be answered with "Yes".
# @flag -r --root       Allow mackup to be run as superuser.
# @flag -n --dry-run    Show steps without executing.
# @flag -v --verbose    Show additional details.
# @flag --version       Show version.

# {{ mackup list
# @cmd display a list of all supported applications.
list() {
    :;
}
# }} mackup list

# {{ mackup backup
# @cmd sync your conf files to your synced storage, use this the 1st time you use Mackup.
backup() {
    :;
}
# }} mackup backup

# {{ mackup restore
# @cmd link the conf files already in your synced storage on your system, use it on any new system you use.
restore() {
    :;
}
# }} mackup restore

# {{ mackup show
# @cmd Show the current configuration
# @arg application![`_choice_application`]
show() {
    :;
}
# }} mackup show

# {{ mackup uninstall
# @cmd reset everything as it was before using Mackup.
uninstall() {
    :;
}
# }} mackup uninstall

_choice_application() {
    mackup list | sed -n 's/^ - \(.*\)$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"