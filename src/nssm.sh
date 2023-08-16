_patch_help() { 
    cat <<-'EOF' | _patch_help_embed_help $@
# install - Show service installation GUI
# edit <servicename> - Show service editing GUI
# dump <servicename> - Dump service parameters
# get <servicename> <parameter> - Get service parameters
# set <servicename> <parameter> <value> - Set service parameters
# reset <servicename> <parameter> - Reset service parameters
# remove <servicename> <confirm> - Show service removal GUI
# start <servicename> - Start service
# stop <servicename> - Stop service
# restart <servicename> - Restart service
# status <servicename> - Check service status
# statuscode <servicename> - Check service statucode
# rotate <servicename> - Rotate service
# processes <servicename> - list the processes associated with a specific service 
EOF
}

_patch_table() { 
    if [[ "$*" == "nssm edit" ]] \
    || [[ "$*" == "nssm dump" ]] \
    || [[ "$*" == "nssm start" ]] \
    || [[ "$*" == "nssm stop" ]] \
    || [[ "$*" == "nssm restart" ]] \
    || [[ "$*" == "nssm status" ]] \
    || [[ "$*" == "nssm statuscode" ]] \
    || [[ "$*" == "nssm rotate" ]] \
    || [[ "$*" == "nssm processes" ]] \
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
