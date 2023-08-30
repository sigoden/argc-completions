#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help            help for this command
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output

# {{ exercism configure
# @cmd Configure the command-line client.
# @option -a --api <string>          API base url
# @flag -h --help                    help for configure
# @flag --no-verify                  skip online token authorization check
# @flag -s --show                    show the current configuration
# @option -t --token <string>        authentication token used to connect to the site
# @option -w --workspace <string>    directory for exercism exercises
# @option --timeout <int>            override the default HTTP timeout (seconds)
# @flag --unmask-token               will unmask the API during a request/response dump
# @flag -v --verbose                 verbose output
configure() {
    :;
}
# }} exercism configure

# {{ exercism download
# @cmd Download an exercise.
# @option -e --exercise <string>    the exercise slug
# @flag -F --force                  overwrite existing exercise directory
# @flag -h --help                   help for download
# @option -T --team <string>        the team slug
# @option -t --track <string>       the track ID
# @option -u --uuid <string>        the solution UUID
# @option --timeout <int>           override the default HTTP timeout (seconds)
# @flag --unmask-token              will unmask the API during a request/response dump
# @flag -v --verbose                verbose output
download() {
    :;
}
# }} exercism download

# {{ exercism open
# @cmd Open an exercise on the website.
# @flag -h --help            help for open
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
open() {
    :;
}
# }} exercism open

# {{ exercism prepare
# @cmd Prepare does setup for Exercism and its tracks.
# @flag -h --help            help for prepare
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
prepare() {
    :;
}
# }} exercism prepare

# {{ exercism submit
# @cmd Submit your solution to an exercise.
# @flag -h --help            help for submit
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
# @arg file1
# @arg file2*
submit() {
    :;
}
# }} exercism submit

# {{ exercism test
# @cmd Run the exercise's tests.
# @flag -h --help            help for test
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
test() {
    :;
}
# }} exercism test

# {{ exercism troubleshoot
# @cmd Troubleshoot does a diagnostic self-check.
# @flag -f --full-api-key    display the user's full API key, censored by default
# @flag -h --help            help for troubleshoot
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
troubleshoot() {
    :;
}
# }} exercism troubleshoot

# {{ exercism upgrade
# @cmd Upgrade to the latest version of the CLI.
# @flag -h --help            help for upgrade
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
upgrade() {
    :;
}
# }} exercism upgrade

# {{ exercism version
# @cmd Version outputs the version of CLI.
# @flag -h --help            help for version
# @flag -l --latest          check latest available version
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
version() {
    :;
}
# }} exercism version

# {{ exercism workspace
# @cmd Print out the path to your Exercism workspace.
# @flag -h --help            help for workspace
# @option --timeout <int>    override the default HTTP timeout (seconds)
# @flag --unmask-token       will unmask the API during a request/response dump
# @flag -v --verbose         verbose output
workspace() {
    :;
}
# }} exercism workspace

command eval "$(argc --argc-eval "$0" "$@")"