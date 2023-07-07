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

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_content() {
    unzip -l "$argc_file" | awk '{print $4}' | tail -n +4 | _argc_util_comp_parts /
}

command eval "$(argc --argc-eval "$0" "$@")"