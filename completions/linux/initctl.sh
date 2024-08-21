#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @flag -b --batch         Batch mode, no screen size probing.
# @flag -c --create        Create missing paths (and files) as needed.
# @flag -f --force         Ignore missing files and arguments, never prompt.
# @flag -h --help          Show built-in help text.
# @flag -1 --once          Only one lap in commands like top.
# @flag -p --plain         Use plain table headings, no ANSI control characters.
# @flag -q --quiet         Silent, only return status of command.
# @flag -t --no-heading    Skip table headings.
# @flag -v --verbose       Verbose output, where applicable.

# {{ initctl debug
# @cmd Toggle finit (daemon) debug to /dev/console
debug() {
    :;
}
# }} initctl debug

# {{ initctl version
# @cmd Show Finit (daemon) version
version() {
    :;
}
# }} initctl version

# {{ initctl ls
# @cmd List all *.conf files in /etc/finit.d
# @alias list
ls() {
    :;
}
# }} initctl ls

# {{ initctl create
# @cmd Create .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
create() {
    :;
}
# }} initctl create

# {{ initctl delete
# @cmd Delete .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
delete() {
    :;
}
# }} initctl delete

# {{ initctl show
# @cmd Show .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
show() {
    :;
}
# }} initctl show

# {{ initctl edit
# @cmd Edit .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
edit() {
    :;
}
# }} initctl edit

# {{ initctl touch
# @cmd Change (mark as modified) .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
touch() {
    :;
}
# }} initctl touch

# {{ initctl enable
# @cmd Enable .conf in /etc/finit.d/available
# @arg conf[`_choice_service`]
enable() {
    :;
}
# }} initctl enable

# {{ initctl disable
# @cmd Disable .conf in /etc/finit.d/enabled
# @arg conf[`_choice_service`]
disable() {
    :;
}
# }} initctl disable

# {{ initctl reload
# @cmd Reload *.conf in /etc/finit.d
reload() {
    :;
}
# }} initctl reload

# {{ initctl cond
# @cmd Control condition
cond() {
    :;
}

# {{{ initctl cond set
# @cmd Set (assert) user-defined condition, +usr/COND
# @arg cond
cond::set() {
    :;
}
# }}} initctl cond set

# {{{ initctl cond clr
# @cmd Clear (deassert) user-defined condition, -usr/COND
# @alias clear
# @arg cond
cond::clr() {
    :;
}
# }}} initctl cond clr

# {{{ initctl cond dump
# @cmd Dump all conditions and their status
cond::dump() {
    :;
}
# }}} initctl cond dump
# }} initctl cond

# {{ initctl ident
# @cmd Display indentities of all run/task/services, or only instances matching NAME.
# @arg name[`_choice_service`]
ident() {
    :;
}
# }} initctl ident

# {{ initctl log
# @cmd Show ten last Finit, or NAME, messages from syslog
# @arg name[`_choice_service`]
log() {
    :;
}
# }} initctl log

# {{ initctl start
# @cmd Start service by name, with optional ID
# @arg name-id[`_choice_service`] <NAME[:ID]>
start() {
    :;
}
# }} initctl start

# {{ initctl stop
# @cmd Stop/Pause a running service by name
# @arg name-id[`_choice_service`] <NAME[:ID]>
stop() {
    :;
}
# }} initctl stop

# {{ initctl restart
# @cmd Restart (stop/start) service by name
# @arg name-id[`_choice_service`] <NAME[:ID]>
restart() {
    :;
}
# }} initctl restart

# {{ initctl status
# @cmd Show service status, by name.
# @arg name-id[`_choice_service`] <NAME[:ID]>
status() {
    :;
}
# }} initctl status

# {{ initctl cgroup
# @cmd List cgroup config overview
cgroup() {
    :;
}
# }} initctl cgroup

# {{ initctl ps
# @cmd List processes based on cgroups
ps() {
    :;
}
# }} initctl ps

# {{ initctl top
# @cmd Show top-like listing based on cgroups
top() {
    :;
}
# }} initctl top

# {{ initctl runlevel
# @cmd Show or set runlevel: 0 halt, 6 reboot
# @arg level[`_choice_level`]
runlevel() {
    :;
}
# }} initctl runlevel

# {{ initctl reboot
# @cmd Reboot system, default if reboot is symlinked to initctl
reboot() {
    :;
}
# }} initctl reboot

# {{ initctl halt
# @cmd Halt system, default if halt is symlinked to initctl
halt() {
    :;
}
# }} initctl halt

# {{ initctl poweroff
# @cmd Power-off system, default if poweroff is symlinked to initctl
poweroff() {
    :;
}
# }} initctl poweroff

# {{ initctl suspend
# @cmd Suspend system, default if suspend is symlinked to initctl
suspend() {
    :;
}
# }} initctl suspend

# {{ initctl utmp
# @cmd Conrol utmp
utmp() {
    :;
}

# {{{ initctl utmp show
# @cmd Raw dump of UTMP/WTMP db
utmp::show() {
    :;
}
# }}} initctl utmp show
# }} initctl utmp

_choice_service() {
    find /etc/init/ -maxdepth 1 -type f -printf "%P\n" | sed -n 's/\.conf$//p'
}

_choice_level() {
    cat <<-'EOF'
1	halt
2
3
4
5
6	reboot
7
8
9
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"