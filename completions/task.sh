#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --color                         Colored output.
# @option -C --concurrency <int>           Limit number tasks to run concurrently.
# @option -d --dir <dir>                   Sets directory of execution.
# @flag -n --dry                           Compiles and prints tasks in the order that they would be run, without executing them.
# @flag -x --exit-code                     Pass-through the exit code of the task command.
# @flag --experiments                      Lists all the available experiments and whether or not they are enabled.
# @flag -f --force                         Forces execution even when the task is up-to-date.
# @flag -g --global                        Runs global Taskfile, from $HOME/{T,t}askfile.{yml,yaml}.
# @flag -h --help                          Shows Task usage.
# @flag -i --init                          Creates a new Taskfile.yml in the current folder.
# @flag --insecure                         Forces Task to download Taskfiles over insecure connections.
# @option -I --interval <duration>         Interval to watch for changes.
# @flag -j --json                          Formats task list as JSON.
# @flag -l --list                          Lists tasks with description of current Taskfile.
# @flag -a --list-all                      Lists tasks with or without a description.
# @flag --no-status                        Ignore status when listing tasks as JSON
# @option -o --output[interleaved|group|prefixed] <string>  Sets output style:.
# @option --output-group-begin <string>    Message template to print before a task's grouped output.
# @option --output-group-end <string>      Message template to print after a task's grouped output.
# @flag --output-group-error-only          Swallow output from successful tasks.
# @flag -p --parallel                      Executes tasks provided on command line in parallel.
# @flag -s --silent                        Disables echoing.
# @option --sort[default|alphanumeric|none] <string>  Changes the order of the tasks when listed..
# @flag --status                           Exits with non-zero exit code if any of the given tasks is not up-to-date.
# @flag --summary                          Show summary about a task.
# @option -t --taskfile[`_choice_taskfile`] <string>  Choose which Taskfile to run.
# @flag -v --verbose                       Enables verbose mode.
# @flag --version                          Show Task version.
# @flag -w --watch                         Enables watch of the given task.
# @flag -y --yes                           Assume "yes" as answer to all prompts.
# @arg tasks*[`_choice_task`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_taskfile() {
    _argc_util_comp_path exts=.yml,.yaml
}

_choice_task() {
    task $(_argc_util_param_select_options --dir --taskfile) --list-all | tail -n +2 | sed 's/\* \(\S\+\):\(\s\+\(\S\+.*\)\)\?/\1\t\3/' 
}

command eval "$(argc --argc-eval "$0" "$@")"