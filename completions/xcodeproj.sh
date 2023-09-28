#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version    Show the version of the tool
# @flag --verbose    Show more debugging information
# @flag --no-ansi    Show output without ANSI codes
# @flag --help       Show help banner of specified command

# {{ xcodeproj config-dump
# @cmd Dumps the build settings of all project targets for all configurations in directories named by the target in the given output directory.
# @flag --verbose    Show more debugging information
# @flag --no-ansi    Show output without ANSI codes
# @flag --help       Show help banner of specified command
# @arg project
# @arg output
config-dump() {
    :;
}
# }} xcodeproj config-dump

# {{ xcodeproj project-diff
# @cmd Shows the difference between two projects
# @option --ignore <KEY>    A key to ignore in the comparison.
# @flag --verbose           Show more debugging information
# @flag --no-ansi           Show output without ANSI codes
# @flag --help              Show help banner of specified command
# @arg project1
# @arg project2
project-diff() {
    :;
}
# }} xcodeproj project-diff

# {{ xcodeproj show
# @cmd Shows an overview of a project in a YAML representation.
# @option --format[hash|tree_hash|raw]    YAML output format
# @flag --verbose                         Show more debugging information
# @flag --no-ansi                         Show output without ANSI codes
# @flag --help                            Show help banner of specified command
# @arg project
show() {
    :;
}
# }} xcodeproj show

# {{ xcodeproj sort
# @cmd Sorts the given project.
# @option --group-option <above|below>    The position of the groups when sorting.
# @flag --verbose                         Show more debugging information
# @flag --no-ansi                         Show output without ANSI codes
# @flag --help                            Show help banner of specified command
# @arg project
sort() {
    :;
}
# }} xcodeproj sort

# {{ xcodeproj target-diff
# @cmd Shows the difference between two targets
# @option --project <PATH>    The Xcode project document to use.
# @flag --verbose             Show more debugging information
# @flag --no-ansi             Show output without ANSI codes
# @flag --help                Show help banner of specified command
# @arg target1
# @arg target2
target-diff() {
    :;
}
# }} xcodeproj target-diff

command eval "$(argc --argc-eval "$0" "$@")"