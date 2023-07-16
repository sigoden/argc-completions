_patch_help() { 
    cat <<-'EOF'
Options:
    -h                  Show help
    -v                  Show version
    -b <operation>      Starts  top  in Batch mode, which could be useful for sending output from top to other programs or to a file.
    -c                  Starts  top  with  the  last  remembered `c' state reversed.
    -d <interval>       Specifies the delay between screen updates, and overrides the corresponding value in one's personal configuration file or the startup default.
    -e <value>          Later this can be changed with the `e' command toggle.
    -E <value>          Later this can be changed with the `E' command toggle.
    -H <operation>      Instructs top to display individual threads.
    -i                  Starts top with the last remembered `i' state reversed.
    -n <number>         Specifies the maximum number of iterations, or frames, top should produce before ending.
    -o <fieldname>      Specifies the name of the field on which tasks will be sorted, independent of what is reflected in the configuration file.
    -O <value>          Print each of the available field names on a separate line, then quit. 
    -p <mode>           Monitor only processes with specified process IDs.
    -s <operation>      Starts top with secure mode forced, even for root.
    -S                  Starts top with the last remembered `S' state reversed.
    -u <user>           Display only  processes  with a user id or user name matching that given.
    -U <user>           Display only  processes  with a user id or user name matching that given.
    -w <number>         In Batch mode, when used without an argument top will format output using the COLUMNS= and LINES= environment variables, if set.
    -1                  Starts top with the last remembered Cpu States portion of the summary area reversed.
EOF
}

_patch_table() { 
    _patch_table_edit_options \
        '-E;[`_choice_e`]' \
        '-e;[`_choice_e2`]' \
        '-U;[`_choice_user`]' \
        '-u;[`_choice_user`]' \
        '-o;[`_choice_o`]' \
        '-p;*,[`_choice_pid`]' \

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

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_e2() {
    cat <<-'EOF'
k	kibibytes
m	mebibytes
g	gibibytes
t	tebibytes
p	pebibytes
EOF
}

_choice_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_choice_o() {
    top -O
}