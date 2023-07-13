#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --command                        Evaluate the specified commands instead of reading from the commandline, passing additional positional arguments through $argv.
# @option -C --init-command <COMMANDS>        Evaluate specified commands after reading the configuration but before executing command specified by -c or reading interactive input.
# @option -d --debug <DEBUG_CATEGORIES>       Enables debug output and specify a pattern for matching debug categories.
# @option -o --debug-output <DEBUG_FILE>      Specifies a file path to receive the debug output, including categories and  fish_trace.
# @flag -i --interactive                      The shell is interactive.
# @flag -l --login                            Act as if invoked as a login shell.
# @flag -N --no-config                        Do not read configuration files.
# @flag -n --no-execute                       Do not execute any commands, only perform syntax checking.
# @option -p --profile <PROFILE_FILE>         when fish exits, output timing information on all executed commands to the specified file.
# @option --profile-startup <PROFILE_FILE>    Will write timing for fish startup to specified file.
# @flag -P --private                          Enables private mode: fish will not access old or store new history.
# @flag --print-rusage-self                   When fish exits, output stats from getrusage.
# @flag --print-debug-categories              Print all debug categories, and then exit.
# @flag -v --version                          Print version and exit.
# @option -f --features                       Enables one or more comma-separated feature flags.
# @arg file
# @arg args*

command eval "$(argc --argc-eval "$0" "$@")"