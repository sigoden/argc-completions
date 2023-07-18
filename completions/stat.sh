#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -L --dereference                       follow links
# @flag -f --file-system                       display file system status instead of file status
# @option --cached[`_choice_cached`] <MODE>    specify how to use cached attributes; useful on remote file systems.
# @option -c --format                          use the specified FORMAT instead of the default; output a newline after each use of FORMAT
# @option --printf <FORMAT>                    like --format, but interpret backslash escapes, and do not output a mandatory trailing newline; if you want a newline, include \n in FORMAT
# @flag -t --terse                             print the information in terse form
# @flag --help                                 display this help and exit
# @flag --version                              output version information and exit
# @arg file*

_choice_cached() {
    cat <<-'EOF'
always	use cached attributes if available
never	try to synchronize with the latest attributes
default	leave it up to the underlying file system
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"