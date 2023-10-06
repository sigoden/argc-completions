#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -V                 prints the version number to standard error and exit successfully.
# @option -q <queue>       uses the specified queue.
# @flag -m                 Send mail to the user when the job has completed even if there was no output.
# @flag -M                 Never send mail to the user.
# @option -u <username>    Sends mail to username rather than the current user.
# @flag -f                 file Reads the job from file rather than standard input.
# @flag -t                 time run the job at time, given in the format [[CC]YY]MMDDhhmm[.ss]
# @flag -l                 Is an alias for atq.
# @flag -r                 Is an alias for atrm.
# @flag -d                 Is an alias for atrm.
# @flag -b                 is an alias for batch.
# @flag -v                 Shows the time the job will be executed before reading the job.
# @flag -c                 cats the jobs listed on the command line to standard output.
# @option -o <fmt>         strftime-like time format used for the job list
# @arg timespec*

command eval "$(argc --argc-eval "$0" "$@")"