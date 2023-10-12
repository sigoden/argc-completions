#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -h --host                    connect to server HOST
# @option -p --port                    connect to PORT
# @flag -I                             query whois.iana.org and follow its referral
# @flag -H                             hide legal disclaimers
# @flag --verbose                      explain what is being done
# @flag --no-recursion                 disable recursion from registry to registrar servers
# @flag --help                         display this help and exit
# @flag --version                      output version information and exit
# @flag -l                             find the one level less specific match
# @flag -L                             find all levels less specific matches
# @flag -m                             find all one level more specific matches
# @flag -M                             find all levels of more specific matches
# @flag -c                             find the smallest match containing a mnt-irt attribute
# @flag -x                             exact match
# @flag -b                             return brief IP address ranges with abuse contact
# @flag -B                             turn off object filtering (show email addresses)
# @flag -G                             turn off grouping of associated objects
# @flag -d                             return DNS reverse delegation objects too
# @option -i* <ATTR[,ATTR]>            do an inverse look-up for specified ATTRibutes
# @option -T* <TYPE[,TYPE]>            only look for objects of TYPE
# @flag -K                             only primary keys are returned
# @flag -r                             turn off recursive look-ups for contact information
# @flag -R                             force to show local copy of the domain object even if it contains referral
# @flag -a                             also search all the mirrored databases
# @option -s* <SOURCE[,SOURCE]>        search the database mirrored from SOURCE
# @option -g <SOURCE:FIRST-LAST>       find updates from SOURCE from serial FIRST to LAST
# @option -t <TYPE>                    request template for object of TYPE
# @option -v <TYPE>                    request verbose template for object of TYPE
# @option -q[version|sources|types]    query specified server info
# @arg object*

command eval "$(argc --argc-eval "$0" "$@")"