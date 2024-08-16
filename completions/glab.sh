#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help          Show help for this command.
# @flag -v --version    show glab version information
# @arg cmd[`_choice_alias`]

# {{ glab alias
# @cmd Create, list, and delete aliases.
# @flag --help    Show help for this command.
alias() {
    :;
}

# {{{ glab alias delete
# @cmd Delete an alias.
# @flag --help    Show help for this command.
# @arg alias-name![`_choice_alias`] <alias name>
alias::delete() {
    :;
}
# }}} glab alias delete

# {{{ glab alias list
# @cmd List the available aliases.
# @flag --help    Show help for this command.
alias::list() {
    :;
}
# }}} glab alias list

# {{{ glab alias set
# @cmd Set an alias for a longer command.
# @flag -s --shell    Declare an alias to be passed through a shell interpreter.
# @flag --help        Show help for this command.
# @arg alias-name![`_choice_alias`] <alias name>
# @arg command!
alias::set() {
    :;
}
# }}} glab alias set
# }} glab alias

# {{ glab api
# @cmd Make an authenticated request to the GitLab API.
# @option -F --field* <string>        Add a parameter of inferred type.
# @option -H --header* <string>       Add an additional HTTP request header.
# @option --hostname[`_choice_hostname`] <string>  The GitLab hostname for the request.
# @flag -i --include                  Include HTTP response headers in the output.
# @option --input <file>              The file to use as the body for the HTTP request.
# @option -X --method <string>        The HTTP method for the request.
# @flag --paginate                    Make additional HTTP requests to fetch all pages of results.
# @option -f --raw-field* <string>    Add a string parameter.
# @flag --silent                      Do not print the response body.
# @flag --help                        Show help for this command.
# @arg endpoint!
api() {
    :;
}
# }} glab api

# {{ glab auth
# @cmd Manage glab's authentication state.
# @flag --help    Show help for this command.
auth() {
    :;
}

# {{{ glab auth login
# @cmd Authenticate with a GitLab instance.
# @option -h --hostname[`_choice_hostname`] <string>  The hostname of the GitLab instance to authenticate with.
# @flag --stdin                  Read token from standard input.
# @option -t --token <string>    Your GitLab access token.
# @flag --use-keyring            Store token in your operating system's keyring.
# @flag --help                   Show help for this command.
auth::login() {
    :;
}
# }}} glab auth login

# {{{ glab auth status
# @cmd View authentication status.
# @option -h --hostname[`_choice_hostname`] <string>  Check a specific instance's authentication status.
# @flag -t --show-token    Display the authentication token.
# @flag --help             Show help for this command.
auth::status() {
    :;
}
# }}} glab auth status
# }} glab auth

# {{ glab changelog
# @cmd Interact with the changelog API.
# @flag --help    Show help for this command.
changelog() {
    :;
}

# {{{ glab changelog generate
# @cmd Generate a changelog for the repository or project.
# @option --config-file <file>                 Path of the changelog configuration file in the project's Git repository.
# @option --date <2016-03-11T03:45:40Z>        Date and time of the release.
# @option --from[`_choice_commit`] <string>    Start of the range of commits (as a SHA) to use when generating the changelog.
# @option --to[`_choice_commit`] <string>      End of the range of commits (as a SHA) to use when generating the changelog.
# @option --trailer <string>                   The Git trailer to use for including commits.
# @option -v --version <string>                Version to generate the changelog for.
# @flag --help                                 Show help for this command.
changelog::generate() {
    :;
}
# }}} glab changelog generate
# }} glab changelog

# {{ glab check-update
# @cmd Check for latest glab releases.
# @flag --help    Show help for this command.
check-update() {
    :;
}
# }} glab check-update

# {{ glab ci
# @cmd Work with GitLab CI/CD pipelines and jobs.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
ci() {
    :;
}

# {{{ glab ci artifact
# @cmd Download all artifacts from the last pipeline.
# @option -p --path <file>    Path to download the artifact files.
# @flag --help                Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg refname![`_choice_ref`]
# @arg jobname![`_choice_job_name`]
ci::artifact() {
    :;
}
# }}} glab ci artifact

# {{{ glab ci config
# @cmd Work with GitLab CI/CD configuration.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::config() {
    :;
}

# {{{{ glab ci config compile
# @cmd View the fully expanded CI/CD configuration.
# @flag --help    Show help for this command.
ci::config::compile() {
    :;
}
# }}}} glab ci config compile
# }}} glab ci config

# {{{ glab ci delete
# @cmd Delete CI/CD pipelines.
# @flag --dry-run             Simulate process, but do not delete anything.
# @option --older-than[h|m|s|ms|us|ns] <duration>  Filter pipelines older than the given duration.
# @option --page <int>        Page number.
# @flag --paginate            Make additional HTTP requests to fetch all pages of projects before cloning.
# @option --per-page <int>    Number of items to list per page.
# @option --source[api|chat|external|external_pull_request_event|merge_request_event|ondemand_dast_scan|ondemand_dast_validation|parent_pipeline|pipeline|push|schedule|security_orchestration_policy|trigger|web|webide] <string>  Filter pipelines by source: api, chat, external, external_pull_request_event, merge_request_event, ondemand_dast_scan, ondemand_dast_validation, parent_pipeline, pipeline, push, schedule, security_orchestration_policy, trigger, web, webide.
# @option -s --status[running|pending|success|failed|canceled|skipped|created|manual] <string>  Delete pipelines by status: running, pending, success, failed, canceled, skipped, created, manual.
# @flag --help                Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id![`_choice_pipeline`]
ci::delete() {
    :;
}
# }}} glab ci delete

# {{{ glab ci get
# @cmd Get JSON of a running CI/CD pipeline on the current or other specified branch.
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch.
# @option -F --output[text|json] <string>    Format output.
# @option -p --pipeline-id <int>             Provide pipeline ID.
# @flag -d --with-job-details                Show extended job information.
# @flag --with-variables                     Show variables in pipeline.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::get() {
    :;
}
# }}} glab ci get

# {{{ glab ci lint
# @cmd Checks if your `.gitlab-ci.yml` file is valid.
# @flag --dry-run           Run pipeline creation simulation.
# @flag --include-jobs      Response includes the list of jobs that would exist in a static check or pipeline simulation.
# @option --ref <string>    When 'dry-run' is true, sets the branch or tag context for validating the CI/CD YAML configuration.
# @flag --help              Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::lint() {
    :;
}
# }}} glab ci lint

# {{{ glab ci list
# @cmd Get the list of CI/CD pipelines.
# @option -o --orderBy[id|status|ref|updated_at|user_id] <string>  Order pipelines by this field.
# @option -F --output[text|json] <string>    Format output.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @option --sort[asc|desc] <string>          Sort pipelines.
# @option -s --status <string>               Get pipeline with this status.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::list() {
    :;
}
# }}} glab ci list

