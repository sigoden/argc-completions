#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all         same as -b -d --login -p -r -t -T -u
# @flag -b --boot        time of last system boot
# @flag -d --dead        print dead processes
# @flag -H --heading     print line of column headings
# @flag --ips            print ips instead of hostnames.
# @flag -l --login       print system login processes
# @flag --lookup         attempt to canonicalize hostnames via DNS
# @flag -m               only hostname and user associated with stdin
# @flag -p --process     print active processes spawned by init
# @flag -q --count       all login names and number of users logged on
# @flag -r --runlevel    print current runlevel
# @flag -s --short       print only name, line, and time (default)
# @flag -t --time        print last system clock change
# @flag -T               add user's message status as +, - or ?
# @flag -w               add user's message status as +, - or ?
# @flag --mesg           add user's message status as +, - or ?
# @flag -u --users       list users logged in
# @flag --message        same as -T
# @flag --writable       same as -T
# @flag --help           display this help and exit
# @flag --version        output version information and exit
# @arg file-arg1-arg2 <FILE|ARG1 ARG2>

command eval "$(argc --argc-eval "$0" "$@")"