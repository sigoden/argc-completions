#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version     Show the version and exit.
# @flag --color       (Don't) color output.
# @flag --no-color    (Don't) color output.
# @flag --help        Show this message and exit.

# {{ watson add
# @cmd Add time to a project with tag(s) that was not tracked live.
# @option -f --from <DATETIME>      Date and time of start of tracked activity [required]
# @option -t --to <DATETIME>        Date and time of end of tracked activity [required]
# @flag -c --confirm-new-project    Confirm addition of new project.
# @flag -b --confirm-new-tag        Confirm creation of new tag.
# @flag --help                      Show this message and exit.
# @arg args*
add() {
    :;
}
# }} watson add

# {{ watson aggregate
# @cmd Display a report of the time spent on each project...
# @flag -c                                  (Don't) include currently running frame in report.
# @flag -C                                  (Don't) include currently running frame in report.
# @flag --current                           (Don't) include currently running frame in report.
# @flag --no-current                        (Don't) include currently running frame in report.
# @option -f --from <DATETIME>              The date from when the report should start.
# @option -t --to <DATETIME>                The date at which the report should stop (inclusive).
# @option -p --project[`_choice_project`] <TEXT>  Reports activity only for the given project.
# @option -T --tag[`_choice_tag`] <TEXT>    Reports activity only for frames containing the given tag.
# @flag -j --json                           Format output in JSON instead of plain text
# @flag -s --csv                            Format output in CSV instead of plain text
# @flag -g                                  (Don't) view output through a pager.
# @flag -G                                  (Don't) view output through a pager.
# @flag --pager                             (Don't) view output through a pager.
# @flag --no-pager                          (Don't) view output through a pager.
# @flag --help                              Show this message and exit.
aggregate() {
    :;
}
# }} watson aggregate

# {{ watson cancel
# @cmd Cancel the last call to the start command.
# @flag --help    Show this message and exit.
cancel() {
    :;
}
# }} watson cancel

# {{ watson config
# @cmd Get and set configuration options.
# @flag -e --edit    Edit the configuration file with an editor.
# @flag --help       Show this message and exit.
# @arg value
config() {
    :;
}
# }} watson config

# {{ watson edit
# @cmd Edit a frame.
# @flag -c --confirm-new-project    Confirm addition of new project.
# @flag -b --confirm-new-tag        Confirm creation of new tag.
# @flag --help                      Show this message and exit.
# @arg id[`_choice_frame`]
edit() {
    :;
}
# }} watson edit

# {{ watson frames
# @cmd Display the list of all frame IDs.
# @flag --help    Show this message and exit.
frames() {
    :;
}
# }} watson frames

# {{ watson log
# @cmd Display each recorded session during the given timespan.
# @flag -c                                      (Don't) include currently running frame in output.
# @flag -C                                      (Don't) include currently running frame in output.
# @flag --current                               (Don't) include currently running frame in output.
# @flag --no-current                            (Don't) include currently running frame in output.
# @flag -r                                      (Don't) reverse the order of the days in output.
# @flag -R                                      (Don't) reverse the order of the days in output.
# @flag --reverse                               (Don't) reverse the order of the days in output.
# @flag --no-reverse                            (Don't) reverse the order of the days in output.
# @option -f --from <DATETIME>                  The date from when the log should start.
# @option -t --to <DATETIME>                    The date at which the log should stop (inclusive).
# @flag -y --year                               Reports activity for the current year.
# @flag -m --month                              Reports activity for the current month.
# @flag -l --luna                               Reports activity for the current moon cycle.
# @flag -w --week                               Reports activity for the current week.
# @flag -d --day                                Reports activity for the current day.
# @flag -a --all                                Reports all activities.
# @option -p --project[`_choice_project`] <TEXT>  Logs activity only for the given project.
# @option -T --tag[`_choice_tag`] <TEXT>        Logs activity only for frames containing the given tag.
# @option --ignore-project[`_choice_project`] <TEXT>  Logs activity for all projects but the given ones.
# @option --ignore-tag[`_choice_tag`] <TEXT>    Logs activity for all tags but the given ones.
# @flag -j --json                               Format output in JSON instead of plain text
# @flag -s --csv                                Format output in CSV instead of plain text
# @flag -g                                      (Don't) view output through a pager.
# @flag -G                                      (Don't) view output through a pager.
# @flag --pager                                 (Don't) view output through a pager.
# @flag --no-pager                              (Don't) view output through a pager.
# @flag --help                                  Show this message and exit.
log() {
    :;
}
# }} watson log

# {{ watson merge
# @cmd Perform a merge of the existing frames with a conflicting...
# @flag -f --force    If specified, then the merge will automatically be performed.
# @flag --help        Show this message and exit.
# @arg frames_with_conflict
merge() {
    :;
}
# }} watson merge

# {{ watson projects
# @cmd Display the list of all the existing projects.
# @flag --help    Show this message and exit.
projects() {
    :;
}
# }} watson projects

