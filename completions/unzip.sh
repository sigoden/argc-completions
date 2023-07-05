#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -p                extract files to pipe, no messages
# @flag -l                list files (short format)
# @flag -f                freshen existing files, create none
# @flag -t                test compressed archive data
# @flag -u                update files, create if necessary
# @flag -z                display archive comment only
# @flag -v                list verbosely/show version info
# @flag -T                timestamp archive to latest
# @option -x <file>       exclude files that follow (in xlist)
# @option -d <dir>        extract files into exdir
# @flag -n                never overwrite existing files
# @flag -q                quiet mode (-qq => quieter)
# @flag -o                overwrite files WITHOUT prompting
# @flag -a                auto-convert any text files
# @flag -j                junk paths (do not make directories)
# @flag -aa               treat ALL files as text
# @flag -U                use escapes for all non-ASCII Unicode
# @flag -UU               ignore any Unicode fields
# @flag -C                match filenames case-insensitively
# @flag -L                make (some) names lowercase
# @flag -X                restore UID/GID info
# @flag -V                retain VMS version numbers
# @flag -K                keep setuid/setgid/tacky permissions
# @flag -M                pipe through "more" pager
# @option -O <CHARSET>    specify a character encoding for DOS, Windows and OS/2 archives
# @option -I <CHARSET>    specify a character encoding for UNIX and other archives
# @arg file
# @arg contents*[`_choice_content`]

_choice_content() {
    unzip -l "$argc_file" | awk '{print $4}' | tail -n +4 | _argc_util_comp_parts /
}

_argc_util_comp_parts() {
    awk -v SEP="$1" -v ARGC_FILTER="${2-$ARGC_FILTER}" -v ARGC_PREFIX="${3}" '
BEGIN {
    split("", VALUES)
    split("", DEDUPS)
    ONLY_LINE = ""
    COUNT = 0
    split(ARGC_FILTER, filterParts, SEP)
    FILTER = filterParts[length(filterParts)]
    PREFIX = ""
    for (i = 1; i < length(filterParts); i++) 
        PREFIX = PREFIX filterParts[i] SEP
    print "__argc_filter=" FILTER
    print "__argc_prefix=" ARGC_PREFIX PREFIX
}
{
    if (index($0, ARGC_FILTER) == 1) {
        value = substr($0, length(PREFIX) + 1)
        if (COUNT == 0) {
            ONLY_LINE = value
            if (substr(ONLY_LINE, length(ONLY_LINE)) == SEP) {
                ONLY_LINE = ONLY_LINE "\0"
            }
        }
        COUNT = COUNT + 1
        idx = index(value, SEP)
        if (idx > 0) {
            value = substr(value, 1, idx) "\0"
        }
        if (!DEDUPS[value]) {
            DEDUPS[value] = 1
            VALUES[length(VALUES) + 1] = value
        }
    }
}

END {
    if (COUNT == 1) {
        print ONLY_LINE
    } else {
        for (i in VALUES) {
            print VALUES[i]
        }
    }
}'
}

command eval "$(argc --argc-eval "$0" "$@")"