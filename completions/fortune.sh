#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a                Choose from all lists of maxims.
# @flag -c                Show the cookie file from which the fortune came.
# @flag -e                Consider all fortune files to be of equal size (see discussion below on multiple files).
# @flag -f                Print out the list of files which would be searched, but don't print a fortune.
# @flag -l                Long dictums only.
# @option -m <pattern>    Print out all fortunes which match the basic regular expression pattern.
# @option -n <length>     Set the longest fortune length (in characters) considered to be “short” (the default is 160).
# @flag -s                Short apothegms only.
# @flag -i                Ignore case for -m patterns.
# @flag -w                Wait before termination for an amount of time calculated from the number of characters in the message.
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"