# {{{ glab ci retry
# @cmd Retry a CI/CD job.
# @option -b --branch[`_choice_branch`] <string>  The branch to search for the job.
# @option -p --pipeline-id <int>    The pipeline ID to search for the job.
# @flag --help                      Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg job-id![`_choice_job_id`]
ci::retry() {
    :;
}
# }}} glab ci retry

# {{{ glab ci run
# @cmd Create or run a new CI/CD pipeline.
# @option -b --branch[`_choice_branch`] <string>  Create pipeline on branch/ref <string>.
# @option --variables* <string>         Pass variables to pipeline in format <key>:<value>.
# @option --variables-env* <string>     Pass variables to pipeline in format <key>:<value>.
# @option --variables-file* <file>      Pass file contents as a file variable to pipeline in format <key>:<filename>.
# @option -f --variables-from <file>    JSON file containing variables for pipeline execution.
# @flag --help                          Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::run() {
    :;
}
# }}} glab ci run

# {{{ glab ci run-trig
# @cmd Run a CI/CD pipeline trigger.
# @option -b --branch[`_choice_branch`] <string>  Create pipeline on branch or reference <string>.
# @option -t --token <CI_JOB_TOKEN>    Pipeline trigger token.
# @option --variables* <string>        Pass variables to pipeline in the format <key>:<value>.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::run-trig() {
    :;
}
# }}} glab ci run-trig

# {{{ glab ci status
# @cmd View a running CI/CD pipeline on current or other branch specified.
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch.
# @flag -c --compact    Show status in compact format.
# @flag -l --live       Show status in real time until the pipeline ends.
# @flag --help          Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ci::status() {
    :;
}
# }}} glab ci status

# {{{ glab ci trace
# @cmd Trace a CI/CD job log in real time.
# @option -b --branch[`_choice_branch`] <string>  The branch to search for the job.
# @option -p --pipeline-id <int>    The pipeline ID to search for the job.
# @flag --help                      Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg job-id[`_choice_job_id`]
ci::trace() {
    :;
}
# }}} glab ci trace

# {{{ glab ci trigger
# @cmd Trigger a manual CI/CD job.
# @option -b --branch[`_choice_branch`] <string>  The branch to search for the job.
# @option -p --pipeline-id <int>    The pipeline ID to search for the job.
# @flag --help                      Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg job-id!
ci::trigger() {
    :;
}
# }}} glab ci trigger

# {{{ glab ci view
# @cmd View, run, trace, log, and cancel CI/CD job's current pipeline.
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch or tag.
# @flag -w --web    Open pipeline in a browser.
# @flag --help      Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg branch-tag[`_choice_ref`] <branch/tag>
ci::view() {
    :;
}
# }}} glab ci view
# }} glab ci

# {{ glab cluster
# @cmd Manage GitLab Agents for Kubernetes and their clusters.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
cluster() {
    :;
}

# {{{ glab cluster agent
# @cmd Manage GitLab Agents for Kubernetes.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
cluster::agent() {
    :;
}

# {{{{ glab cluster agent check_manifest_usage
# @cmd Check agent configuration files for built-in GitOps manifests usage.
# @option -a --agent-page <int>        Page number for projects.
# @option -A --agent-per-page <int>    Number of projects to list per page.
# @option -g --group <string>          Group ID to check.
# @option -p --page <int>              Page number for projects.
# @option -P --per-page <int>          Number of projects to list per page.
# @flag -r --recursive                 Recursively check subgroups.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
cluster::agent::check_manifest_usage() {
    :;
}
# }}}} glab cluster agent check_manifest_usage

# {{{{ glab cluster agent get-token
# @cmd Create and return a k8s_proxy-scoped Personal Access Token to authenticate with a GitLab Agents for Kubernetes.
# @option -a --agent <int>    The numerical Agent ID to connect to.
# @flag --help                Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
cluster::agent::get-token() {
    :;
}
# }}}} glab cluster agent get-token

# {{{{ glab cluster agent list
# @cmd List GitLab Agents for Kubernetes in a project.
# @option -p --page <uint>        Page number.
# @option -P --per-page <uint>    Number of items to list per page.
# @flag --help                    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
cluster::agent::list() {
    :;
}
# }}}} glab cluster agent list

# {{{{ glab cluster agent update-kubeconfig
# @cmd Update selected kubeconfig.
# @option -a --agent <int>       The numeric agent ID to create the kubeconfig entry for.
# @option --kubeconfig <file>    Use a particular kubeconfig file.
# @flag -u --use-context         Use as default context.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
cluster::agent::update-kubeconfig() {
    :;
}
# }}}} glab cluster agent update-kubeconfig
# }}} glab cluster agent
# }} glab cluster

# {{ glab completion
# @cmd Generate shell completion scripts.
# @flag --no-desc    Do not include shell completion description.
# @option -s --shell[bash|zsh|fish|powershell] <string>  Shell type: bash, zsh, fish, powershell.
# @flag --help       Show help for this command.
completion() {
    :;
}
# }} glab completion

# {{ glab config
# @cmd Set and get glab settings.
# @flag -g --global    Use global config file.
# @flag --help         Show help for this command.
config() {
    :;
}

# {{{ glab config get
# @cmd Prints the value of a given configuration key.
# @flag -g --global    Read from global config file (~/.config/glab-cli/config.yml).
# @option -h --host[`_choice_hostname`] <string>  Get per-host setting.
# @flag --help         Show help for this command.
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} glab config get

# {{{ glab config set
# @cmd Updates configuration with the value of a given key.
# @flag -g --global    Write to global '~/.config/glab-cli/config.yml' file rather than the repository's '.git/glab-cli/config.yml' file.
# @option -h --host[`_choice_hostname`] <string>  Set per-host setting.
# @flag --help         Show help for this command.
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} glab config set
# }} glab config

# {{ glab duo
# @cmd Generate terminal commands from natural language.
# @flag --help    Show help for this command.
# @arg prompt
duo() {
    :;
}

# {{{ glab duo ask
# @cmd Generate Git commands from natural language.
# @flag --git     Ask a question about Git.
# @flag --help    Show help for this command.
# @arg prompt!
duo::ask() {
    :;
}
# }}} glab duo ask
# }} glab duo

# {{ glab incident
# @cmd Work with GitLab incidents.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
incident() {
    :;
}

# {{{ glab incident close
# @cmd Close an incident.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_incident_issue`]
incident::close() {
    :;
}
# }}} glab incident close

