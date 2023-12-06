#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose*                   Verbose mode (-v, -vv, -vvv)
# @option --color[auto|never|always]    Colorize the output; auto enables color output when connected to a tty [default: auto]
# @option -c --config                   If provided, Pueue only uses this config file.
# @option -p --profile                  The name of the profile that should be loaded from your config file
# @flag -h --help                       Print help
# @flag -V --version                    Print version

# {{ pueue add
# @cmd Enqueue a task for execution.
# @option -w --working-directory <working-directory>  Specify current working directory
# @flag -e --escape                           Escape any special shell characters (" ", "&", "!", etc.).
# @flag -i --immediate                        Immediately start the task
# @flag -s --stashed                          Create the task in Stashed state.
# @option -d --delay <delay>                  Prevents the task from being enqueued until <delay> elapses.
# @option -g --group[`_choice_group`]         Assign the task to a group.
# @option -a --after* <after>                 Start the task once all specified tasks have successfully finished.
# @option -o --priority*                      Start this task with a higher priority.
# @option -l --label                          Add some information for yourself.
# @flag -p --print-task-id                    Only return the task id instead of a text.
# @flag -h --help                             Print help
# @arg command~[`_module_os_command_args`]    The command to be added
add() {
    :;
}
# }} pueue add

# {{ pueue remove
# @cmd Remove tasks from the list.
# @flag -h --help                      Print help
# @arg task_ids+[`_choice_task_id`]    The task ids to be removed
remove() {
    :;
}
# }} pueue remove

# {{ pueue switch
# @cmd Switches the queue position of two commands.
# @flag -h --help                       Print help
# @arg task_id_1![`_choice_task_id`]    The first task id
# @arg task_id_2![`_choice_task_id`]    The second task id
switch() {
    :;
}
# }} pueue switch

# {{ pueue stash
# @cmd Stashed tasks won't be automatically started.
# @flag -h --help                      Print help
# @arg task_ids+[`_choice_task_id`]    Stash these specific tasks
stash() {
    :;
}
# }} pueue stash

# {{ pueue enqueue
# @cmd Enqueue stashed tasks.
# @option -d --delay <delay>           Delay enqueuing these tasks until <delay> elapses.
# @flag -h --help                      Print help
# @arg task_ids*[`_choice_task_id`]    Enqueue these specific tasks
enqueue() {
    :;
}
# }} pueue enqueue

# {{ pueue start
# @cmd Resume operation of specific tasks or groups of tasks.
# @option -g --group[`_choice_group`]    Resume a specific group and all paused tasks in it.
# @flag -a --all                         Resume all groups! All groups will be set to running and paused tasks will be resumed
# @flag -c --children                    Deprecated: this switch no longer has any effect
# @flag -h --help                        Print help
# @arg task_ids*[`_choice_task_id`]      Start these specific tasks.
start() {
    :;
}
# }} pueue start

# {{ pueue restart
# @cmd Restart failed or successful task(s).
# @flag -a --all-failed                Restart all failed tasks across all groups.
# @option -g --failed-in-group[`_choice_group`] <FAILED_IN_GROUP>  Like `--all-failed`, but only restart tasks failed tasks of a specific group.
# @flag -k --start-immediately         Immediately start the tasks, no matter how many open slots there are.
# @flag -s --stashed                   Set the restarted task to a "Stashed" state.
# @flag -i --in-place                  Restart the task by reusing the already existing tasks.
# @flag --not-in-place                 Restart the task by creating a new identical tasks.
# @flag -e --edit                      Edit the tasks' commands before restarting
# @flag -p --edit-path                 Edit the tasks' paths before restarting
# @flag -l --edit-label                Edit the tasks' labels before restarting
# @flag -h --help                      Print help
# @arg task_ids*[`_choice_task_id`]    Restart these specific tasks
restart() {
    :;
}
# }} pueue restart

# {{ pueue pause
# @cmd Either pause running tasks or specific groups of tasks.
# @option -g --group[`_choice_group`]    Pause a specific group
# @flag -a --all                         Pause all groups!
# @flag -w --wait                        Only pause the specified group and let already running tasks finish by themselves
# @flag -c --children                    Deprecated: this switch no longer has any effect
# @flag -h --help                        Print help
# @arg task_ids*[`_choice_task_id`]      Pause these specific tasks.
pause() {
    :;
}
# }} pueue pause

# {{ pueue kill
# @cmd Kill specific running tasks or whole task groups.. Kills all tasks of the default group when no ids or a specific group are provided.
# @option -g --group[`_choice_group`]    Kill all running tasks in a group.
# @flag -a --all                         Kill all running tasks across ALL groups.
# @flag -c --children                    Deprecated: this switch no longer has any effect
# @option -s --signal                    Send a UNIX signal instead of simply killing the process.
# @flag -h --help                        Print help
# @arg task_ids*[`_choice_task_id`]      Kill these specific tasks
kill() {
    :;
}
# }} pueue kill

