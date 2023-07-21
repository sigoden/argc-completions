#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A                                        all processes
# @flag -e                                        all processes
# @flag -a                                        all with tty, except session leaders
# @flag -d                                        all except session leaders
# @flag -N --deselect                             negate selection
# @option -C <command>                            command name
# @option -G --Group*,[`_module_os_group`] <GID>  real group id or name
# @option -g --group*,[`_module_os_group`] <group>  session or effective group name
# @option -p --pid*,[`_module_os_pid`]            process id
# @option --ppid*,[`_module_os_pid`] <PID>        parent process id
# @option -q --quick-pid*,[`_module_os_pid`] <PID>  process id (quick mode)
# @option -s --sid*,[`_module_os_sid`] <session>  session id
# @option -t --tty*,[`_module_os_tty`] <tty>      terminal
# @option -u --user*,[`_module_os_user`] <UID>    effective user id or name
# @option -U --User <UID>                         real user id or name
# @flag -F                                        extra full
# @flag -f                                        full-format, including command lines
# @flag -H                                        show process hierarchy
# @flag -j                                        jobs format
# @flag -l                                        long format
# @flag -M                                        add security data (for SELinux)
# @option -O <format>                             preloaded with default columns
# @option -o --format*,[`_choice_column`] <format>  user-defined format
# @flag --context                                 display security context (for SELinux)
# @flag --headers                                 repeat header lines, one per page
# @flag --no-headers                              do not print header at all
# @option --cols <num>                            set screen width
# @option --columns <num>                         set screen width
# @option --width <num>                           set screen width
# @option --rows <num>                            set screen height
# @option --lines <num>                           set screen height
# @flag -L                                        possibly with LWP and NLWP columns
# @option -m <m>                                  after processes
# @flag -T                                        possibly with SPID column
# @flag -c                                        show scheduling class with -l option
# @flag -V --version                              display version information and exit
# @flag -w                                        unlimited output width
# @option --help[simple|list|output|threads|misc|all]  display help and exit
# @flag --forest                                  ascii art process tree
# @option --sort*,[`_choice_column`]              specify sort order as: [+|-]key[,[+|-]key[,...]]
# @flag --cumulative                              include some dead child process data
# @flag -y                                        do not show flags, show rss (only with -l)

_choice_column() {
    cat <<-'EOF'
%cpu	cpu utilization of the process in \"##.#\" format
%mem	ratio of the process's resident set size  to the physical memory on the machine
args	command with all its arguments as a string
blocked	mask of the blocked signals
bsdstart	time the command started
bsdtime	accumulated cpu time, user + system
c	processor utilization
caught	mask of the caught signals
cgname	display name of control groups to which the process belongs
cgroup	display control groups to which the process belongs
class	scheduling class of the process
cls	scheduling class of the process
cmd	see args
comm	command name
command	See args
cp	per-mill (tenths of a percent) CPU usage
cputime	cumulative CPU time, \"[DD-]hh:mm:ss\" format
cputimes	cumulative CPU time in seconds
drs	data resident set size
egid	effective group ID number of the process as a decimal integer
egroup	effective group ID of the process
eip	instruction pointer
esp	stack pointer
etime	elapsed time since the process was started, in the form [[DD-]hh:]mm:ss
etimes	elapsed time since the process was started, in seconds
euid	effective user ID (alias uid)
euser	effective user name
exe	path to the executable
f	flags associated with the process, see the PROCESS FLAGS section
fgid	filesystem access group ID
fgroup	filesystem access group ID
flag	see f
flags	see f
fname	first 8 bytes of the base name of the process's executable file
fuid	filesystem access user ID
fuser	filesystem access user ID
gid	see egid
group	see egroup
ignored	mask of the ignored signals
ipcns	Unique inode number describing the namespace the process belongs to
label	security label
lstart	time the command started
lsession	displays the login session identifier of a process
luid	displays Login ID associated with a process
lwp	light weight process (thread) ID of the dispatchable entity
lxc	The name of the lxc container within which a task is running
machine	displays the machine name for processes assigned to VM or container
maj_flt	The number of major page faults that have occurred with this process
min_flt	The number of minor page faults that have occurred with this process
mntns	Unique inode number describing the namespace the process belongs to
netns	Unique inode number describing the namespace the process belongs to
ni	nice value
nice	see ni
nlwp	number of lwps (threads) in the process
numa	The node associated with the most recently used processor
nwchan	address of the kernel function where the process is sleeping
ouid	displays the Unix user identifier of the owner of the session of a process
pcpu	see %cpu
pending	mask of the pending signals
pgid	process group ID or, equivalently, the process ID of the process group leader
pgrp	see pgid
pid	a number representing the process ID
pidns	Unique inode number describing the namespace the process belongs to
pmem	see %mem
policy	scheduling class of the process
ppid	parent process ID
pri	priority of the process
psr	processor that process is currently assigned to
rgid	real group ID
rgroup	real group name
rss	resident set size, the non-swapped physical memory that a task has used
rssize	see rss
rsz	see rss
rtprio	realtime priority
ruid	real user ID
ruser	real user ID
s	minimal state display
sched	scheduling policy of the process
seat	displays the identifier associated with all hardware devices assigned to a specific workplace
sess	session ID or, equivalently, the process ID of the session leader
sgi_p	processor that the process is currently executing on
sgid	saved group ID
sgroup	saved group name
sid	see sess
sig	see pending
sigcatch	see caught
sigignore	see ignored
sigmask	see blocked
size	approximate amount of swap space that would be required if the process were to be swapped out
slice	displays the slice unit which a process belongs to
spid	see lwp
stackp	address of the bottom (start) of stack for the process
start	time the command started
start_time	starting time or date of the process
stat	multi-character process state
state	see s
stime	see start_time
suid	saved user ID
supgid	group ids of supplementary groups, if any
supgrp	group names of supplementary groups, if any
suser	saved user name
svgid	see sgid
svuid	see suid
sz	size in physical pages of the core image of the process
tgid	a number representing the thread group to which a task belongs
thcount	see nlwp
tid	the unique number representing a dispatchable entity
time	cumulative CPU time, \"[DD-]HH:MM:SS\" format
times	cumulative CPU time in seconds
tname	controlling tty (terminal)
tpgid	ID of the foreground process group on the tty (terminal) that the process is connected to
trs	text resident set size
tt	controlling tty (terminal)
tty	controlling tty (terminal)
ucmd	see comm
ucomm	see comm
uid	see euid
uname	see euser
unit	displays unit which a process belongs to
user	see euser
userns	Unique inode number describing the namespace the process belongs to
utsns	Unique inode number describing the namespace the process belongs to
uunit	displays user unit which a process belongs to
vsize	see vsz
vsz	virtual memory size of the process in KiB
wchan	name of the kernel function in which the process is sleeping
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

_module_os_sid() {
    command ps -A -o user,sess  | gawk '{print $2 "\t" $1}'
}

_module_os_tty() {
    command ps aux | gawk '{ if ($7 != "?" && NR > 1) {print $7 "\t" $1} }'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"