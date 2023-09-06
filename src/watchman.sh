_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | sed '/^Available commands:/,$ d'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# clock <project-path> - Returns the current clock value for a watched root
# find <project-path> [patterns] - Finds all files that match the optional list of patterns under the specified dir
# flush-subscriptions <project-path> <data> - This is designed to be used by interactive programs that have a background process or daemon maintaining a subscription to Watchman
# get-config <project-path> - Returns the .watchmanconfig for the root
# get-sockname - Get socket path
# list-capabilities - Returns the full list of supported capabilities offered by the watchman server
# log-level <debug|error|off> - Changes the log level of your connection to the watchman service
# log {debug|error} <msg> - Generates a log line in the watchman log
# query <project-path> <data> - Executes a query against the specified root
# shutdown-server - This causes your watchman service to exit with a normal status code
# since <project-path> <clockspec> [patterns] - Finds all files that were modified since the specified clockspec that match the optional list of patterns
# state-enter <name> - This causes a watch to be marked as being in a particular named state
# state-leave <name> - This causes a watch to no longer be marked as being in a particular named state
# subscribe <project-path> <data> - Subscribes to changes against a specified root and requests that they be sent to the client via its connection
# trigger-del <project-path> <trigger-name> - Deletes a named trigger from the list of registered triggers
# trigger-list <project-path> - Returns the set of registered triggers associated with a root directory
# trigger <project-path> <data> - This will create or replace a trigger
# unsubscribe <project-path> <name> - Cancels a named subscription against the specified root
# version - The version and build information for the currently running watchman service
# watch-del-all - Removes all watches and associated triggers
# watch-del <project-path> - Removes a watch and any associated triggers
# watch-list - Returns a list of watched dirs
# watch-project <path> - Requests that the project containing the requested dir is watched for changes
EOF
}

_patch_table() {
    table="$(
        _patch_table_edit_arguments \
        'project-path;[`_choice_project_path`]' \
        'trigger-name;[`_choice_trigger_name`]' \
    )"
    if [[ "$*" == "watchman" ]]; then
        echo "$table" | \
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--output-encoding;[json|bser]' \
            '--server-encoding;[json|bser]' \
        | \
        _patch_table_edit_arguments ';;'

    else
        echo "$table"
    fi
}

_choice_project_path() {
    watchman watch-list  | yq '.roots[]'
}

_choice_trigger_name() {
    watchman trigger-list "$argc_project_path"  | yq '.triggers[].name'
}
