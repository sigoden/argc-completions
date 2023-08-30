#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c                                       Make a copy of the print file(s)
# @option -d[`_choice_printer`] <destination>    Specify the destination
# @flag -E                                       Encrypt the connection to the server
# @option -h <server[:port]>                     Connect to the named server and port
# @option -H[`_choice_when_printing`]            Specifies when the job should be printed
# @option -i <id>                                Specify an existing job ID to modify
# @flag -m                                       Send an email notification when the job completes
# @option -n <num-copies>                        Specify the number of copies to print
# @option -o*[`_choice_option`]                  Sets one or more job options.
# @option -P <page-list>                         Specify a list of pages to print
# @option -q <priority>                          Specify the priority from low (1) to high (100)
# @flag -s                                       Be silent
# @option -t <title>                             Specify the job title
# @option -U <username>                          Specify the username to use for authentication
# @arg file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_printer() {
    lpstat -p 2>/dev/null | sed 's/^\S*\s\(\S*\)\s\(.*\)$/\1\t\2/'   
}

_choice_when_printing() {
    cat <<-'EOF'
HH:MM	Hold the job until the specified UTC time
hold	Hold the job until released/resumed
immediate	Print the job as soon as possible
restart	Reprint the job
resume	Resume a held job
id	Specify an existing job ID to modify
EOF
}

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
option=;;Specify a printer-specific option
job-sheets=standard;;Print a banner page with the job
media=;;Specify the media size to use
number-up=;;Specify that input pages should be printed N-up (1, 2, 4, 6, 9, and 16 are supported)
orientation-requested=;;Specify portrait (3) or landscape (4) orientation
print-quality=;;Specify the print quality - draft (3), normal (4), or best (5)
sides=one-sided,two-sided-long-edge,two-sided-short-edge;;Specify side printing
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"