# {{{ glab incident list
# @cmd List project incidents.
# @flag -A --all                  Get all incidents.
# @option -a --assignee[`_choice_member`] <string>  Filter incident by assignee <username>.
# @option --author[`_choice_search_user`] <string>  Filter incident by author <username>.
# @flag -c --closed               Get only closed incidents.
# @flag -C --confidential         Filter by confidential incidents.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group or subgroup.
# @option --in <string>           search in: title, description.
# @option -l --label*,[`_choice_label`] <string>  Filter incident by label <name>.
# @option -m --milestone[`_choice_milestone`] <string>  Filter incident by milestone <id>.
# @option --not-assignee*,[`_choice_member`] <string>  Filter incident by not being assigneed to <username>.
# @option --not-author*,[`_choice_search_user`] <string>  Filter by not being by author(s) <username>.
# @option --not-label*,[`_choice_label`] <string>  Filter incident by lack of label <name>.
# @option -O --output <string>    Options: 'text' or 'json'.
# @option -F --output-format[details|ids|urls] <string>  Options: 'details', 'ids', 'urls'.
# @option -p --page <int>         Page number.
# @option -P --per-page <int>     Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @option --search <string>       Search <string> in the fields defined by '--in'.
# @flag --help                    Show help for this command.
incident::list() {
    :;
}
# }}} glab incident list

# {{{ glab incident note
# @cmd Comment on an incident in GitLab.
# @option -m --message <string>    Message text.
# @flag --help                     Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg incident-id!
incident::note() {
    :;
}
# }}} glab incident note

# {{{ glab incident reopen
# @cmd Reopen a resolved incident.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_closed_incident_issue`]
incident::reopen() {
    :;
}
# }}} glab incident reopen

# {{{ glab incident subscribe
# @cmd Subscribe to an incident.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_incident_issue`]
incident::subscribe() {
    :;
}
# }}} glab incident subscribe

# {{{ glab incident unsubscribe
# @cmd Unsubscribe from an incident.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_incident_issue`]
incident::unsubscribe() {
    :;
}
# }}} glab incident unsubscribe

# {{{ glab incident view
# @cmd Display the title, body, and other information about an incident.
# @flag -c --comments                        Show incident comments and activities.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @flag -s --system-logs                     Show system activities and logs.
# @flag -w --web                             Open incident in a browser.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_incident_issue`]
incident::view() {
    :;
}
# }}} glab incident view
# }} glab incident

# {{ glab issue
# @cmd Work with GitLab issues.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
issue() {
    :;
}

# {{{ glab issue board
# @cmd Work with GitLab Issue Boards in the given project.
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
# @flag --help    Show help for this command.
issue::board() {
    :;
}

# {{{{ glab issue board create
# @cmd Create a project issue board.
# @option -n --name <string>    The name of the new board
# @flag --help                  Show help for this command.
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
issue::board::create() {
    :;
}
# }}}} glab issue board create

# {{{{ glab issue board view
# @cmd View project issue board.
# @option -a --assignee[`_choice_member`] <string>  Filter board issues by assignee username.
# @option -l --labels* <string>    Filter board issues by labels, comma separated.
# @option -m --milestone[`_choice_milestone`] <string>  Filter board issues by milestone.
# @flag --help                     Show help for this command.
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
issue::board::view() {
    :;
}
# }}}} glab issue board view
# }}} glab issue board

# {{{ glab issue close
# @cmd Close an issue.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_issue`]
issue::close() {
    :;
}
# }}} glab issue close

# {{{ glab issue create
# @cmd Create an issue.
# @option -a --assignee[`_choice_member`] <usernames>  Assign issue to people by their usernames.
# @flag -c --confidential                Set an issue to be confidential.
# @option -d --description <string>      Issue description.
# @option --due-date <string>            A date in 'YYYY-MM-DD' format.
# @option --epic <int>                   ID of the epic to add the issue to.
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option --link-type <string>           Type for the issue link (default "relates_to")
# @option --linked-issues <ints>         The IIDs of issues that this issue links to.
# @option --linked-mr <int>              The IID of a merge request in which to resolve all issues.
# @option -m --milestone[`_choice_milestone`] <string>  The global ID or title of a milestone to assign.
# @flag --no-editor                      Don't open editor to enter a description.
# @flag --recover                        Save the options to a file if the issue fails to be created.
# @option -e --time-estimate <string>    Set time estimate for the issue.
# @option -s --time-spent <string>       Set time spent for the issue.
# @option -t --title <string>            Issue title.
# @flag --web                            Continue issue creation with web interface.
# @option -w --weight <int>              Issue weight.
# @flag -y --yes                         Don't prompt for confirmation to submit the issue.
# @flag --help                           Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
issue::create() {
    :;
}
# }}} glab issue create

# {{{ glab issue delete
# @cmd Delete an issue.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_issue`]
issue::delete() {
    :;
}
# }}} glab issue delete

# {{{ glab issue list
# @cmd List project issues.
# @flag -A --all                  Get all issues.
# @option -a --assignee[`_choice_member`] <string>  Filter issue by assignee <username>.
# @option --author[`_choice_search_user`] <string>  Filter issue by author <username>.
# @flag -c --closed               Get only closed issues.
# @flag -C --confidential         Filter by confidential issues.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group or subgroup.
# @option --in <string>           search in: title, description.
# @option -t --issue-type[issue|incident|test_case] <string>  Filter issue by its type.
# @option -l --label*,[`_choice_label`] <string>  Filter issue by label <name>.
# @option -m --milestone[`_choice_milestone`] <string>  Filter issue by milestone <id>.
# @option --not-assignee*,[`_choice_member`] <string>  Filter issue by not being assigneed to <username>.
# @option --not-author*,[`_choice_search_user`] <string>  Filter by not being by author(s) <username>.
# @option --not-label*,[`_choice_label`] <string>  Filter issue by lack of label <name>.
# @option -O --output <string>    Options: 'text' or 'json'.
# @option -F --output-format[details|ids|urls] <string>  Options: 'details', 'ids', 'urls'.
# @option -p --page <int>         Page number.
# @option -P --per-page <int>     Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @option --search <string>       Search <string> in the fields defined by '--in'.
# @flag --help                    Show help for this command.
issue::list() {
    :;
}
# }}} glab issue list

# {{{ glab issue note
# @cmd Comment on an issue in GitLab.
# @option -m --message <string>    Message text.
# @flag --help                     Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_issue`]
issue::note() {
    :;
}
# }}} glab issue note

# {{{ glab issue reopen
# @cmd Reopen a closed issue.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_closed_issue`]
issue::reopen() {
    :;
}
# }}} glab issue reopen

# {{{ glab issue subscribe
# @cmd Subscribe to an issue.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_issue`]
issue::subscribe() {
    :;
}
# }}} glab issue subscribe

# {{{ glab issue unsubscribe
# @cmd Unsubscribe from an issue.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_issue`]
issue::unsubscribe() {
    :;
}
# }}} glab issue unsubscribe

