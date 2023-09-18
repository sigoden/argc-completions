#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                              Print help information
# @flag -V --version                           Print version information
# @option --makefile <FILE>                    The optional toml file containing the tasks definitions
# @option -t --task                            The task name to execute (can omit the flag if the task name is the last argument) [default: default]
# @option -p --profile                         The profile name (will be converted to lower case) [default: development]
# @option --cwd <DIRECTORY>                    Will set the current working directory.
# @flag --no-workspace                         Disable workspace support (tasks are triggered on workspace and not on members)
# @flag --no-on-error                          Disable on error flow even if defined in config sections
# @flag --allow-private                        Allow invocation of private tasks
# @flag --skip-init-end-tasks                  If set, init and end tasks are skipped
# @option --skip-tasks <SKIP_TASK_PATTERNS>    Skip all tasks that match the provided regex (example: pre.*|post.*)
# @option --env-file <FILE>                    Set environment variables from provided file
# @option -e --env                             Set environment variables
# @option -l --loglevel[verbose|info|error|off] <LOG LEVEL>  The log level [default: info]
# @flag -v --verbose                           Sets the log level to verbose (shorthand for --loglevel verbose)
# @flag --quiet                                Sets the log level to error (shorthand for --loglevel error)
# @flag --silent                               Sets the log level to off (shorthand for --loglevel off)
# @flag --no-color                             Disables colorful output
# @flag --time-summary                         Print task level time summary at end of flow
# @flag --experimental                         Allows access unsupported experimental predefined tasks.
# @flag --disable-check-for-updates            Disables the update check during startup
# @option --output-format[default|short-description|markdown|markdown-single-page|markdown-sub-section|autocomplete] <OUTPUT FORMAT>  The print/list steps format (some operations do not support all formats)
# @option --output-file <OUTPUT_FILE>          The list steps output file name
# @flag --hide-uninteresting                   Hide any minor tasks such as pre/post hooks.
# @flag --print-steps                          Only prints the steps of the build in the order they will be invoked but without invoking them
# @flag --list-all-steps                       Lists all known steps
# @option --list-category-steps <CATEGORY>     List steps for a given category
# @flag --diff-steps                           Runs diff between custom flow and prebuilt flow (requires git)
# @arg task[`_choice_make_task`]
# @arg args*

_choice_make_task() {
    cargo make  --loglevel error --list-all-steps | \
    sed -n 's/No Description.//;s/^\(\S\+\) - \(.*\)/\1\t\2/p' 
}

command eval "$(argc --argc-eval "$0" "$@")"