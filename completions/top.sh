#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                                 Show help
# @flag -v                                 Show version
# @option -b <operation>                   Starts  top  in Batch mode, which could be useful for sending output from top to other programs or to a file.
# @flag -c                                 Starts  top  with  the  last  remembered `c' state reversed.
# @option -d <interval>                    Specifies the delay between screen updates, and overrides the corresponding value in one's personal configuration file or the startup default.
# @option -e[`_choice_e2`] <value>         Later this can be changed with the `e' command toggle.
# @option -E[`_choice_e`] <value>          Later this can be changed with the `E' command toggle.
# @option -H <operation>                   Instructs top to display individual threads.
# @flag -i                                 Starts top with the last remembered `i' state reversed.
# @option -n <number>                      Specifies the maximum number of iterations, or frames, top should produce before ending.
# @option -o[`_choice_o`] <fieldname>      Specifies the name of the field on which tasks will be sorted, independent of what is reflected in the configuration file.
# @option -O <value>                       Print each of the available field names on a separate line, then quit.
# @option -p*,[`_module_os_pid`] <mode>    Monitor only processes with specified process IDs.
# @option -s <operation>                   Starts top with secure mode forced, even for root.
# @flag -S                                 Starts top with the last remembered `S' state reversed.
# @option -u[`_module_os_user`] <user>     Display only  processes  with a user id or user name matching that given.
# @option -U[`_module_os_user`] <user>     Display only  processes  with a user id or user name matching that given.
# @option -w <number>                      In Batch mode, when used without an argument top will format output using the COLUMNS= and LINES= environment variables, if set.
# @flag -1                                 Starts top with the last remembered Cpu States portion of the summary area reversed.

_choice_e2() {
    cat <<-'EOF'
k	kibibytes
m	mebibytes
g	gibibytes
t	tebibytes
p	pebibytes
EOF
}

_choice_e() {
    cat <<-'EOF'
k	kibibytes
m	mebibytes
g	gibibytes
t	tebibytes
p	pebibytes
e	exbibytes
EOF
}

_choice_o() {
    top -O
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"