# {{{ glab issue update
# @cmd Update issue
# @option -a --assignee*[`_choice_member`] <string>  Assign users by username.
# @flag -c --confidential              Make issue confidential
# @option -d --description <string>    Issue description.
# @option -l --label*,[`_choice_label`] <string>  Add labels.
# @flag --lock-discussion              Lock discussion on issue.
# @option -m --milestone[`_choice_milestone`] <string>  Title of the milestone to assign Set to "" or 0 to unassign.
# @flag -p --public                    Make issue public.
# @option -t --title <string>          Title of issue.
# @flag --unassign                     Unassign all users.
# @option -u --unlabel*,[`_choice_issue_label`] <string>  Remove labels.
# @flag --unlock-discussion            Unlock discussion on issue.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_issue`]
issue::update() {
    :;
}
# }}} glab issue update

# {{{ glab issue view
# @cmd Display the title, body, and other information about an issue.
# @flag -c --comments                        Show issue comments and activities.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @flag -s --system-logs                     Show system activities and logs.
# @flag -w --web                             Open issue in a browser.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_issue`]
issue::view() {
    :;
}
# }}} glab issue view
# }} glab issue

# {{ glab job
# @cmd Work with GitLab CI/CD jobs.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
job() {
    :;
}

# {{{ glab job artifact
# @cmd Download all artifacts from the last pipeline.
# @option -p --path <file>    Path to download the artifact files.
# @flag --help                Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg refname!
# @arg jobname!
job::artifact() {
    :;
}
# }}} glab job artifact
# }} glab job

# {{ glab label
# @cmd Manage labels on remote.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
label() {
    :;
}

# {{{ glab label create
# @cmd Create labels for a repository or project.
# @option -c --color <string>          Color of the label, in plain or HEX code.
# @option -d --description <string>    Label description.
# @option -n --name <string>           Name of the label.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
label::create() {
    :;
}
# }}} glab label create

# {{{ glab label list
# @cmd List labels in the repository.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
label::list() {
    :;
}
# }}} glab label list
# }} glab label

# {{ glab mr
# @cmd Create, view, and manage merge requests.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
mr() {
    :;
}

# {{{ glab mr approve
# @cmd Approve merge requests.
# @option -s --sha[`_choice_mr_commit`] <string>  SHA, which must match the SHA of the HEAD commit of the merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::approve() {
    :;
}
# }}} glab mr approve

# {{{ glab mr approvers
# @cmd List eligible approvers for merge requests in any state.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::approvers() {
    :;
}
# }}} glab mr approvers

# {{{ glab mr checkout
# @cmd Check out an open merge request.
# @option -b --branch[`_choice_branch`] <string>  Check out merge request with name <branch>.
# @option -u --set-upstream-to <string>    Set tracking of checked-out branch to [REMOTE/]BRANCH.
# @flag --help                             Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::checkout() {
    :;
}
# }}} glab mr checkout

# {{{ glab mr close
# @cmd Close a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::close() {
    :;
}
# }}} glab mr close

# {{{ glab mr create
# @cmd Create a new merge request.
# @flag --allow-collaboration          Allow commits from other members.
# @option -a --assignee[`_choice_member`] <usernames>  Assign merge request to people by their usernames.
# @flag --copy-issue-labels            Copy labels from issue to the merge request.
# @flag --create-source-branch         Create a source branch if it does not exist.
# @option -d --description <string>    Supply a description for the merge request.
# @flag --draft                        Mark merge request as a draft.
# @option -f --fill <push>             Do not prompt for title or description, and just use commit info.
# @flag --fill-commit-body             Fill description with each commit body when multiple commits.
# @option -H --head[`_choice_search_repo`] <OWNER/REPO>  Select another head repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format, the project ID, or the full URL.
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option -m --milestone[`_choice_milestone`] <string>  The global ID or title of a milestone to assign.
# @flag --no-editor                    Don't open editor to enter a description.
# @flag --push                         Push committed changes after creating merge request.
# @flag --recover                      Save the options to a file if the merge request creation fails.
# @option -i --related-issue[`_choice_opened_issue`] <string>  Create a merge request for an issue.
# @flag --remove-source-branch         Remove source branch on merge.
# @option --reviewer*,[`_choice_member`] <usernames>  Request review from users by their usernames.
# @flag --signoff                      Append a DCO signoff to the merge request description.
# @option -s --source-branch[`_choice_branch`] <string>  Create a merge request from this branch.
# @flag --squash-before-merge          Squash commits into a single commit when merging.
# @option -b --target-branch[`_choice_branch`] <string>  The target or base branch into which you want your code merged into.
# @option -t --title <string>          Supply a title for the merge request.
# @flag -w --web                       Continue merge request creation in a browser.
# @flag --wip                          Mark merge request as a draft.
# @flag -y --yes                       Skip submission confirmation prompt.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::create() {
    :;
}
# }}} glab mr create

# {{{ glab mr delete
# @cmd Delete a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::delete() {
    :;
}
# }}} glab mr delete

# {{{ glab mr diff
# @cmd View changes in a merge request.
# @option --color[always|never|auto] <string>    Use color in diff output: always, never, auto.
# @flag --help                                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::diff() {
    :;
}
# }}} glab mr diff

# {{{ glab mr for
# @cmd Create a new merge request for an issue.
# @flag --allow-collaboration     Allow commits from other members.
# @option -a --assignee[`_choice_member`] <string>  Assign merge request to people by their IDs.
# @flag --draft                   Mark merge request as a draft.
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option -m --milestone[`_choice_milestone`] <int>  Add milestone by <id> for this merge request.
# @flag --remove-source-branch    Remove source branch on merge.
# @option -b --target-branch[`_choice_branch`] <string>  The target or base branch into which you want your code merged.
# @flag --wip                     Mark merge request as a work in progress.
# @flag --with-labels             Copy labels from issue to the merge request.
# @flag --help                    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
mr::for() {
    :;
}
# }}} glab mr for

# {{{ glab mr issues
# @cmd Get issues related to a particular merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::issues() {
    :;
}
# }}} glab mr issues

# {{{ glab mr list
# @cmd List merge requests.
# @flag -A --all                             Get all merge requests.
# @option -a --assignee*[`_choice_member`] <string>  Get only merge requests assigned to users.
# @option --author[`_choice_search_user`] <string>  Filter merge request by author <username>.
# @flag -c --closed                          Get only closed merge requests.
# @flag -d --draft                           Filter by draft merge requests.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group/subgroup.
# @option -l --label*,[`_choice_label`] <string>  Filter merge request by label <name>.
# @flag -M --merged                          Get only merged merge requests.
# @option -m --milestone[`_choice_milestone`] <string>  Filter merge request by milestone <id>.
# @option --not-label*,[`_choice_mr_label`] <string>  Filter merge requests by not having label <name>.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @option -r --reviewer*,[`_choice_member`] <string>  Get only merge requests with users as reviewer.
# @option --search <string>                  Filter by <string> in title and description.
# @option -s --source-branch[`_choice_branch`] <string>  Filter by source branch <name>.
# @option -t --target-branch[`_choice_branch`] <string>  Filter by target branch <name>.
# @flag --help                               Show help for this command.
mr::list() {
    :;
}
# }}} glab mr list

