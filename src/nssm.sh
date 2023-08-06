_patch_help() { 
    if [[ "$*" == "nssm" ]]; then
        cat <<-'EOF'
Commands:
    install         Show service installation GUI
    edit            Show service editing GUI
    dump            Dump service parameters
    get             Get service parameters
    set             Set service parameters
    reset           Reset service parameters
    remove          Show service removal GUI
    start           Start service
    stop            Stop service
    restart         Restart service
    status          Check service status
    statuscode      Check service statucode
    rotate          Rotate service
    processes       list the processes associated with a specific service 
EOF
    else
        cat <<-'EOF' | _patch_help_select_subcmd $@
nssm install
nssm edit <servicename>
nssm dump <servicename>
nssm get <servicename> <parameter>
nssm set <servicename> <parameter> <value>
nssm reset <servicename> <parameter>
nssm remove <servicename> <confirm>
nssm start <servicename>
nssm stop <servicename>
nssm restart <servicename>
nssm status <servicename>
nssm statuscode <servicename>
nssm rotate <servicename>
nssm processes <servicename>
EOF
    fi
}

_patch_table() { 
    if [[ "$*" == "nssm edit" ]] \
    || [[ "$*" == "nssm dump"  ]] \
    || [[ "$*" == "nssm start"  ]] \
    || [[ "$*" == "nssm stop"  ]] \
    || [[ "$*" == "nssm restart"  ]] \
    || [[ "$*" == "nssm status"  ]] \
    || [[ "$*" == "nssm statuscode"  ]] \
    || [[ "$*" == "nssm rotate"  ]] \
    || [[ "$*" == "nssm processes"  ]] \
    ; then
        _patch_table_edit_arguments 'servicename;[`_choice_servicename`]'

    elif [[ "$*" == "nssm get" ]] \
      || [[ "$*" == "nssm reset" ]] \
    ; then
        _patch_table_edit_arguments \
            'servicename;[`_choice_servicename`]' \
            'parameter;[`_choice_parameter_name`]' \

    elif [[ "$*" == "nssm set" ]]; then
        _patch_table_edit_arguments \
            'servicename;[`_choice_servicename`]' \
            'parameter;[`_choice_parameter_name`]' \
            'value;[`_choice_parameter_value`]' \

    elif [[ "$*" == "nssm remove" ]]; then
        _patch_table_edit_arguments \
            'servicename;[`_choice_servicename`]' \
            'confirm;[confirm]' \

    else
        cat
    fi
}

_choice_servicename() {
    nssm list
}

_choice_parameter_name() {
    cat <<-'EOF'
AppParameters
AppDirectory
DisplayName
Description
ObjectName
Start
Type
DependOnService
AppPriority
AppNoConsole
AppAffinity
AppStopMethodSkip
AppStopMethodConsole
AppStopMethodWindow
AppStopMethodThreads
AppThrottle
AppExit
AppRestartDelay
AppStdout
AppStderr
AppStdoutCreationDisposition
AppStderrCreationDisposition
AppRotateFiles
AppRotateOnline
AppRotateSeconds
AppRotateBytes
AppEnvironmentExtra
EOF
}

_choice_parameter_value() {
    case "${argc__positionals[1]}" in
        AppDirectory)
            _argc_util_comp_path dir
            ;;
        AppStdout|AppStderr)
            _argc_util_comp_path
            ;;
        Start)
            cat <<-'EOF'
SERVICE_AUTO_START	Automatic startup at boot.
SERVICE_DELAYED_AUTO_START	Delayed startup at boot.
SERVICE_DEMAND_START	Manual startup.
SERVICE_DISABLED	Service is disabled.
EOF
            ;;
        Type)
            cat <<-'EOF'
SERVICE_WIN32_OWN_PROCESS	A standalone service. This is the default.
SERVICE_INTERACTIVE_PROCESS	A service which can interact with the desktop.
EOF
            ;;
        AppPriority)
            cat <<-'EOF'
REALTIME_PRIORITY_CLASS
HIGH_PRIORITY_CLASS
ABOVE_NORMAL_PRIORITY_CLASS
NORMAL_PRIORITY_CLASS
BELOW_NORMAL_PRIORITY_CLASS
IDLE_PRIORITY_CLASS
EOF
            ;;
    esac
}