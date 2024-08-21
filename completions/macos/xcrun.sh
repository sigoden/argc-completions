#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                      show this help message and exit
# @flag --version                      show the xcrun version
# @flag -v --verbose                   show verbose logging output
# @option --sdk <sdk name>             find the tool for the given SDK name
# @option --toolchain <name>           find the tool for the given toolchain
# @flag -l --log                       show commands to be executed (with --run)
# @flag -f --find                      only find and print the tool path
# @flag -r --run                       find and execute the tool (the default behavior)
# @flag -n --no-cache                  do not use the lookup cache
# @flag -k --kill-cache                invalidate all existing cache entries
# @flag --show-sdk-path                show selected SDK install path
# @flag --show-sdk-version             show selected SDK version
# @flag --show-sdk-build-version       show selected SDK build version
# @flag --show-sdk-platform-path       show selected SDK platform path
# @flag --show-sdk-platform-version    show selected SDK platform version
# @arg cmd[`_choice_cmd`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cmd() {
    ls -1 /Applications/Xcode.app/Contents/Developer/usr/bin/
    ls -1 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"