# {{{ glab mr merge
# @cmd Merge or accept a merge request.
# @flag --auto-merge                             Set auto-merge.
# @option -m --message <string>                  Custom merge commit message.
# @flag -r --rebase                              Rebase the commits onto the base branch.
# @flag -d --remove-source-branch                Remove source branch on merge.
# @option --sha[`_choice_mr_commit`] <string>    Merge commit SHA.
# @flag -s --squash                              Squash commits on merge.
# @option --squash-message <string>              Custom squash commit message.
# @flag -y --yes                                 Skip submission confirmation prompt.
# @flag --help                                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::merge() {
    :;
}
# }}} glab mr merge

# {{{ glab mr note
# @cmd Add a comment or note to a merge request.
# @option -m --message <string>    Comment or note message.
# @flag --unique                   Don't create a comment or note if it already exists.
# @flag --help                     Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id-branch <<id>|<branch>>
mr::note() {
    :;
}
# }}} glab mr note

# {{{ glab mr rebase
# @cmd Rebase the source branch of a merge request against its target branch.
# @flag --skip-ci    Rebase merge request while skipping CI/CD pipeline.
# @flag --help       Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id-branch <<id>|<branch>>
mr::rebase() {
    :;
}
# }}} glab mr rebase

# {{{ glab mr reopen
# @cmd Reopen a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_closed_mr_or_branch`]
mr::reopen() {
    :;
}
# }}} glab mr reopen

# {{{ glab mr revoke
# @cmd Revoke approval on a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::revoke() {
    :;
}
# }}} glab mr revoke

# {{{ glab mr subscribe
# @cmd Subscribe to a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::subscribe() {
    :;
}
# }}} glab mr subscribe

# {{{ glab mr todo
# @cmd Add a to-do item to merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::todo() {
    :;
}
# }}} glab mr todo

# {{{ glab mr unsubscribe
# @cmd Unsubscribe from a merge request.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::unsubscribe() {
    :;
}
# }}} glab mr unsubscribe

# {{{ glab mr update
# @cmd Update a merge request.
# @option -a --assignee*[`_choice_member`] <string>  Assign users via username.
# @option -d --description <string>    Merge request description.
# @flag --draft                        Mark merge request as a draft.
# @option -l --label*,[`_choice_label`] <string>  Add labels.
# @flag --lock-discussion              Lock discussion on merge request.
# @option -m --milestone[`_choice_milestone`] <string>  Title of the milestone to assign.
# @flag -r --ready                     Mark merge request as ready to be reviewed and merged.
# @flag --remove-source-branch         Toggles the removal of the source branch on merge.
# @option --reviewer*,[`_choice_member`] <string>  Request review from users by their usernames.
# @flag --squash-before-merge          Toggles the option to squash commits into a single commit when merging.
# @option --target-branch[`_choice_branch`] <string>  Set target branch.
# @option -t --title <string>          Title of merge request.
# @flag --unassign                     Unassign all users.
# @option -u --unlabel*,[`_choice_mr_label`] <string>  Remove labels.
# @flag --unlock-discussion            Unlock discussion on merge request.
# @flag --wip                          Mark merge request as a work in progress.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_opened_mr_or_branch`]
mr::update() {
    :;
}
# }}} glab mr update

# {{{ glab mr view
# @cmd Display the title, body, and other information about a merge request.
# @flag -c --comments                        Show merge request comments and activities.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @flag -s --system-logs                     Show system activities and logs.
# @flag -w --web                             Open merge request in a browser.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_all_mr_or_branch`]
mr::view() {
    :;
}
# }}} glab mr view
# }} glab mr

# {{ glab release
# @cmd Manage GitLab releases.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
release() {
    :;
}

# {{{ glab release create
# @cmd Create a new GitLab release, or update an existing one.
# @option -a --assets-links <'[{"name": "Asset1", "url":"https://<domain>/some/location/1", "link_type": "other", "direct_asset_path": "path/to/file"}]'.>  'JSON' string representation of assets links, like --assets-links='[{"name": "Asset1", "url":"https://<domain>/some/location/1", "link_type": "other", "direct_asset_path": "path/to/file"}]'.
# @option -m --milestone*[`_choice_milestone`] <string>  The title of each milestone the release is associated with.
# @option -n --name <string>           The release name or title.
# @option -N --notes <string>          The release notes or description.
# @option -F --notes-file <file>       Read release notes 'file'.
# @option -r --ref <string>            If the specified tag doesn't exist, the release is created from ref and tagged with the specified tag name.
# @option -D --released-at <string>    The 'date' when the release was ready.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg tag![`_choice_tag`]
# @arg files*
release::create() {
    :;
}
# }}} glab release create

# {{{ glab release delete
# @cmd Delete a GitLab release.
# @flag -t --with-tag    Delete the associated tag.
# @flag -y --yes         Skip the confirmation prompt.
# @flag --help           Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg tag![`_choice_tag`]
release::delete() {
    :;
}
# }}} glab release delete

# {{{ glab release download
# @cmd Download asset files from a GitLab release.
# @option -n --asset-name*[`_choice_asset_name`] <string>  Download only assets that match the name or a glob pattern.
# @option -D --dir <dir>    Directory to download the release assets to.
# @flag --help              Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg tag![`_choice_tag`]
release::download() {
    :;
}
# }}} glab release download

# {{{ glab release list
# @cmd List releases in a repository.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
release::list() {
    :;
}
# }}} glab release list

# {{{ glab release upload
# @cmd Upload release asset files or links to a GitLab release.
# @option -a --assets-links <JSON>    JSON string representation of assets links, like: `--assets-links='[{"name": "Asset1", "url":"https://<domain>/some/location/1", "link_type": "other", "direct_asset_path": "path/to/file"}]'.`
# @flag --help                        Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg tag![`_choice_tag`]
# @arg files*
release::upload() {
    :;
}
# }}} glab release upload

# {{{ glab release view
# @cmd View information about a GitLab release.
# @flag -w --web    Open the release in the browser.
# @flag --help      Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg tag![`_choice_tag`]
release::view() {
    :;
}
# }}} glab release view
# }} glab release

# {{ glab repo
# @cmd Work with GitLab repositories and projects.
# @flag --help    Show help for this command.
repo() {
    :;
}

# {{{ glab repo archive
# @cmd Get an archive of the repository.
# @option -f --format <string>                   Optional.
# @option -s --sha[`_choice_commit`] <string>    The commit SHA to download.
# @flag --help                                   Show help for this command.
repo::archive() {
    :;
}
# }}} glab repo archive

