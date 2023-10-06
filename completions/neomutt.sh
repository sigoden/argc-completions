#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -A <alias>                            Print an expanded version of the given alias to stdout and exit
# @option -a <file>                             Attach one or more files to a message (must be the last option) Add any addresses after the '--' argument
# @flag -B                                      Run in batch mode (do not start the ncurses UI)
# @option -b <address>                          Specify a blind carbon copy (Bcc) recipient
# @option -c <address>                          Specify a carbon copy (Cc) recipient
# @flag -D                                      Dump all config variables as 'name=value' pairs to stdout
# @flag -O                                      Like -D, but show one-liner documentation
# @flag -S                                      Like -D, but hide the value of sensitive variables
# @option -d[1|2|3|4|5] <level>                 Log debugging output to a file (default is "~/.neomuttdebug0") The level can range from 1-5 and affects verbosity
# @flag -E                                      Edit draft (-H) or include (-i) file during message composition
# @option -e[`_module_os_command`] <command>    Specify a command to be run after reading the config files
# @option -F <config-file>                      Specify an alternative initialization file to read
# @option -f <mailbox>                          Specify a mailbox (as defined with 'mailboxes' command) to load
# @flag -G                                      Start NeoMutt with a listing of subscribed newsgroups
# @option -g <server>                           Like -G, but start at specified news server
# @option -H <draft>                            Specify a draft file with header and body for message composing
# @flag -h                                      Print this help message and exit
# @option -i <include-file>                     Specify an include file to be embedded in the body of a message
# @option -l <file>                             Specify a file for debugging output (default "~/.neomuttdebug0")
# @option -m[MH|MMDF|Maildir|mbox] <type>       Specify a default mailbox format type for newly created folders The type is either MH, MMDF, Maildir or mbox (case-insensitive)
# @flag -n                                      Do not read the system-wide configuration file
# @flag -p                                      Resume a prior postponed message, if any
# @option -Q <variable>                         Query a configuration variable and print its value to stdout (after the config has been read and any commands executed) Add -O for one-liner documentation
# @flag -R                                      Open mailbox in read-only mode
# @option -s <subject>                          Specify a subject (must be enclosed in quotes if it has spaces)
# @flag -v                                      Print the NeoMutt version and compile-time definitions and exit
# @flag -vv                                     Print the NeoMutt license and copyright information and exit
# @flag -y                                      Start NeoMutt with a listing of all defined mailboxes
# @flag -Z                                      Open the first mailbox with new message or exit immediately with exit code 1 if none is found in all defined mailboxes
# @flag -z                                      Open the first or specified (-f) mailbox if it holds any message or exit immediately with exit code 1 otherwise
# @arg address

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"