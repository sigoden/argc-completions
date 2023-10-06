#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a --all                               display unused files too
# @flag -i --interactive                       ask before killing (ignored without -k)
# @flag -I --inode                             use always inodes to compare files
# @flag -k --kill                              kill processes accessing the named file
# @flag -l --list-signals                      list available signal names
# @option -m --mount[`_choice_mount_point`]    show all processes using the named filesystems or block device
# @flag -M --ismountpoint                      fulfill request only if NAME is a mount point
# @option -n --namespace <SPACE>               search in this name space (file, udp, or tcp)
# @flag -s --silent                            silent operation
# @flag -u --user                              display user IDs
# @flag -v --verbose                           verbose output
# @flag -w --writeonly                         kill only processes with write access
# @flag -V --version                           display version information
# @flag -4 --ipv4                              search IPv4 sockets only
# @flag -6 --ipv6                              search IPv6 sockets only
# @flag -ABRT                                  Abnormal termination
# @flag -ALRM                                  Virtual alarm clock
# @flag -BUS                                   BUS error
# @flag -CHLD                                  Child status has changed
# @flag -CONT                                  Continue stopped process
# @flag -FPE                                   Floating-point exception
# @flag -HUP                                   Hangup detected on controlling terminal
# @flag -ILL                                   Illegal instruction
# @flag -INT                                   Interrupt from keyboard
# @flag -KILL                                  Kill, unblockable
# @flag -PIPE                                  Broken pipe
# @flag -POLL                                  Pollable event occurred
# @flag -PROF                                  Profiling alarm clock timer expired
# @flag -PWR                                   Power failure restart
# @flag -QUIT                                  Quit from keyboard
# @flag -SEGV                                  Segmentation violation
# @flag -STKFLT                                Stack fault on coprocessor
# @flag -STOP                                  Stop process, unblockable
# @flag -SYS                                   Bad system call
# @flag -TERM                                  Termination request
# @flag -TRAP                                  Trace/breakpoint trap
# @flag -TSTP                                  Stop typed at keyboard
# @flag -TTIN                                  Background read from tty
# @flag -TTOU                                  Background write to tty
# @flag -URG                                   Urgent condition on socket
# @flag -USR1                                  User-defined signal 1
# @flag -USR2                                  User-defined signal 2
# @flag -VTALRM                                Virtual alarm clock
# @flag -WINCH                                 Window size change
# @flag -XCPU                                  CPU time limit exceeded
# @flag -XFSZ                                  File size limit exceeded
# @arg paths*

_choice_mount_point() {
    cat /proc/mounts | gawk '{print $2 "\t" $1}' 
}

command eval "$(argc --argc-eval "$0" "$@")"