# {{{ glab repo clone
# @cmd Clone a GitLab repository or project.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Specify the group to clone repositories from.
# @flag -p --preserve-namespace     Clone the repository in a subdirectory based on namespace.
# @flag -a --archived               Limit by archived status.
# @flag -G --include-subgroups      Include projects in subgroups of this group.
# @flag -m --mine                   Limit by projects in the group owned by the current authenticated user.
# @option -v --visibility[public|internal|private] <string>  Limit by visibility: public, internal, private.
# @flag -I --with-issues-enabled    Limit by projects with the issues feature enabled.
# @flag -M --with-mr-enabled        Limit by projects with the merge request feature enabled.
# @flag -S --with-shared            Include projects shared to this group.
# @flag --paginate                  Make additional HTTP requests to fetch all pages of projects before cloning.
# @option --page <int>              Page number.
# @option --per-page <int>          Number of items to list per page.
# @flag --help                      Show help for this command.
# @arg repo![`_choice_search_repo`]
# @arg dir
repo::clone() {
    :;
}
# }}} glab repo clone

# {{{ glab repo contributors
# @cmd Get repository contributors list.
# @option -o --order[name|email|commits] <string>  Return contributors ordered by name, email, or commits (orders by commit date) fields.
# @option -p --page <int>                 Page number.
# @option -P --per-page <int>             Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @option -s --sort[asc|desc] <string>    Return contributors.
# @flag --help                            Show help for this command.
repo::contributors() {
    :;
}
# }}} glab repo contributors

# {{{ glab repo create
# @cmd Create a new GitLab project/repository.
# @option --defaultBranch <master>     Default branch of the project.
# @option -d --description <string>    Description of the new project.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Namespace or group for the new project.
# @flag --internal                     Make project internal: visible to any authenticated user.
# @option -n --name <string>           Name of the new project.
# @flag -p --private                   Make project private: visible only to project members.
# @flag -P --public                    Make project public: visible without any authentication.
# @option --readme <README.md>         Initialize project with README.md.
# @option --remoteName <origin>        Remote name for the Git repository you're in.
# @option -t --tag* <string>           The list of tags for the project.
# @flag --help                         Show help for this command.
# @arg path
repo::create() {
    :;
}
# }}} glab repo create

# {{{ glab repo delete
# @cmd Delete an existing repository on GitLab.
# @flag -y --yes    Skip the confirmation prompt and immediately delete the repository.
# @flag --help      Show help for this command.
# @arg repo[`_choice_search_repo`]
repo::delete() {
    :;
}
# }}} glab repo delete

# {{{ glab repo fork
# @cmd Fork a GitLab repository.
# @option -c --clone[true|false]    Clone the fork.
# @option -n --name <string>        The name assigned to the new project after forking.
# @option -p --path <path>          The path assigned to the new project after forking.
# @option --remote[true|false]      Add a remote for the fork.
# @flag --help                      Show help for this command.
# @arg repo[`_choice_search_repo`]
repo::fork() {
    :;
}
# }}} glab repo fork

# {{{ glab repo list
# @cmd Get list of repositories.
# @flag -a --all                             List all projects on the instance.
# @option -g --group <string>                Return repositories in only the given group and its subgroups.
# @flag --member                             List only projects of which you are a member.
# @flag -m --mine                            List only projects you own.
# @option -o --order <string>                Return repositories ordered by id, created_at, or other fields.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -p --page <int>                    Page number.
# @option -P --per-page <int>                Number of items to list per page.
# @option -s --sort[asc|desc] <string>       Return repositories sorted in asc or desc order.
# @flag --starred                            List only starred projects.
# @flag --help                               Show help for this command.
repo::list() {
    :;
}
# }}} glab repo list

# {{{ glab repo mirror
# @cmd Mirror a project or repository to the specified location, using pull or push methods.
# @flag --allow-divergence                Determines if divergent refs are skipped.
# @option --direction[pull|push] <dir>    Mirror direction.
# @flag --enabled                         Determines if the mirror is enabled.
# @flag --protected-branches-only         Determines if only protected branches are mirrored.
# @option --url <string>                  The target URL to which the repository is mirrored.
# @flag --help                            Show help for this command.
# @arg id-url-path <ID|URL|PATH>
repo::mirror() {
    :;
}
# }}} glab repo mirror

# {{{ glab repo search
# @cmd Search for GitLab repositories and projects by name.
# @option -p --page <int>         Page number.
# @option -P --per-page <int>     Number of items to list per page.
# @option -s --search <string>    A string contained in the project name.
# @flag --help                    Show help for this command.
repo::search() {
    :;
}
# }}} glab repo search

# {{{ glab repo transfer
# @cmd Transfer a repository to a new namespace.
# @option -t --target-namespace[`_choice_search_group_subgroup`] <string>  The namespace where your project should be transferred to.
# @flag -y --yes    Warning: Skip confirmation prompt and force transfer operation.
# @flag --help      Show help for this command.
# @arg repo[`_choice_search_repo`]
repo::transfer() {
    :;
}
# }}} glab repo transfer

# {{{ glab repo view
# @cmd View a project or repository.
# @option -b --branch[`_choice_repo_view_branch`] <string>  View a specific branch of the repository.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @flag -w --web                             Open a project in the browser.
# @flag --help                               Show help for this command.
# @arg repo[`_choice_search_repo`]
repo::view() {
    :;
}
# }}} glab repo view
# }} glab repo

# {{ glab schedule
# @cmd Work with GitLab CI/CD schedules.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
schedule() {
    :;
}

# {{{ glab schedule create
# @cmd Schedule a new pipeline.
# @flag --active                           Whether or not the schedule is active.
# @option --cron <string>                  Cron interval pattern.
# @option --cronTimeZone <string>          Cron timezone.
# @option --description <string>           Description of the schedule.
# @option --ref[`_choice_ref`] <string>    Target branch or tag.
# @option --variable* <string>             Pass variables to schedule in the format <key>:<value>.
# @flag --help                             Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
schedule::create() {
    :;
}
# }}} glab schedule create

# {{{ glab schedule delete
# @cmd Delete the schedule with the specified ID.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_schedule`]
schedule::delete() {
    :;
}
# }}} glab schedule delete

# {{{ glab schedule list
# @cmd Get the list of schedules.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
schedule::list() {
    :;
}
# }}} glab schedule list

# {{{ glab schedule run
# @cmd Run the specified scheduled pipeline.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_schedule`]
schedule::run() {
    :;
}
# }}} glab schedule run
# }} glab schedule

# {{ glab snippet
# @cmd Create, view and manage snippets.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
snippet() {
    :;
}

