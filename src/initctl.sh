_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        sed '/^COMMANDS/,$ d'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# debug - Toggle finit (daemon) debug to /dev/console

# help - Show built-in help text

# version - Show Finit (daemon) version

# ls/list - List all *.conf files in /etc/finit.d

# create CONF - Create .conf in /etc/finit.d/available

# delete CONF - Delete .conf in /etc/finit.d/available

# show CONF - Show .conf in /etc/finit.d/available

# edit CONF - Edit .conf in /etc/finit.d/available

# touch CONF - Change (mark as modified) .conf in /etc/finit.d/available

# enable CONF - Enable .conf in /etc/finit.d/available

# disable CONF - Disable .conf in /etc/finit.d/enabled

# reload - Reload *.conf in /etc/finit.d

# cond - Control condition

## set COND - Set (assert) user-defined condition, +usr/COND

## clr/clear COND - Clear (deassert) user-defined condition, -usr/COND

## dump - Dump all conditions and their status

# ident [NAME] - Display indentities of all run/task/services, or only instances matching NAME.

# log [NAME] - Show ten last Finit, or NAME, messages from syslog

# start NAME[:ID] - Start service by name, with optional ID

# stop NAME[:ID] - Stop/Pause a running service by name

# reload NAME[:ID] - Reload service by name (SIGHUP or restart)

# restart NAME[:ID] - Restart (stop/start) service by name

# status NAME[:ID] - Show service status, by name.

# cgroup - List cgroup config overview

# ps - List processes based on cgroups

# top - Show top-like listing based on cgroups

# runlevel LEVEL - Show or set runlevel: 0 halt, 6 reboot

# reboot - Reboot system, default if reboot is symlinked to initctl

# halt - Halt system, default if halt is symlinked to initctl

# poweroff - Power-off system, default if poweroff is symlinked to initctl

# suspend - Suspend system, default if suspend is symlinked to initctl

# utmp - Conrol utmp

## show - Raw dump of UTMP/WTMP db
EOF
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'conf;[`_choice_service`]' \
            'name;[`_choice_service`]' \
            'name-id;[`_choice_service`]' \
    )"
    if [[ "$*" == "initctl" ]]; then
        echo "$table" | \
        _patch_table_add_metadata combine-shorts inherit-flag-options

    elif [[ "$*" == "initctl runlevel" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'level;[`_choice_level`]'

    else
        echo "$table"
    fi
}

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
