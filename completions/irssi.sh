#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                      Show help options
# @option --config <PATH>              Configuration file location (~/.irssi/config)
# @option --home <PATH>                Irssi home dir location (~/.irssi)
# @option -c --connect[`_choice_server`] <SERVER>  Automatically connect to server/network
# @option -w --password                Autoconnect password
# @option -p --port[`_choice_port`]    Autoconnect port
# @flag -! --noconnect                 Disable autoconnecting
# @option -n --nick[`_choice_nick`]    Specify nick to use
# @flag -h --hostname                  Specify host name to use
# @flag -v --version                   Display Irssi version

_choice_server() {
    grep "\(^[{ 	]*address\)\|\([{ 	]address\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*address *= *\"\([^\"]\+\).*,\1 ,g"   
}

_choice_port() {
    grep "\(^[{ 	]*port\)\|\([{ 	]port\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*port *= *\"\([^\"]\+\).*,\1,g"
}

_choice_nick() {
    grep "\(^[{ 	]*nick\)\|\([{ 	]nick\)\|\([{ 	]alternate_nick\)\|\(^[{ 	]*alternate_nick\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*nick *= *\"\([^\"]\+\).*,\1,g"
}

command eval "$(argc --argc-eval "$0" "$@")"