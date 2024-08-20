#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ nssm install
# @cmd Show service installation GUI
install() {
    :;
}
# }} nssm install

# {{ nssm edit
# @cmd Show service editing GUI
# @arg servicename![`_choice_servicename`]
edit() {
    :;
}
# }} nssm edit

# {{ nssm dump
# @cmd Dump service parameters
# @arg servicename![`_choice_servicename`]
dump() {
    :;
}
# }} nssm dump

# {{ nssm get
# @cmd Get service parameters
# @arg servicename![`_choice_servicename`]
# @arg parameter![`_choice_parameter_name`]
get() {
    :;
}
# }} nssm get

# {{ nssm set
# @cmd Set service parameters
# @arg servicename![`_choice_servicename`]
# @arg parameter![`_choice_parameter_name`]
# @arg value![`_choice_parameter_value`]
set() {
    :;
}
# }} nssm set

# {{ nssm reset
# @cmd Reset service parameters
# @arg servicename![`_choice_servicename`]
# @arg parameter![`_choice_parameter_name`]
reset() {
    :;
}
# }} nssm reset

# {{ nssm remove
# @cmd Show service removal GUI
# @arg servicename![`_choice_servicename`]
# @arg confirm![confirm]
remove() {
    :;
}
# }} nssm remove

# {{ nssm start
# @cmd Start service
# @arg servicename![`_choice_servicename`]
start() {
    :;
}
# }} nssm start

# {{ nssm stop
# @cmd Stop service
# @arg servicename![`_choice_servicename`]
stop() {
    :;
}
# }} nssm stop

# {{ nssm restart
# @cmd Restart service
# @arg servicename![`_choice_servicename`]
restart() {
    :;
}
# }} nssm restart

# {{ nssm status
# @cmd Check service status
# @arg servicename![`_choice_servicename`]
status() {
    :;
}
# }} nssm status

# {{ nssm statuscode
# @cmd Check service statucode
# @arg servicename![`_choice_servicename`]
statuscode() {
    :;
}
# }} nssm statuscode

# {{ nssm rotate
# @cmd Rotate service
# @arg servicename![`_choice_servicename`]
rotate() {
    :;
}
# }} nssm rotate

# {{ nssm processes
# @cmd list the processes associated with a specific service
# @arg servicename![`_choice_servicename`]
processes() {
    :;
}
# }} nssm processes

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"