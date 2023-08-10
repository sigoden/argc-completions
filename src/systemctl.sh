_patch_help() {
    if [[ "$*" == "systemctl" ]]; then
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "systemctl" ]]; then
        _patch_table_edit_options '--type;[`_choice_type`]'
        return
    fi

    table="$(_patch_table_copy_options systemctl; cat)"

    if [[ "$*" == "systemctl add-wants" ]] \
    || [[ "$*" == "systemctl add-requires" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;' 'target:[`_choice_target`]' 'unit;*[`_choice_unit`]'

    elif [[ "$*" == "systemctl bind" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit;[`_choice_unit`]' 'path...'

    elif [[ "$*" == "systemctl cat" ]] \
      || [[ "$*" == "systemctl freeze" ]] \
      || [[ "$*" == "systemctl is-active" ]] \
      || [[ "$*" == "systemctl is-failed" ]] \
      || [[ "$*" == "systemctl list-dependencies" ]] \
      || [[ "$*" == "systemctl list-unit-files" ]] \
      || [[ "$*" == "systemctl list-units" ]] \
      || [[ "$*" == "systemctl reset-failed" ]] \
      || [[ "$*" == "systemctl thaw" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;*[`_choice_unit`]'

    elif [[ "$*" == "systemctl clean" ]] \
      || [[ "$*" == "systemctl disable" ]] \
      || [[ "$*" == "systemctl edit" ]] \
      || [[ "$*" == "systemctl is-enabled" ]] \
      || [[ "$*" == "systemctl kill" ]] \
      || [[ "$*" == "systemctl mask" ]] \
      || [[ "$*" == "systemctl preset" ]] \
      || [[ "$*" == "systemctl reenable" ]] \
      || [[ "$*" == "systemctl reload" ]] \
      || [[ "$*" == "systemctl reload-or-restart" ]] \
      || [[ "$*" == "systemctl restart" ]] \
      || [[ "$*" == "systemctl revert" ]] \
      || [[ "$*" == "systemctl start" ]] \
      || [[ "$*" == "systemctl stop" ]] \
      || [[ "$*" == "systemctl try-reload-or-restart" ]] \
      || [[ "$*" == "systemctl try-restart" ]] \
      || [[ "$*" == "systemctl unmask" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit;*[`_choice_unit`]'

    elif [[ "$*" == "systemctl enable" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit-path;*[`_choice_unit_path`]'

    elif [[ "$*" == "systemctl isolate" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit;[`_choice_unit`]'

    elif [[ "$*" == "systemctl link" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'path...'

    elif [[ "$*" == "systemctl list-jobs" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;[`_choice_job`]'

    elif [[ "$*" == "systemctl list-machines" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;[`_choice_machine`]'

    elif [[ "$*" == "systemctl list-sockets" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;*[`_choice_socket_unit`]'

    elif [[ "$*" == "systemctl list-timer" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;*[`_choice_timer_unit`]'

    elif [[ "$*" == "systemctl log-level" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'level;[`_choice_log_level`]'

    elif [[ "$*" == "systemctl log-target" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'target;[`_choice_target`]'

    elif [[ "$*" == "systemctl mount-image" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit;[`_choice_unit`]' 'path...'

    elif [[ "$*" == "systemctl service-log-level" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'service;[`_choice_service`]' 'level;[`_choice_log_level`]'

    elif [[ "$*" == "systemctl service-log-target" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'service;[`_choice_service`]' 'target;[`_choice_target`]'

    elif [[ "$*" == "systemctl set-default" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'target:[`_choice_target`]'

    elif [[ "$*" == "systemctl set-environment" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;[`_choice_set_environment`]'

    elif [[ "$*" == "systemctl set-property" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'unit;[`_choice_unit`]' 'property;[`_choice_perperty`]'

    elif [[ "$*" == "systemctl show" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern-job;*[`_choice_unit_job`]'

    elif [[ "$*" == "systemctl status" ]] || [[ "$*" == "systemctl help" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern-pid;*[`_choice_unit_pid`]'

    elif [[ "$*" == "systemctl unset-environment" ]] || [[ "$*" == "systemctl import-environment" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pattern;[`_choice_environment`]'

    else
        echo "$table" 
    fi
}

_systemctl() {
    systemctl $(_argc_util_param_select_options --user) "$@"
}

_choice_type() {
    _systemctl --type=help | tail -n +2
}

_choice_unit() {
    _systemctl list-units --no-pager -o json | yq '.[] | .unit + "	" + .description'
}

_choice_timer_unit() {
    _systemctl list-units --no-pager -o json | yq '.[] | select(.unit == "*.timer") | .unit + "	" + .description'
}

_choice_socket_unit() {
    _systemctl list-units --no-pager -o json | yq '.[] | select(.unit == "*.socket") | .unit + "	" + .description'
}

_choice_unit_pid() {
    _argc_util_parallel _choice_unit ::: _module_os_pid
}

_choice_unit_job() {
    _argc_util_parallel _choice_unit ::: _choice_job
}

_choice_job() {
    _systemctl list-jobs --no-pager -o json | yq '.[] | .job + "	" + .description'
}

_choice_perperty() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _systemctl show | _argc_util_transform format== suffix== nospace
    fi
}

_choice_service() {
    _systemctl list-units --type service -o json | yq '.[] | .unit + "	" + .description'
}

_choice_log_level() {
    command cat <<-'EOF'
0	system is unusable
1	action must be taken immediately
2	critical conditions
3	error conditions
4	warning conditions
5	normal, but significant, condition
6	informational message
7	debug-level message
emerg	system is unusable
alert	action must be taken immediately
crit	critical conditions
err	error conditions
warning	warning conditions
notice	normal, but significant, condition
info	informational message
debug	debug-level message
EOF
}

_choice_unit_path() {
    _choice_unit
    _argc_util_comp_path
}

_choice_target() {
    _systemctl list-units --type target --no-pager -o json | yq '.[] | .unit + "	" + .description'
}

_choice_machine() {
    _systemctl list-machines --no-pager -o json | yq '.[].name' | gawk '{print $1}'
}

_choice_set_environment() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_environment | _argc_util_transform suffix== nospace
    fi
}

_choice_environment() {
    _systemctl show-environment | _argc_util_transform format==
}
