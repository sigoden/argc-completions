#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A                                This option is equivalent to specifying -n -u -I ALL.
# @option --dec <0 | 1 | 2>               Specify the number of decimal places to use (0 to 2, default value is 2).
# @flag -H                                Also detect and display statistics for physically hotplugged vCPUs.
# @option -I[SUM|CPU|SCPU|ALL] <value>    Report interrupts statistics.
# @option -N <node_list | ALL>            Indicate the NUMA nodes for which statistics are to be reported.
# @flag -n                                Report summary CPU statistics based on NUMA node placement.
# @option -o <JSON>                       Display the statistics in JSON (JavaScript Object Notation) format.
# @option -P*[`_choice_cpu`] <value>      Indicate the processors for which statistics are to be reported.
# @flag -T                                Display topology elements in the CPU report (see option -u below).
# @flag -u                                Report CPU utilization.
# @flag -V                                Print version number then exit.
# @arg interval
# @arg count

_choice_cpu() {
    echo ALL
    seq 0 $(getconf _NPROCESSORS_ONLN)
}

command eval "$(argc --argc-eval "$0" "$@")"