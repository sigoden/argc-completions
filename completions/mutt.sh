#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -A <alias>                         expand the given alias
# @option -a <file>                          attach file(s) to the message the list of files must be terminated with the "--" sequence
# @option -b[`_choice_address`] <address>    specify a blind carbon-copy (BCC) address
# @option -c[`_choice_address`] <address>    specify a carbon-copy (CC) address
# @flag -D                                   print the value of all variables to stdout
# @option -d <level>                         log debugging output to ~/.muttdebug0 0 => no debugging; <0 => do not rotate .muttdebug files
# @flag -E                                   edit the draft (-H) or include (-i) file
# @option -e <command>                       specify a command to be executed after initialization
# @option -f <file>                          specify which mailbox to read
# @option -F <file>                          specify an alternate muttrc file
# @option -H <file>                          specify a draft file to read header and body from
# @option -i <file>                          specify a file which Mutt should include in the body
# @option -m <type>                          specify a default mailbox type
# @flag -n                                   causes Mutt not to read the system Muttrc
# @flag -p                                   recall a postponed message
# @option -Q <variable>                      query a configuration variable
# @flag -R                                   open mailbox in read-only mode
# @option -s <subj>                          specify a subject (must be in quotes if it has spaces)
# @flag -v                                   show version and compile-time definitions
# @flag -x                                   simulate the mailx send mode
# @flag -y                                   select a mailbox specified in your `mailboxes' list
# @flag -z                                   exit immediately if there are no messages in the mailbox
# @flag -Z                                   open the first folder with new message, exit immediately if none
# @flag -h                                   this help message
# @arg addr[`_choice_address`]

_choice_address() {
    abook --mutt-query "" | sed '/^\s*$/ d'
}

command eval "$(argc --argc-eval "$0" "$@")"