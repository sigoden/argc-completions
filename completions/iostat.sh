#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c                             Display the CPU utilization report.
# @flag --compact                      Don't break the Device Utilization Report into sub-reports so that all the metrics get displayed on a single line.
# @flag -d                             Display the device utilization report.
# @option --dec[0|1|2] <value>         Specify the number of decimal places to use (0 to 2, default value is 2).
# @option -f <directory>
# @option -g <group_name> <device+>    group_name { device [...] | ALL } Display statistics for a group of devices.
# @flag -H                             This option must be used with option -g and indicates that only global statistics for the group are to be displayed, and not statistics for individual devices in the group.
# @flag -h                             This option is equivalent to specifying --human --pretty.
# @flag --human                        Print sizes in human readable format (e.g. 1.0k, 1.2M, etc.)  The units displayed with this option supersede any other default units (e.g.  kilobytes, sectors...) associated with the metrics.
# @option -j <selector> <device+>      Display persistent device names.
# @flag -k                             Display statistics in kilobytes per second.
# @flag -m                             Display statistics in megabytes per second.
# @flag -N                             Display the registered device mapper names for any device mapper devices.
# @option -o <JSON>                    Display the statistics in JSON (JavaScript Object Notation) format.
# @option -p <device+>                 Display statistics for block devices and all their partitions that are used by the system.
# @flag --pretty                       Make the Device Utilization Report easier to read by a human.
# @flag -s                             Display a short (narrow) version of the report that should fit in 80 characters wide screens.
# @flag -t                             Print the time for each report displayed.
# @flag -V                             Print version number then exit.
# @flag -x                             Display extended statistics.
# @flag -y                             Omit first report with statistics since system boot, if displaying multiple records at given interval.
# @flag -z                             Tell iostat to omit output for any devices for which there was no activity during the sample period.
# @arg devices
# @arg interval
# @arg count

command eval "$(argc --argc-eval "$0" "$@")"