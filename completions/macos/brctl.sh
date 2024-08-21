#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ brctl diagnose
# @cmd diagnose and collect logs
# @option -M --collect-mobile-documents <container>  (default: all containers)
# @flag -s --sysdiagnose      Do not collect what's already part of sysdiagnose
# @option -n --name <name>    Change the device name
# @arg diagnosis-output-path
diagnose() {
    :;
}
# }} brctl diagnose

# {{ brctl download
# @cmd download a local copy of the document at this path
# @arg path
download() {
    :;
}
# }} brctl download

# {{ brctl evict
# @cmd evict the local copy of the document at this path
# @arg path
evict() {
    :;
}
# }} brctl evict

# {{ brctl log
# @cmd
# @option -c --color[yes|no]         turn on or off color use
# @option -d --path <logs-dir>       use <logs-dir> instead of default
# @option -H --home <home-dir>       use this as the ~ prefix, to look for ~/L/
# @option -f --filter <predicate>    only show lines matching predicate
# @option -m --multiline[yes|no]     turn on or off multiple line logging
# @option -n <number>                number of initial lines to display
# @flag -p --page                    use paging
# @flag -w --wait                    wait for new logs continuously (syslog -w)
# @flag -t --shorten                 Shorten UUIDs, paths, etc
# @flag -s --digest                  Only print digest logs
# @arg command
log() {
    :;
}
# }} brctl log

# {{ brctl dump
# @cmd dump the CloudDocs database
# @option -o --output <file-path>         redirect output to <file-path>
# @option -d --database-path <db-path>    Use the database at <db-path>
# @arg container
dump() {
    :;
}
# }} brctl dump

# {{ brctl monitor
# @cmd use NSMetadataQuery to monitor the container
# @option -S --scope <scope>    restrict the NSMDQ scope to DOCS, DATA, or BOTH
# @arg container
monitor() {
    :;
}
# }} brctl monitor

# {{ brctl versions
# @cmd list the non-local versions of the document at this path.
# @flag -a --all    List all non-local versions including those that are locally cached
# @arg path
# @arg all-etags* <ALL|etags>
versions() {
    :;
}
# }} brctl versions

command eval "$(argc --argc-eval "$0" "$@")"