# {{ pueue send
# @cmd Send something to a task.
# @flag -h --help                     Print help
# @arg task_id![`_choice_task_id`]    The id of the task
# @arg input!                         The input that should be sent to the process
send() {
    :;
}
# }} pueue send

# {{ pueue edit
# @cmd Edit the command, path or label of a stashed or queued task.
# @flag -c --command                  Edit the task's command
# @flag -p --path                     Edit the task's path
# @flag -l --label                    Edit the task's label
# @flag -h --help                     Print help
# @arg task_id![`_choice_task_id`]    The task's id
edit() {
    :;
}
# }} pueue edit

# {{ pueue group
# @cmd Use this to add or remove groups.
# @flag -j --json    Print the list of groups as json
# @flag -h --help    Print help
group() {
    :;
}

# {{{ pueue group add
# @cmd Add a group by name
# @option -p --parallel    Set the amount of parallel tasks this group can have
# @flag -h --help          Print help
# @arg name!
group::add() {
    :;
}
# }}} pueue group add

# {{{ pueue group remove
# @cmd Remove a group by name.
# @flag -h --help    Print help
# @arg name!
group::remove() {
    :;
}
# }}} pueue group remove
# }} pueue group

# {{ pueue status
# @cmd Display the current status of all tasks
# @flag -j --json                        Print the current state as json to stdout.
# @option -g --group[`_choice_group`]    Only show tasks of a specific group
# @flag -h --help                        Print help (see a summary with '-h')
# @arg query*                            Users can specify a custom query to filter for specific values, order by a column or limit the amount of tasks listed.
status() {
    :;
}
# }} pueue status

# {{ pueue format-status
# @cmd Accept a list or map of JSON pueue tasks via stdin and display it just like "pueue status".
# @option -g --group[`_choice_group`]    Only show tasks of a specific group
# @flag -h --help                        Print help
format-status() {
    :;
}
# }} pueue format-status

# {{ pueue log
# @cmd Display the log output of finished tasks.
# @flag -j --json                      Print the resulting tasks and output as json.
# @option -l --lines                   Only print the last X lines of each task's output.
# @flag -f --full                      Show the whole output
# @flag -h --help                      Print help
# @arg task_ids*[`_choice_task_id`]    View the task output of these specific tasks
log() {
    :;
}
# }} pueue log

# {{ pueue follow
# @cmd Follow the output of a currently running task.
# @option -l --lines                 Only print the last X lines of the output before following
# @flag -h --help                    Print help
# @arg task_id[`_choice_task_id`]    The id of the task you want to watch.
follow() {
    :;
}
# }} pueue follow

# {{ pueue wait
# @cmd Wait until tasks are finished.
# @option -g --group[`_choice_group`]    Wait for all tasks in a specific group
# @flag -a --all                         Wait for all tasks across all groups and the default group
# @flag -q --quiet                       Don't show any log output while waiting
# @option -s --status                    Wait for tasks to reach a specific task status
# @flag -h --help                        Print help
# @arg task_ids*[`_choice_task_id`]      This allows you to wait for specific tasks to finish
wait() {
    :;
}
# }} pueue wait

# {{ pueue clean
# @cmd Remove all finished tasks from the list
# @flag -s --successful-only             Only clean tasks that finished successfully
# @option -g --group[`_choice_group`]    Only clean tasks of a specific group
# @flag -h --help                        Print help
clean() {
    :;
}
# }} pueue clean

# {{ pueue reset
# @cmd Kill all tasks, clean up afterwards and reset EVERYTHING!
# @flag -c --children    Deprecated: this switch no longer has any effect
# @flag -f --force       Don't ask for any confirmation
# @flag -h --help        Print help
reset() {
    :;
}
# }} pueue reset

# {{ pueue shutdown
# @cmd Remotely shut down the daemon.
# @flag -h --help    Print help
shutdown() {
    :;
}
# }} pueue shutdown

# {{ pueue parallel
# @cmd Set the amount of allowed parallel tasks By default, adjusts the amount of the default group.
# @option -g --group[`_choice_group`] <group>    Set the amount for a specific group
# @flag -h --help                                Print help
# @arg parallel_tasks*                           The amount of allowed parallel tasks
parallel() {
    :;
}
# }} pueue parallel

# {{ pueue completions
# @cmd Generates shell completion files.
# @flag -h --help                                  Print help
# @arg shell![bash|elvish|fish|power-shell|zsh]    The target shell
# @arg output_directory!                           The output directory to which the file should be written
completions() {
    :;
}
# }} pueue completions

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_group() {
    pueue group -j | yq 'keys | .[]'
}

_choice_task_id() {
    pueue status -j  | yq '.tasks[] | .id + "	" + .command'
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"