#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --verbose
# @flag --capture_output             Captures the output of the current run, and generates a markdown issue template
# @flag --troubleshoot               Enables extended verbose mode.
# @flag --env                        STRING[,STRING2] Add environment(s) to use with `dotenv`
# @flag -h --help                    Display help documentation
# @flag -v --version                 Display version information
# @flag --disable_runner_upgrades    Prevents fastlane from attempting to update FastlaneRunner swift project
# @flag --swift_server_port          INT Set specific port to communicate between fastlane and FastlaneRunner
# @arg lane[`_choice_lane`]

# {{ fastlane action
# @cmd Shows more information for a specific command
# @arg tool_name
action() {
    :;
}
# }} fastlane action

# {{ fastlane actions
# @cmd Lists all available fastlane actions
# @option --platform[ios|android|mac] <STRING>    Only show actions available on the given platform
actions() {
    :;
}
# }} fastlane actions

# {{ fastlane add_plugin
# @cmd Add a new plugin to your fastlane setup
# @arg plugin_name
add_plugin() {
    :;
}
# }} fastlane add_plugin

# {{ fastlane docs
# @cmd Generate a markdown based documentation based on the Fastfile
# @flag -f --force    Overwrite the existing README.md in the ./fastlane
docs() {
    :;
}
# }} fastlane docs

# {{ fastlane enable_auto_complete
# @cmd Enable tab auto completion
# @option -c --custom <STRING[,STRING2]>    Add custom command(s)
enable_auto_complete() {
    :;
}
# }} fastlane enable_auto_complete

# {{ fastlane env
# @cmd Print your fastlane environment, use this when you submit an issue on GitHub
env() {
    :;
}
# }} fastlane env

# {{ fastlane init
# @cmd Helps you with your initial fastlane setup
# @option -u --user <STRING>    iOS projects only: Your Apple ID
init() {
    :;
}
# }} fastlane init

# {{ fastlane install_plugins
# @cmd Install all plugins for this project
install_plugins() {
    :;
}
# }} fastlane install_plugins

# {{ fastlane lanes
# @cmd Lists all available lanes and shows their description
# @flag -j --json    Output the lanes in JSON instead of text
lanes() {
    :;
}
# }} fastlane lanes

# {{ fastlane list
# @cmd Lists all available lanes without description
list() {
    :;
}
# }} fastlane list

# {{ fastlane new_action
# @cmd Create a new custom action for fastlane.
# @option --name <STRING>    Name of your new action
new_action() {
    :;
}
# }} fastlane new_action

# {{ fastlane new_plugin
# @cmd Create a new plugin that can be used with fastlane
# @arg plugin_name
new_plugin() {
    :;
}
# }} fastlane new_plugin

# {{ fastlane run
# @cmd Run a fastlane one-off action without a full lane
# @arg action
# @arg key1-value1 <key1:value1>
# @arg key2-value2 <key2:value2>
run() {
    :;
}
# }} fastlane run

# {{ fastlane search_plugins
# @cmd Search for plugins, search query is optional
# @arg search_query
search_plugins() {
    :;
}
# }} fastlane search_plugins

# {{ fastlane socket_server
# @cmd Starts local socket server and enables only a single local connection
# @flag -s --stay_alive                        Keeps socket server up even after error or
# @option -c --connection_timeout <seconds>    Sets connection established timeout
# @option -p --port <port>                     Sets the port on localhost for the socket
socket_server() {
    :;
}
# }} fastlane socket_server

# {{ fastlane trigger
# @cmd Run a specific lane.
# @option --swift_server_port <INT>    Set specific port to communicate between
# @arg lane[`_choice_lane`]
trigger() {
    :;
}
# }} fastlane trigger

# {{ fastlane update_fastlane
# @cmd Update fastlane to the latest release
update_fastlane() {
    :;
}
# }} fastlane update_fastlane

# {{ fastlane update_plugins
# @cmd Update all plugin dependencies
update_plugins() {
    :;
}
# }} fastlane update_plugins

_choice_lane() {
    if [[ -e "Fastfile" ]]; then
        file="Fastfile"
    elif [[ -e "fastlane/Fastfile" ]]; then
        file="fastlane/Fastfile"
    elif [[ -e ".fastlane/Fastfile" ]]; then
        file=".fastlane/Fastfile"
    else
        return
    fi
    sed -n 's/^  lane \+:\(\S\+\).*$/\1/p' "$file"
}

command eval "$(argc --argc-eval "$0" "$@")"