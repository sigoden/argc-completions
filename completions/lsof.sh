#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -?                                These two equivalent options select a usage (help) output list.
# @flag -h                                These two equivalent options select a usage (help) output list.
# @flag -a                                causes list selection options to be ANDed, as described above.
# @option -A <A>                          is available on systems configured for AFS whose AFS kernel code is implemented via dynamic modules.
# @flag -b                                causes lsof to avoid kernel functions that might block - lstat(2), readlink(2), and stat(2).
# @option -c[`_module_os_process`] <c>    selects the listing of files for processes executing the command that begins with the characters of c.
# @flag -C                                disables the reporting of any path name components from the kernel's name cache.
# @option -d <s>                          specifies a list of file descriptors (FDs) to exclude from or include in the output listing.
# @option -D[`_choice_dcf`] <D>           directs lsof's use of the device cache file.
# @option -e <s>                          exempts the file system whose path name is s from being subjected to kernel function calls that might block.
# @flag -E                                +E specifies that Linux pipe, Linux UNIX socket and Linux pseudoterminal files should be displayed with endpoint information and the files of the endpoints should also be displayed.
# @option -f <cfgGn>                      f by itself clarifies how path name arguments are to be interpreted.
# @option -F <f>                          specifies a character list, f, that selects the fields to be output for processing by another program, and the character that terminates each output field.
# @option -g*,[`_module_os_group`] <s>    excludes or selects the listing of files for the processes whose optional process group IDentification (PGID) numbers are in the comma-separated set s - e.g., ``123'' or ``123,^456''.
# @option -i <i>                          selects the listing of files any of whose Internet address matches the address specified in i.
# @option -K <k>                          selects the listing of tasks (threads) of processes, on dialects where task (thread) reporting is supported.
# @option -k <k>                          specifies a kernel name list file, k, in place of /vmunix, /mach, etc.
# @flag -l                                inhibits the conversion of user ID numbers to login names.
# @option -L <l>                          enables (`+') or disables (`-') the listing of file link counts, where they are available - e.g., they aren't available for sockets, or most FIFOs and pipes.
# @option -m <m>                          specifies an alternate kernel memory file or activates mount table supplement processing.
# @flag -M                                Enables (+) or disables (-) the reporting of portmapper registrations for local TCP, UDP and UDPLITE ports, where port mapping is supported.
# @flag -n                                inhibits the conversion of network numbers to host names for network files.
# @flag -N                                selects the listing of NFS files.
# @option -o <o>                          defines the number of decimal digits (o) to be printed after the ``0t'' for a file offset before the form is switched to ``0x...''.
# @flag -O                                directs lsof to bypass the strategy it uses to avoid being blocked by some kernel operations - i.e., doing them in forked child processes.
# @option -p*,[`_module_os_pid`] <s>      excludes or selects the listing of files for the processes whose optional process IDentification (PID) numbers are in the comma-separated set s - e.g., ``123'' or ``123,^456''.
# @flag -P                                inhibits the conversion of port numbers to port names for network files.
# @option -r <t[m<fmt>]>                  puts lsof in repeat mode.
# @flag -R                                directs lsof to list the Parent Process IDentification number in the PPID column.
# @option -s <p:s>                        s alone directs lsof to display file size at all times.
# @option -S <t>                          specifies an optional time-out seconds value for kernel functions - lstat(2), readlink(2), and stat(2) - that might otherwise deadlock.
# @option -T <t>                          controls the reporting of some TCP/TPI information, also reported by netstat(1), following the network addresses.
# @flag -t                                specifies that lsof should produce terse output with process identifiers only and no header - e.g., so that the output may be piped to kill(1).
# @option -u*,[`_module_os_user`] <s>     selects the listing of files for the user whose login names or user ID numbers are in the comma-separated set s - e.g., ``abe'', or ``548,root''.
# @flag -U                                selects the listing of UNIX domain socket files.
# @flag -v                                selects the listing of lsof version information, including: revision number; when the lsof binary was constructed; who constructed the binary and where; the name of the compiler used to construct the lsof binary; the version number of the compiler when readily available; the compiler and loader flags used to construct the lsof binary; and system information, typically the output of uname's -a option.
# @flag -V                                directs lsof to indicate the items it was asked to list and failed to find - command names, file names, Internet addresses or files, login names, NFS files, PIDs, PGIDs, and UIDs.
# @flag -w                                Enables (+) or disables (-) the suppression of warning messages.
# @option -x <fl>                         may accompany the +d and +D options to direct their processing to cross over symbolic links and|or file system mount points encountered when scanning the directory (+d) or directory tree (+D).
# @flag -X                                This is a dialect-specific option.
# @option -z <z>                          specifies how Solaris 10 and higher zone information is to be handled.
# @option -Z <Z>                          specifies how SELinux security contexts are to be handled.
# @arg names*

_choice_dcf() {
    cat <<-'EOF'
?	report device cache file paths
b	build the device cache file
i	ignore the device cache file
r	read the device cache file
u	read and update the device cache file
EOF
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
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

_module_os_process() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $1 "\t" $2 }'
    else
        command ps axc -o pid,comm= | gawk '{print $2 "\t" $1}'
    fi
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"