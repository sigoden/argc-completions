#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -4                             force connecting via IPv4
# @flag -6                             force connecting via IPv6
# @flag -a                             toggle color flag
# @flag -A                             force authentication on connect
# @flag -c                             mark all news as read in subscribed newsgroups (batch mode)
# @flag -d                             don't show newsgroup descriptions
# @option -D <mode>                    debug mode
# @option -f <file>                    subscribed to newsgroups file [default=/home/sigo/.newsrc]
# @flag -G                             limit get only limit articles/group
# @option -g[`_choice_serv`] <serv>    read news from NNTP server serv [default=localhost]
# @flag -h                             this help message
# @flag -H                             help information about tin
# @option -I <dir>                     news index file directory [default=/home/sigo/.tin/.news]
# @flag -l                             use only LIST instead of GROUP (-n) command
# @option -m <dir>                     mailbox directory [default=/home/sigo/Mail]
# @option -M <user>                    mail new news to specified user (batch mode)
# @flag -n                             only read subscribed .newsrc groups from NNTP server
# @flag -N                             mail new news to your posts (batch mode)
# @flag -o                             post all postponed articles and exit
# @option -p <port>                    use port as NNTP port [default=119]
# @flag -q                             don't check for new newsgroups
# @flag -Q                             quick start.
# @flag -r                             read news remotely from default NNTP server
# @flag -R                             read news saved by -S option
# @option -s <dir>                     save news directory [default=/home/sigo/News]
# @flag -S                             save new news for later reading (batch mode)
# @flag -u                             update index files (batch mode)
# @flag -v                             verbose output for batch mode options
# @flag -V                             print version & date information
# @flag -w                             post an article and exit
# @flag -x                             no-posting mode
# @flag -X                             don't save any files on quit
# @flag -z                             start if any unread news
# @flag -Z                             return status indicating if any unread news (batch mode)
# @arg newsgroup <newsgroup[,...]>

_choice_serv() {
    cat "$$HOME/.tin/newsrctable" | \
    sed -n '/^#/ d; s/\(\S\+\) .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"