# {{ watson remove
# @cmd Remove a frame.
# @flag -f --force    Don't ask for confirmation.
# @flag --help        Show this message and exit.
# @arg id[`_choice_frame`]
remove() {
    :;
}
# }} watson remove

# {{ watson rename
# @cmd Rename a project or tag.
# @flag --help    Show this message and exit.
# @arg type[project|tag]
# @arg old_name[`_choice_old_name`]
# @arg new_name
rename() {
    :;
}
# }} watson rename

# {{ watson report
# @cmd Display a report of the time spent on each project.
# @flag -c                                      (Don't) include currently running frame in report.
# @flag -C                                      (Don't) include currently running frame in report.
# @flag --current                               (Don't) include currently running frame in report.
# @flag --no-current                            (Don't) include currently running frame in report.
# @option -f --from <DATETIME>                  The date from when the report should start.
# @option -t --to <DATETIME>                    The date at which the report should stop (inclusive).
# @flag -y --year                               Reports activity for the current year.
# @flag -m --month                              Reports activity for the current month.
# @flag -l --luna                               Reports activity for the current moon cycle.
# @flag -w --week                               Reports activity for the current week.
# @flag -d --day                                Reports activity for the current day.
# @flag -a --all                                Reports all activities.
# @option -p --project[`_choice_project`] <TEXT>  Reports activity only for the given project.
# @option -T --tag[`_choice_tag`] <TEXT>        Reports activity only for frames containing the given tag.
# @option --ignore-project[`_choice_project`] <TEXT>  Reports activity for all projects but the given ones.
# @option --ignore-tag[`_choice_tag`] <TEXT>    Reports activity for all tags but the given ones.
# @flag -j --json                               Format output in JSON instead of plain text
# @flag -s --csv                                Format output in CSV instead of plain text
# @flag -g                                      (Don't) view output through a pager.
# @flag -G                                      (Don't) view output through a pager.
# @flag --pager                                 (Don't) view output through a pager.
# @flag --no-pager                              (Don't) view output through a pager.
# @flag --help                                  Show this message and exit.
report() {
    :;
}
# }} watson report

# {{ watson restart
# @cmd Restart monitoring time for a previously stopped project.
# @option --at <DATETIME>    Start frame at this time.
# @flag -g                   (Don't) leave gap between end time of previous project and start time of the current.
# @flag -G                   (Don't) leave gap between end time of previous project and start time of the current.
# @flag --gap                (Don't) leave gap between end time of previous project and start time of the current.
# @flag --no-gap             (Don't) leave gap between end time of previous project and start time of the current.
# @flag -s                   (Don't) Stop an already running project.
# @flag -S                   (Don't) Stop an already running project.
# @flag --stop               (Don't) Stop an already running project.
# @flag --no-stop            (Don't) Stop an already running project.
# @flag --help               Show this message and exit.
# @arg id[`_choice_frame`]
restart() {
    :;
}
# }} watson restart

# {{ watson start
# @cmd Start monitoring time for the given project.
# @option --at <DATETIME>           Start frame at this time.
# @flag -g                          (Don't) leave gap between end time of previous project and start time of the current.
# @flag -G                          (Don't) leave gap between end time of previous project and start time of the current.
# @flag --gap                       (Don't) leave gap between end time of previous project and start time of the current.
# @flag --no-gap                    (Don't) leave gap between end time of previous project and start time of the current.
# @flag -c --confirm-new-project    Confirm addition of new project.
# @flag -b --confirm-new-tag        Confirm creation of new tag.
# @flag --help                      Show this message and exit.
# @arg args*
start() {
    :;
}
# }} watson start

# {{ watson status
# @cmd Display when the current project was started and the time...
# @option -p --project[`_choice_project`]    only output project
# @flag -t --tags                            only show tags
# @flag -e --elapsed                         only show time elapsed
# @flag --help                               Show this message and exit.
status() {
    :;
}
# }} watson status

# {{ watson stop
# @cmd Stop monitoring time for the current project.
# @option --at <DATETIME>    Stop frame at this time.
# @flag --help               Show this message and exit.
stop() {
    :;
}
# }} watson stop

# {{ watson sync
# @cmd Get the frames from the server and push the new ones.
# @flag --help    Show this message and exit.
sync() {
    :;
}
# }} watson sync

# {{ watson tags
# @cmd Display the list of all the tags.
# @flag --help    Show this message and exit.
tags() {
    :;
}
# }} watson tags

_choice_project() {
    watson projects
}

_choice_tag() {
    watson tags
}

_choice_frame() {
    watson log --json --reverse | \
    yq '.[] | (.id | sub("^(.{6}).*", "${1}")) + "	" + .project + " - " + .start'
}

_choice_old_name() {
    if [[ "$argc_type" == "tag" ]]; then
        _choice_tag
    else
        _choice_project
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"