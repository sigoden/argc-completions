#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                               Show this help
# @flag --inetd                                 Spawning from an inetd style supervisor
# @flag -S --no-site-spawner                    Don't use the site or system spawner
# @flag -v --version                            Show version number
# @option -U --sockname <PATH>                  DEPRECATED: Specify alternate sockname.
# @option --named-pipe-path <PATH>              Specify alternate named pipe path
# @option -u --unix-listener-path <PATH>        Specify alternate unix domain socket path
# @option -o --logfile <PATH>                   Specify path to logfile ('-' = stdout and stderr)
# @flag --log-level                             set the log level (0 = off, default is 1, verbose = 2)
# @option --pidfile <PATH>                      Specify path to pidfile
# @flag -p --persistent                         Persist and wait for further responses
# @flag -n --no-save-state                      Don't save state between invocations
# @option --statefile <PATH>                    Specify path to file to hold watch and trigger state
# @flag -j --json-command                       Instead of parsing CLI arguments, take a single json object from stdin
# @option --output-encoding[json|bser] <ARG>    CLI output encoding.
# @option --server-encoding[json|bser] <ARG>    CLI<->server encoding.
# @flag -f --foreground                         Run the service in the foreground
# @flag --pretty                                Force pretty output, even if stdout isn't a TTY
# @flag --no-pretty                             Don't pretty print JSON
# @flag --no-spawn                              Don't try to start the service if it is not available
# @flag --no-local                              When no-spawn is enabled, don't try to handle request in client mode if service is unavailable

# {{ watchman clock
# @cmd Returns the current clock value for a watched root
# @arg project-path![`_choice_project_path`]
clock() {
    :;
}
# }} watchman clock

# {{ watchman find
# @cmd Finds all files that match the optional list of patterns under the specified dir
# @arg project-path![`_choice_project_path`]
# @arg patterns*
find() {
    :;
}
# }} watchman find

# {{ watchman flush-subscriptions
# @cmd This is designed to be used by interactive programs that have a background process or daemon maintaining a subscription to Watchman
# @arg project-path![`_choice_project_path`]
# @arg data!
flush-subscriptions() {
    :;
}
# }} watchman flush-subscriptions

# {{ watchman get-config
# @cmd Returns the .watchmanconfig for the root
# @arg project-path![`_choice_project_path`]
get-config() {
    :;
}
# }} watchman get-config

# {{ watchman get-sockname
# @cmd Get socket path
get-sockname() {
    :;
}
# }} watchman get-sockname

# {{ watchman list-capabilities
# @cmd Returns the full list of supported capabilities offered by the watchman server
list-capabilities() {
    :;
}
# }} watchman list-capabilities

# {{ watchman log-level
# @cmd Changes the log level of your connection to the watchman service
# @arg enum![debug|error|off]
log-level() {
    :;
}
# }} watchman log-level

# {{ watchman log
# @cmd Generates a log line in the watchman log
# @arg enum[debug|error]
# @arg msg!
log() {
    :;
}
# }} watchman log

# {{ watchman query
# @cmd Executes a query against the specified root
# @arg project-path![`_choice_project_path`]
# @arg data!
query() {
    :;
}
# }} watchman query

# {{ watchman shutdown-server
# @cmd This causes your watchman service to exit with a normal status code
shutdown-server() {
    :;
}
# }} watchman shutdown-server

# {{ watchman since
# @cmd Finds all files that were modified since the specified clockspec that match the optional list of patterns
# @arg project-path![`_choice_project_path`]
# @arg clockspec!
# @arg patterns*
since() {
    :;
}
# }} watchman since

# {{ watchman state-enter
# @cmd This causes a watch to be marked as being in a particular named state
# @arg name!
state-enter() {
    :;
}
# }} watchman state-enter

# {{ watchman state-leave
# @cmd This causes a watch to no longer be marked as being in a particular named state
# @arg name!
state-leave() {
    :;
}
# }} watchman state-leave

# {{ watchman subscribe
# @cmd Subscribes to changes against a specified root and requests that they be sent to the client via its connection
# @arg project-path![`_choice_project_path`]
# @arg data!
subscribe() {
    :;
}
# }} watchman subscribe

# {{ watchman trigger-del
# @cmd Deletes a named trigger from the list of registered triggers
# @arg project-path![`_choice_project_path`]
# @arg trigger-name![`_choice_trigger_name`]
trigger-del() {
    :;
}
# }} watchman trigger-del

# {{ watchman trigger-list
# @cmd Returns the set of registered triggers associated with a root directory
# @arg project-path![`_choice_project_path`]
trigger-list() {
    :;
}
# }} watchman trigger-list

# {{ watchman trigger
# @cmd This will create or replace a trigger
# @arg project-path![`_choice_project_path`]
# @arg data!
trigger() {
    :;
}
# }} watchman trigger

# {{ watchman unsubscribe
# @cmd Cancels a named subscription against the specified root
# @arg project-path![`_choice_project_path`]
# @arg name!
unsubscribe() {
    :;
}
# }} watchman unsubscribe

# {{ watchman version
# @cmd The version and build information for the currently running watchman service
version() {
    :;
}
# }} watchman version

# {{ watchman watch-del-all
# @cmd Removes all watches and associated triggers
watch-del-all() {
    :;
}
# }} watchman watch-del-all

# {{ watchman watch-del
# @cmd Removes a watch and any associated triggers
# @arg project-path![`_choice_project_path`]
watch-del() {
    :;
}
# }} watchman watch-del

# {{ watchman watch-list
# @cmd Returns a list of watched dirs
watch-list() {
    :;
}
# }} watchman watch-list

# {{ watchman watch-project
# @cmd Requests that the project containing the requested dir is watched for changes
# @arg path!
watch-project() {
    :;
}
# }} watchman watch-project

_choice_project_path() {
    watchman watch-list  | yq '.roots[]'
}

_choice_trigger_name() {
    watchman trigger-list "$argc_project_path"  | yq '.triggers[].name'
}

command eval "$(argc --argc-eval "$0" "$@")"