# {{{ glab snippet create
# @cmd Create a new snippet.
# @option -d --description <string>    Description of the snippet.
# @option -f --filename <file>         Filename of the snippet in GitLab.
# @flag -p --personal                  Create a personal snippet.
# @option -t --title <string>          Title of the snippet.
# @option -v --visibility[public|internal|private] <string>  Limit by visibility: 'public', 'internal', or 'private' (default "private")
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg path
snippet::create() {
    :;
}
# }}} glab snippet create
# }} glab snippet

# {{ glab ssh-key
# @cmd Manage SSH keys registered with your GitLab account.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
ssh-key() {
    :;
}

# {{{ glab ssh-key add
# @cmd Add an SSH key to your GitLab account.
# @option -e --expires-at <string>    The expiration date of the SSH key.
# @option -t --title <string>         New SSH key's title.
# @flag --help                        Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key-file
ssh-key::add() {
    :;
}
# }}} glab ssh-key add

# {{{ glab ssh-key delete
# @cmd Deletes a single SSH key specified by the ID.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key-id!
ssh-key::delete() {
    :;
}
# }}} glab ssh-key delete

# {{{ glab ssh-key get
# @cmd Returns a single SSH key specified by the ID.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg id[`_choice_ssh_key`]
ssh-key::get() {
    :;
}
# }}} glab ssh-key get

# {{{ glab ssh-key list
# @cmd Get a list of SSH keys for the currently authenticated user.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @flag --show-id                Shows IDs of SSH keys.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
ssh-key::list() {
    :;
}
# }}} glab ssh-key list
# }} glab ssh-key

# {{ glab stack
# @cmd Create, manage, and work with stacked diffs.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
stack() {
    :;
}

# {{{ glab stack amend
# @cmd Save more changes to a stacked diff.
# @option -d --description <string>    a description of the change
# @option -m --message <string>        alias for the description flag
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::amend() {
    :;
}
# }}} glab stack amend

# {{{ glab stack create
# @cmd Create a new stacked diff.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::create() {
    :;
}
# }}} glab stack create

# {{{ glab stack first
# @cmd Moves to the first diff in the stack.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::first() {
    :;
}
# }}} glab stack first

# {{{ glab stack last
# @cmd Moves to the last diff in the stack.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::last() {
    :;
}
# }}} glab stack last

# {{{ glab stack move
# @cmd Moves to any selected entry in the stack.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::move() {
    :;
}
# }}} glab stack move

# {{{ glab stack next
# @cmd Moves to the next diff in the stack.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::next() {
    :;
}
# }}} glab stack next

# {{{ glab stack prev
# @cmd Moves to the previous diff in the stack.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::prev() {
    :;
}
# }}} glab stack prev

# {{{ glab stack save
# @cmd Save your progress within a stacked diff.
# @option -d --description <string>    Description of the change.
# @option -m --message <string>        Alias for the description flag.
# @flag --help                         Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::save() {
    :;
}
# }}} glab stack save

# {{{ glab stack sync
# @cmd Sync and submit progress on a stacked diff.
# @flag --help    Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
stack::sync() {
    :;
}
# }}} glab stack sync
# }} glab stack

# {{ glab user
# @cmd Interact with a GitLab user account.
# @flag --help    Show help for this command.
user() {
    :;
}

# {{{ glab user events
# @cmd View user events.
# @flag -a --all                  Get events from all projects.
# @option -F --output <string>    Format output as: 'text', 'json'.
# @option -p --page <int>         Page number.
# @option -P --per-page <int>     Number of items to list per page.
# @flag --help                    Show help for this command.
user::events() {
    :;
}
# }}} glab user events
# }} glab user

# {{ glab variable
# @cmd Manage variables for a GitLab project or group.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help    Show help for this command.
variable() {
    :;
}

# {{{ glab variable delete
# @cmd Delete a variable for a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Delete variable from a group.
# @option -s --scope <string>    The 'environment_scope' of the variable.
# @flag --help                   Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key![`_choice_variable_key`]
variable::delete() {
    :;
}
# }}} glab variable delete

# {{{ glab variable export
# @cmd Export variables from a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group or subgroup.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help                   Show help for this command.
variable::export() {
    :;
}
# }}} glab variable export

# {{{ glab variable get
# @cmd Get a variable for a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Get variable for a group.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -s --scope <string>                The environment_scope of the variable.
# @flag --help                               Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key![`_choice_variable_key`]
variable::get() {
    :;
}
# }}} glab variable get

# {{{ glab variable list
# @cmd List variables for a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group or subgroup.
# @option -F --output[text|json] <string>    Format output as: text, json.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @flag --help                               Show help for this command.
variable::list() {
    :;
}
# }}} glab variable list

# {{{ glab variable set
# @cmd Create a new variable for a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Set variable for a group.
# @flag -m --masked                         Whether the variable is masked.
# @flag -p --protected                      Whether the variable is protected.
# @flag -r --raw                            Whether the variable is treated as a raw string.
# @option -s --scope <string>               The environment_scope of the variable.
# @option -t --type[env_var|file] <file>    The type of a variable: env_var, file.
# @option -v --value <string>               The value of a variable.
# @flag --help                              Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key![`_choice_variable_key`]
# @arg value!
variable::set() {
    :;
}
# }}} glab variable set

# {{{ glab variable update
# @cmd Update an existing variable for a project or group.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Set variable for a group.
# @flag -m --masked                         Whether the variable is masked.
# @flag -p --protected                      Whether the variable is protected.
# @flag -r --raw                            Whether the variable is treated as a raw string.
# @option -s --scope <string>               The environment_scope of the variable.
# @option -t --type[env_var|file] <file>    The type of a variable: env_var, file.
# @option -v --value <string>               The value of a variable.
# @flag --help                              Show help for this command.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository.
# @arg key![`_choice_variable_key`]
# @arg value!
variable::update() {
    :;
}
# }}} glab variable update
# }} glab variable

# {{ glab version
# @cmd Show version information for glab.
# @flag --help    Show help for this command.
version() {
    :;
}
# }} glab version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_alias() {
    glab alias list
}

_choice_hostname() {
    config_yml_path="$(_helper_get_config_yml_path)"
    if [[ ! -f  "$config_yml_path" ]]; then
        return
    fi
    cat "$config_yml_path" | yq '.hosts | keys | .[]'
}

_choice_commit() {
    _helper_repo_curl 'repository/commits?per_page=100' | \
    yq '.[] | .short_id + "	" + (.title // "")'
}

_choice_search_repo() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    elif [[ "$argc__kv_filter" == *'/'* ]]; then
        local prefix_val="$argc__kv_prefix${argc__kv_filter%%/*}"
        local filter_val="${argc__kv_filter#*/}" 
        echo "__argc_prefix=$prefix_val/"
        echo "__argc_filter=$filter_val"
        _helper_search_subgroup_repo "$prefix_val" "$filter_val"
    else
        _helper_search_repo "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_ref() {
    _argc_util_parallel _choice_branch ::: _choice_tag
}

