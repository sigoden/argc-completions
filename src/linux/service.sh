_patch_help() { 
    echo "Usage: service <name> <action>"
}

_patch_table() { 
    _patch_table_edit_arguments 'name;[`_choice_service`]' 'action;[`_choice_action`]'
}

_choice_service() {
    if [[ -d /run/systemd/system ]]; then
        _choice_systemctl_unit
    elif command -sq rc-service; then
        rc-service -l
    elif [[ -d /etc/init.d ]]; then
        ls -1 /etc/init.d/
    else
        service -l
    fi
}

_choice_action() {
    if [[ -d /run/systemd/system ]]; then
        printf "%s\n" start stop restart status enable disable
    elif command -sq rc-service; then
        printf "%s\n" start stop restart
    elif [[ -d /etc/init.d ]]; then
        printf "%s\n" start stop --full-restart
    else
        printf "%s\n" start stop reload restart status rcvar onestart onestop
    fi
}

_choice_systemctl_unit() {
    _argc_util_parallel _choice_systemctl_unit_only ::: _choice_systemctl_unit_file
}

_choice_systemctl_unit_file() {
    systemctl list-unit-files --full --no-legend --no-pager --plain --type=service 2>/dev/null | \
    sed -n 's/^\([A-Za-z0-9_-]\+\)\.service .*/\1/p'
}

_choice_systemctl_unit_only() {
    systemctl list-units --state=loaded --full --no-legend --no-pager --plain --type=service 2>/dev/null | \
    sed -n 's/^\([A-Za-z0-9_-]\+\)\.service .*/\1/p'
}
