#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                           show program's version number and exit
# @flag -h --help                           show this help message and exit
# @option -g --getmaildir <DIR>             look in DIR for config/data files
# @option -r --rcfile <FILE>                load configuration from FILE (may be given multiple times)
# @flag --dump                              dump configuration and exit (debugging)
# @flag --trace                             print extended trace information (extremely verbose)
# @option -i --idle <FOLDER>                maintain connection and listen for new messages in FOLDER.
# @option -s --searchset <OVERRIDE_IMAP>    override imap_search and imap_on_delete to set flags.
# @flag -v --verbose                        operate more verbosely (may be given multiple times)
# @flag --fingerprint                       show SSL/TLS fingerprint and connection information
# @flag -q --quiet                          operate quietly (only report errors)
# @flag -d --delete                         delete messages from server after retrieving
# @flag -l --dont-delete                    do not delete messages from server after retrieving
# @flag -a --all                            retrieve all messages
# @flag -n --new                            retrieve only unread messages
# @flag --to-oldmail-on-each-mail           store retrieved mails in oldmail file after every mail

command eval "$(argc --argc-eval "$0" "$@")"