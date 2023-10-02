#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -R                Recursively change attributes of directories and their contents.
# @flag -V                Be verbose with chattr's output and print the program version.
# @flag -f                Suppress most error messages.
# @option -v <version>    Set the file's version/generation number.
# @option -p <project>    Set the file's project number.
# @arg mode[`_choice_mode`]
# @arg files*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_mode() {
    if [[ -z "$ARGC_CWORD" ]]; then
        printf "%s\n" = + - 
        return
    fi
    echo "__argc_prefix=$ARGC_CWORD"
    echo __argc_filter=
    cat <<-'EOF' | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace
A	no atime updates
a	append only
C	no copy on write
c	compressed
D	no synchronous directory updates
d	no dump
e	extent format
i	immutable
j	data journalling
P	project hierarchy
S	synchronous updates
s	secure deletion
T	top of directory hierarchy
t	no tail-merging
u	undeletable
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"