_choice_job_name() {
    _helper_repo_curl 'jobs?per_page=100' | \
    yq '.[] | .name'
}

_choice_pipeline() {
    _helper_repo_curl 'pipelines?per_page=100' | \
    yq '.[] | .id + "	" + .ref'
}

_choice_branch() {
    _helper_repo_curl 'repository/branches?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .commit.title'
}

_choice_job_id() {
    _helper_repo_curl 'jobs?per_page=100' | \
    yq '.[] | .id + "	" + .name + " [" + .status + "]"'
}

_choice_config_key() {
    config_yml_path="$(_helper_get_config_yml_path)"
    if [[ ! -f  "$config_yml_path" ]]; then
        return
    fi
    if [[ -z "$argc_host" ]]; then
        cat "$config_yml_path" | yq 'keys | .[]'
    else
        cat "$config_yml_path" | yq '.hosts["'$argc_host'"] | keys | .[]'
    fi
}

_choice_opened_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_member() {
    _helper_repo_curl 'members/all?per_page=100&query='$ARGC_CWORD | \
    yq '.[] | .username + "	" + .name'
}

_choice_search_user() {
    if [[ "${#ARGC_CWORD}" -lt 3 ]]; then
        return
    fi
    glab api 'users?per_page=50&search='$ARGC_CWORD | \
    yq '.[] | .username + "	" + (.name // "")'
}

_choice_search_group_subgroup() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    else
        _helper_search_subgroup "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_label() {
    _helper_repo_curl 'labels?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .description'
}

_choice_milestone() {
    _helper_repo_curl 'milestones?per_page=100' | \
    yq '.[] | .title + "	" + .description'
}

_choice_closed_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_all_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_opened_issue() {
    _helper_repo_curl 'issues?per_page=100&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_all_issue() {
    _helper_repo_curl 'issues?per_page=100' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_closed_issue() {
    _helper_repo_curl 'issues?per_page=100&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_issue_label() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'issues/'$argc_id | \
    yq '.labels[]'
}

_choice_mr_commit() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'merge_requests/'$argc_id'/commits' | \
    yq '.[] | .id + "	" + .title'
}

_choice_opened_mr_or_branch() {
    _argc_util_parallel _choice_opened_mr ::: _choice_branch
}

_choice_all_mr_or_branch() {
    _argc_util_parallel _choice_all_mr ::: _choice_branch
}

_choice_mr_label() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'merge_requests/'$argc_id | \
    yq '.labels[]'
}

_choice_closed_mr_or_branch() {
    _argc_util_parallel _choice_closed_mr ::: _choice_branch
}

_choice_tag() {
    _helper_repo_curl 'repository/tags?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .commit.title'
}

_choice_asset_name() {
    if [[ -z "$argc_tag" ]]; then
        return
    fi
    _helper_repo_curl 'releases/'$argc_tag'?per_page=100' | \
    yq '.assets.sources[].url'
}

_choice_repo_view_branch() {
    if [[ -n "$argc_repo" ]]; then
        project_id_uri="$(_helper_encode_uri "$argc_repo")"
        glab api "projects/$project_id_uri/repository/branches?per_page=100&search=$ARGC_CWORD" | \
        yq '.[] | .name + "	" + .commit.title'
    else
        _choice_branch
    fi
}

_choice_schedule() {
    _helper_repo_curl 'pipeline_schedules?scope=active' | \
    yq '.[] | .id + "	" + .description'
}

_choice_ssh_key() {
    glab api /user/keys | yq '.[] | .id + "	" + .title'
}

_choice_variable_key() {
    if [[ -z "$argc_group" ]]; then
        group_uri="$(_helper_encode_uri "$argc_group")"
        glab api "/groups/$group_uri/variables?per_page=100" | \
        yq '.[] | .key + "	" + .value'
    else
        _helper_repo_curl 'variables?per_page=100' | \
        yq '.[] | .key + "	" + .value'
    fi
}

_choice_all_mr() {
    _helper_repo_curl 'merge_requests?per_page=100' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_closed_mr() {
    _helper_repo_curl 'merge_requests?per_page=100&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_opened_mr() {
    _helper_repo_curl 'merge_requests?per_page=100&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_owner() {
    _argc_util_parallel _choice_search_user ::: _choice_search_group
}

_choice_search_group() {
    if [[ "${#ARGC_CWORD}" -lt 3 ]]; then
        return
    fi
    glab api 'groups?all_available=true&top_level_only=true&per_page=50&search='$ARGC_CWORD | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_encode_uri() {
    value="$1" yq --null-input 'env(value) | @uri'
}

_helper_get_config_yml_path() {
    _argc_util_path_resolve CONFIG_DIR glab-cli/config.yml
}

_helper_repo_curl() {
    _helper_retrieve_project_id
    if [[ -z "$project_id_uri" ]]; then
        return
    fi
    glab api "projects/$project_id_uri/$1"
}

_helper_retrieve_project_id() {
    set -x
    local raw_values="$( \
        git remote -v | \
        gawk '{
            if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[2])
                print arr[1] " " arr[2]
            } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[2])
                print arr[1] " " arr[2]
            } else if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[3])
                print arr[1] " " arr[2] " " arr[3]
            } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[3])
                print arr[1] " " arr[2] " " arr[3]
            }
        }' \
    )"
    local values=( $raw_values )
    local values_len="${#values[@]}" 
    if [[ "$values_len" -lt 2 ]]; then
        return
    elif [[ "$values_len" -eq 2 ]]; then
        group_val=${values[0]}
        repo_val=${values[1]}
        project_id_val="$group_val/$repo_val"
    else
        group_val=${values[0]}
        subgroup_val=${values[1]}
        repo_val=${values[2]}
        project_id_val="$group_val/$subgroup_val/$repo_val"
    fi
    project_id_uri="$(value="$project_id_val" yq --null-input 'env(value) | @uri')"
}

_helper_search_group_repo() {
    glab api 'groups/'$1'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_search_repo() {
    _argc_util_parallel _helper_search_user_repo $1 $2 ::: _helper_search_group_repo $1 $2 ::: _helper_search_subgroup_ex $1 $2
}

_helper_search_subgroup() {
    glab api 'groups/'$1'/subgroups?all_available=true&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")' 
}

_helper_search_subgroup_ex() {
    _helper_search_subgroup $@ | gawk -F'\t' '{print $1 "/\0\t" $2}'
}

_helper_search_subgroup_repo() {
    group_uri="$(_helper_encode_uri "$1")"
    glab api 'groups/'$group_uri'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_search_user_repo() {
    glab api 'users/'$1'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}

command eval "$(argc --argc-eval "$0" "$@")"