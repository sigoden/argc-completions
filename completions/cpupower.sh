#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help               Shows supported commands and general usage.
# @option -c --cpu <cpulist>    Only show or set values for specific cores.
# @flag -v --version            Print the package name and version number.

# {{ cpupower frequency-info
# @cmd
# @flag -e --debug            Prints out debug information.
# @flag -f --freq             Get frequency the CPU currently runs at, according to the cpufreq core.
# @flag -w --hwfreq           Get frequency the CPU currently runs at, by reading it from hardware (only available to root).
# @flag -l --hwlimits         Determine the minimum and maximum CPU frequency allowed.
# @flag -d --driver           Determines the used cpufreq kernel driver.
# @flag -p --policy           Gets the currently used cpufreq policy.
# @flag -g --governors        Determines available cpufreq governors.
# @flag --related-cpus        Determines which CPUs run at the same hardware frequency.
# @flag -a --affected-cpus    Determines which CPUs need to have their frequency coordinated by software.
# @flag -s --stats            Shows cpufreq statistics if available.
# @flag -y --latency          Determines the maximum latency on CPU frequency changes.
# @flag -o --proc             Prints out information like provided by the /proc/cpufreq interface in 2.4.
# @flag -m --human            human-readable output for the -f, -w, -s and -y parameters.
# @flag -n --no-rounding      Output frequencies and latencies without rounding off values.
frequency-info() {
    :;
}
# }} cpupower frequency-info

# {{ cpupower frequency-set
# @cmd
# @option -d --min <FREQ>    new minimum CPU frequency the governor may select.
# @option -u --max <FREQ>    new maximum CPU frequency the governor may select.
# @option -g --governor[`_choice_governor`] <GOV>  new cpufreq governor.
# @option -f --freq          specific frequency to be set.
# @flag -r --related         modify all hardware-related CPUs at the same time
frequency-set() {
    :;
}
# }} cpupower frequency-set

# {{ cpupower idle-info
# @cmd
# @flag -f --silent    Only print a summary of all available C-states in the system.
# @flag -e --proc      deprecated.
idle-info() {
    :;
}
# }} cpupower idle-info

# {{ cpupower idle-set
# @cmd
# @option -d --disable <STATE_NO>              Disable a specific processor sleep state.
# @option -e --enable <STATE_NO>               Enable a specific processor sleep state.
# @option -D --disable-by-latency <LATENCY>    Disable all idle states with a equal or higher latency than <LATENCY>.
# @flag -E --enable-all                        Enable all idle states if not enabled already.
idle-set() {
    :;
}
# }} cpupower idle-set

# {{ cpupower set
# @cmd
# @flag -b --perf-bias    Sets a register on supported Intel processore which allows software to convey its policy for the relative importance of performance versus energy savings to the  processor.
set() {
    :;
}
# }} cpupower set

# {{ cpupower info
# @cmd
info() {
    :;
}
# }} cpupower info

# {{ cpupower monitor
# @cmd
# @flag -l                List available monitors on your system.
# @option -m*,[`_choice_monitor`] <<mon1>,<mon2>,>  Only display specific monitors.
# @option -i <seconds>    Measure interval.
# @flag -c                Schedule the process on every core before starting and ending measuring.
# @flag -v                Increase verbosity if the binary was compiled with the DEBUG option set.
monitor() {
    :;
}
# }} cpupower monitor

_choice_governor() {
    cpupower frequency-info -g | \
    sed -n 's/  .*: \(.*\)\s*$/\1/p' | \
    tr ' ' '\n'
}

_choice_monitor() {
    cpupower monitor -l 2>/dev/null | \
    sed -n 's/^Monitor "\(\S\+\)" (.*) - \(.*\)/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"