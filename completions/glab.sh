#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help          Show help for command
# @flag -v --version    show glab version information
# @arg cmd[`_choice_alias`]

# {{ glab alias
# @cmd Create, list and delete aliases
# @flag --help    Show help for command
alias() {
    :;
}

# {{{ glab alias delete
# @cmd Delete an alias.
# @flag --help    Show help for command
# @arg alias-name![`_choice_alias`] <alias name>
alias::delete() {
    :;
}
# }}} glab alias delete

# {{{ glab alias list
# @cmd List the available aliases.
# @flag --help    Show help for command
alias::list() {
    :;
}
# }}} glab alias list

# {{{ glab alias set
# @cmd Set an alias.
# @flag -s --shell    Declare an alias to be passed through a shell interpreter
# @flag --help        Show help for command
# @arg alias-name![`_choice_alias`] <alias name>
# @arg command!
alias::set() {
    :;
}
# }}} glab alias set
# }} glab alias

# {{ glab api
# @cmd Make an authenticated request to GitLab API
# @option -F --field* <string>                    Add a parameter of inferred type (changes default HTTP method to "POST")
# @option -H --header* <string>                   Add an additional HTTP request header
# @option --hostname[`_choice_hostname`] <dir>    The GitLab hostname for the request (default is "gitlab.com" or authenticated host in current git directory)
# @flag -i --include                              Include HTTP response headers in the output
# @option --input <file>                          The file to use as body for the HTTP request
# @option -X --method <string>                    The HTTP method for the request (default "GET")
# @flag --paginate                                Make additional HTTP requests to fetch all pages of results
# @option -f --raw-field* <string>                Add a string parameter
# @flag --silent                                  Do not print the response body
# @flag --help                                    Show help for command
# @arg endpoint!
api() {
    :;
}
# }} glab api

# {{ glab ask
# @cmd Generate terminal commands from natural language.
# @flag --help    Show help for command
# @arg prompt
ask() {
    :;
}

# {{{ glab ask git
# @cmd Generate Git commands from natural language (Experimental).
# @flag --help    Show help for command
# @arg prompt!
ask::git() {
    :;
}
# }}} glab ask git
# }} glab ask

# {{ glab auth
# @cmd Manage glab's authentication state
# @flag --help    Show help for command
auth() {
    :;
}

# {{{ glab auth login
# @cmd Authenticate with a GitLab instance
# @option -h --hostname[`_choice_hostname`] <string>  The hostname of the GitLab instance to authenticate with
# @flag --stdin                  Read token from standard input
# @option -t --token <string>    Your GitLab access token
# @flag --use-keyring            Store token in your operating system's keyring
# @flag --help                   Show help for command
auth::login() {
    :;
}
# }}} glab auth login

# {{{ glab auth status
# @cmd View authentication status
# @option -h --hostname[`_choice_hostname`] <string>  Check a specific instance's authentication status
# @flag -t --show-token    Display the auth token
# @flag --help             Show help for command
auth::status() {
    :;
}
# }}} glab auth status
# }} glab auth

# {{ glab changelog
# @cmd Interact with the changelog API
# @flag --help    Show help for command
changelog() {
    :;
}

# {{{ glab changelog generate
# @cmd Generate a changelog for the repository/project
# @option --config-file <file>                 The path of changelog configuration file in the project's Git repository.
# @option --date <string>                      The date and time of the release.
# @option --from[`_choice_commit`] <string>    The start of the range of commits (as a SHA) to use for generating the changelog.
# @option --to[`_choice_commit`] <string>      The end of the range of commits (as a SHA) to use for the changelog.
# @option --trailer <string>                   The Git trailer to use for including commits.
# @option -v --version <string>                The version to generate the changelog for.
# @flag --help                                 Show help for command
changelog::generate() {
    :;
}
# }}} glab changelog generate
# }} glab changelog

# {{ glab check-update
# @cmd Check for latest glab releases
# @flag --help    Show help for command
check-update() {
    :;
}
# }} glab check-update

# {{ glab ci
# @cmd Work with GitLab CI/CD pipelines and jobs
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
ci() {
    :;
}

# {{{ glab ci artifact
# @cmd Download all artifacts from the last pipeline
# @option -p --path <file>    Path to download the artifact files (default "./")
# @flag --help                Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg refname![`_choice_ref`]
# @arg jobname![`_choice_job_name`]
ci::artifact() {
    :;
}
# }}} glab ci artifact

# {{{ glab ci delete
# @cmd Delete a CI/CD pipeline
# @flag --dry-run    simulate process, but do not delete anything
# @option -s --status[running|pending|success|failed|canceled|skipped|created|manual] <string>  delete pipelines by status:
# @flag --help       Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id![`_choice_pipeline`]
ci::delete() {
    :;
}
# }}} glab ci delete

# {{{ glab ci get
# @cmd Get JSON of a running CI/CD pipeline on the current or other specified branch
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch.
# @option -o --output-format <string>    Format output as: text, json (default "text")
# @option -p --pipeline-id <int>         Provide pipeline ID
# @flag --with-variables                 Show variables in pipeline (maintainer role required)
# @flag --help                           Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ci::get() {
    :;
}
# }}} glab ci get

# {{{ glab ci lint
# @cmd Checks if your `.gitlab-ci.yml` file is valid.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ci::lint() {
    :;
}
# }}} glab ci lint

# {{{ glab ci list
# @cmd Get the list of CI/CD pipelines
# @option -o --orderBy[id|status|ref|updated_at|user_id] <string>  Order pipeline by  (default "id")
# @option -p --page <int>              Page number (default 1)
# @option -P --per-page <int>          Number of items to list per page (default 30)
# @option --sort[asc|desc] <string>    Sort pipeline by  (default "desc")
# @option -s --status[running|pending|success|failed|canceled|skipped|created|manual|waiting_for_resource|preparing|scheduled] <string>  Get pipeline with status:
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ci::list() {
    :;
}
# }}} glab ci list

# {{{ glab ci retry
# @cmd Retry a CI/CD job
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg job-id![`_choice_job_id`]
ci::retry() {
    :;
}
# }}} glab ci retry

# {{{ glab ci run
# @cmd Create or run a new CI/CD pipeline
# @option -b --branch[`_choice_branch`] <string>  Create pipeline on branch/ref <string>
# @option --variables* <string>         Pass variables to pipeline in format <key>:<value>
# @option --variables-env* <string>     Pass variables to pipeline in format <key>:<value>
# @option --variables-file* <file>      Pass file contents as a file variable to pipeline in format <key>:<filename>
# @option -f --variables-from <file>    JSON file containing variables for pipeline execution
# @flag --help                          Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ci::run() {
    :;
}
# }}} glab ci run

# {{{ glab ci status
# @cmd View a running CI/CD pipeline on current or other branch specified
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch.
# @flag -c --compact    Show status in compact format
# @flag -l --live       Show status in real-time till pipeline ends
# @flag --help          Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ci::status() {
    :;
}
# }}} glab ci status

# {{{ glab ci trace
# @cmd Trace a CI/CD job log in real time
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg job-id[`_choice_job_id`]
ci::trace() {
    :;
}
# }}} glab ci trace

# {{{ glab ci view
# @cmd View, run, trace/logs, and cancel CI/CD jobs current pipeline
# @option -b --branch[`_choice_branch`] <string>  Check pipeline status for a branch/tag.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg branch-tag[`_choice_ref`] <branch/tag>
ci::view() {
    :;
}
# }}} glab ci view
# }} glab ci

# {{ glab cluster
# @cmd Manage GitLab Agents for Kubernetes and their clusters
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
cluster() {
    :;
}

# {{{ glab cluster agent
# @cmd Manage GitLab Agents for Kubernetes
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
cluster::agent() {
    :;
}

# {{{{ glab cluster agent get-token
# @cmd Create and return a k8s_proxy-scoped Personal Access Token to authenticate with a GitLab Agents for Kubernetes
# @option -a --agent <int>    The numerical Agent ID to connect to
# @flag --help                Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
cluster::agent::get-token() {
    :;
}
# }}}} glab cluster agent get-token

# {{{{ glab cluster agent list
# @cmd List GitLab Agents for Kubernetes in a project
# @option -p --page <uint>        Page number (default 1)
# @option -P --per-page <uint>    Number of items to list per page.
# @flag --help                    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
cluster::agent::list() {
    :;
}
# }}}} glab cluster agent list

# {{{{ glab cluster agent update-kubeconfig
# @cmd Update selected kubeconfig
# @option -a --agent <int>       The numeric agent ID to create the kubeconfig entry for
# @option --kubeconfig <file>    Use a particular kubeconfig file
# @flag -u --use-context         Use as default context
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
cluster::agent::update-kubeconfig() {
    :;
}
# }}}} glab cluster agent update-kubeconfig
# }}} glab cluster agent
# }} glab cluster

# {{ glab completion
# @cmd Generate shell completion scripts
# @flag --no-desc    Do not include shell completion description
# @option -s --shell[bash|zsh|fish|powershell] <string>  Shell type:  (default "bash")
# @flag --help       Show help for command
completion() {
    :;
}
# }} glab completion

# {{ glab config
# @cmd Set and get glab settings
# @flag -g --global    Use global config file
# @flag --help         Show help for command
config() {
    :;
}

# {{{ glab config get
# @cmd Prints the value of a given configuration key.
# @flag -g --global    Read from global config file (~/.config/glab-cli/config.yml).
# @option -h --host[`_choice_hostname`] <string>  Get per-host setting
# @flag --help         Show help for command
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} glab config get

# {{{ glab config init
# @cmd Shows a prompt to set basic glab configuration
# @flag --help    Show help for command
config::init() {
    :;
}
# }}} glab config init

# {{{ glab config set
# @cmd Updates configuration with the value of a given key
# @flag -g --global    Write to global ~/.config/glab-cli/config.yml file rather than the repository .git/glab-cli/config.yml file
# @option -h --host[`_choice_hostname`] <string>  Set per-host setting
# @flag --help         Show help for command
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} glab config set
# }} glab config

# {{ glab incident
# @cmd Work with GitLab incidents
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
incident() {
    :;
}

# {{{ glab incident close
# @cmd Close an incident
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_incident_issue`]
incident::close() {
    :;
}
# }}} glab incident close

# {{{ glab incident list
# @cmd List project incidents
# @flag -A --all                 Get all incidents
# @option -a --assignee[`_choice_member`] <string>  Filter incident by assignee <username>
# @option --author[`_choice_search_user`] <string>  Filter incident by author <username>
# @flag -c --closed              Get only closed incidents
# @flag -C --confidential        Filter by confidential incidents
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group/subgroup.
# @option --in <string>          search in  (default "title,description")
# @option -l --label*,[`_choice_label`] <string>  Filter incident by label <name>
# @option -m --milestone[`_choice_milestone`] <string>  Filter incident by milestone <id>
# @option --not-assignee*,[`_choice_member`] <string>  Filter incident by not being assigneed to <username>
# @option --not-author*,[`_choice_search_user`] <string>  Filter by not being by author(s) <username>
# @option --not-label*,[`_choice_label`] <string>  Filter incident by lack of label <name>
# @option -F --output-format[details|ids|urls] <string>  One of 'details', 'ids', or 'urls' (default "details")
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @option --search <string>      Search <string> in the fields defined by --in
# @flag --help                   Show help for command
incident::list() {
    :;
}
# }}} glab incident list

# {{{ glab incident note
# @cmd Comment on an incident in GitLab
# @option -m --message <string>    Comment/Note message
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg incident-id!
incident::note() {
    :;
}
# }}} glab incident note

# {{{ glab incident reopen
# @cmd Reopen a resolved incident
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_closed_incident_issue`]
incident::reopen() {
    :;
}
# }}} glab incident reopen

# {{{ glab incident subscribe
# @cmd Subscribe to an incident
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_incident_issue`]
incident::subscribe() {
    :;
}
# }}} glab incident subscribe

# {{{ glab incident unsubscribe
# @cmd Unsubscribe from an incident
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_incident_issue`]
incident::unsubscribe() {
    :;
}
# }}} glab incident unsubscribe

# {{{ glab incident view
# @cmd Display the title, body, and other information about an incident.
# @flag -c --comments            Show incident comments and activities
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 20)
# @flag -s --system-logs         Show system activities / logs
# @flag -w --web                 Open incident in a browser.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_incident_issue`]
incident::view() {
    :;
}
# }}} glab incident view
# }} glab incident

# {{ glab issue
# @cmd Work with GitLab issues
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
issue() {
    :;
}

# {{{ glab issue board
# @cmd Work with GitLab Issue Boards in the given project.
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
# @flag --help    Show help for command
issue::board() {
    :;
}

# {{{{ glab issue board create
# @cmd Create a project issue board.
# @option -n --name <string>    The name of the new board
# @flag --help                  Show help for command
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
issue::board::create() {
    :;
}
# }}}} glab issue board create

# {{{{ glab issue board view
# @cmd View project issue board.
# @option -a --assignee[`_choice_member`] <string>  Filter board issues by assignee username
# @option -l --labels* <string>    Filter board issues by labels (comma separated)
# @option -m --milestone[`_choice_milestone`] <string>  Filter board issues by milestone
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <string>  Select another repository using the OWNER/REPO format or the project ID.
issue::board::view() {
    :;
}
# }}}} glab issue board view
# }}} glab issue board

# {{{ glab issue close
# @cmd Close an issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_issue`]
issue::close() {
    :;
}
# }}} glab issue close

# {{{ glab issue create
# @cmd Create an issue
# @option -a --assignee[`_choice_member`] <usernames>  Assign issue to people by their usernames
# @flag -c --confidential                Set an issue to be confidential.
# @option -d --description <string>      Supply a description for issue
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option --link-type <string>           Type for the issue link (default "relates_to")
# @option --linked-issues <ints>         The IIDs of issues that this issue links to
# @option --linked-mr <int>              The IID of a merge request in which to resolve all issues
# @option -m --milestone[`_choice_milestone`] <string>  The global ID or title of a milestone to assign
# @flag --no-editor                      Don't open editor to enter description.
# @flag --recover                        Save the options to a file if the issue fails to be created.
# @option -e --time-estimate <string>    Set time estimate for the issue
# @option -s --time-spent <string>       Set time spent for the issue
# @option -t --title <string>            Supply a title for issue
# @flag --web                            continue issue creation with web interface
# @option -w --weight <int>              The weight of the issue.
# @flag -y --yes                         Don't prompt for confirmation to submit the issue
# @flag --help                           Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
issue::create() {
    :;
}
# }}} glab issue create

# {{{ glab issue delete
# @cmd Delete an issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_issue`]
issue::delete() {
    :;
}
# }}} glab issue delete

# {{{ glab issue list
# @cmd List project issues
# @flag -A --all                 Get all issues
# @option -a --assignee[`_choice_member`] <string>  Filter issue by assignee <username>
# @option --author[`_choice_search_user`] <string>  Filter issue by author <username>
# @flag -c --closed              Get only closed issues
# @flag -C --confidential        Filter by confidential issues
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group/subgroup.
# @option --in <string>          search in  (default "title,description")
# @option -t --issue-type[issue|incident|test_case] <string>  Filter issue by its type
# @option -l --label*,[`_choice_label`] <string>  Filter issue by label <name>
# @option -m --milestone[`_choice_milestone`] <string>  Filter issue by milestone <id>
# @option --not-assignee*,[`_choice_member`] <string>  Filter issue by not being assigneed to <username>
# @option --not-author*,[`_choice_search_user`] <string>  Filter by not being by author(s) <username>
# @option --not-label*,[`_choice_label`] <string>  Filter issue by lack of label <name>
# @option -F --output-format[details|ids|urls] <string>  One of 'details', 'ids', or 'urls' (default "details")
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @option --search <string>      Search <string> in the fields defined by --in
# @flag --help                   Show help for command
issue::list() {
    :;
}
# }}} glab issue list

# {{{ glab issue note
# @cmd Comment on an issue in GitLab
# @option -m --message <string>    Comment/Note message
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_issue`]
issue::note() {
    :;
}
# }}} glab issue note

# {{{ glab issue reopen
# @cmd Reopen a closed issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_closed_issue`]
issue::reopen() {
    :;
}
# }}} glab issue reopen

# {{{ glab issue subscribe
# @cmd Subscribe to an issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_issue`]
issue::subscribe() {
    :;
}
# }}} glab issue subscribe

# {{{ glab issue unsubscribe
# @cmd Unsubscribe from an issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_issue`]
issue::unsubscribe() {
    :;
}
# }}} glab issue unsubscribe

# {{{ glab issue update
# @cmd Update issue
# @option -a --assignee*[`_choice_member`] <string>  assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users
# @flag -c --confidential              Make issue confidential
# @option -d --description <string>    Issue description; set to "-" to open an editor
# @option -l --label*,[`_choice_label`] <string>  add labels
# @flag --lock-discussion              Lock discussion on issue
# @option -m --milestone[`_choice_milestone`] <string>  title of the milestone to assign, pass "" or 0 to unassign
# @flag -p --public                    Make issue public
# @option -t --title <string>          Title of issue
# @flag --unassign                     unassign all users
# @option -u --unlabel*,[`_choice_issue_label`] <string>  remove labels
# @flag --unlock-discussion            Unlock discussion on issue
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_issue`]
issue::update() {
    :;
}
# }}} glab issue update

# {{{ glab issue view
# @cmd Display the title, body, and other information about an issue.
# @flag -c --comments            Show issue comments and activities
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 20)
# @flag -s --system-logs         Show system activities / logs
# @flag -w --web                 Open issue in a browser.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_issue`]
issue::view() {
    :;
}
# }}} glab issue view
# }} glab issue

# {{ glab label
# @cmd Manage labels on remote
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
label() {
    :;
}

# {{{ glab label create
# @cmd Create labels for repository/project
# @option -c --color <string>          Color of label in plain or HEX code.
# @option -d --description <string>    Label description
# @option -n --name <string>           Name of label
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
label::create() {
    :;
}
# }}} glab label create

# {{{ glab label list
# @cmd List labels in repository
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 30)
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
label::list() {
    :;
}
# }}} glab label list
# }} glab label

# {{ glab mr
# @cmd Create, view and manage merge requests
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
mr() {
    :;
}

# {{{ glab mr approve
# @cmd Approve merge requests
# @option -s --sha[`_choice_mr_commit`] <string>  SHA which must match the SHA of the HEAD commit of the merge request
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::approve() {
    :;
}
# }}} glab mr approve

# {{{ glab mr approvers
# @cmd List eligible approvers for merge requests in any state
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::approvers() {
    :;
}
# }}} glab mr approvers

# {{{ glab mr checkout
# @cmd Checkout to an open merge request
# @option -b --branch[`_choice_branch`] <string>  checkout merge request with <branch> name
# @option -u --set-upstream-to <string>    set tracking of checked out branch to [REMOTE/]BRANCH
# @flag --help                             Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::checkout() {
    :;
}
# }}} glab mr checkout

# {{{ glab mr close
# @cmd Close merge requests
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::close() {
    :;
}
# }}} glab mr close

# {{{ glab mr create
# @cmd Create new merge request
# @flag --allow-collaboration          Allow commits from other members
# @option -a --assignee[`_choice_member`] <usernames>  Assign merge request to people by their usernames
# @flag --copy-issue-labels            Copy labels from issue to the merge request.
# @flag --create-source-branch         Create source branch if it does not exist
# @option -d --description <string>    Supply a description for merge request
# @flag --draft                        Mark merge request as a draft
# @flag -f --fill                      Do not prompt for title/description and just use commit info
# @flag --fill-commit-body             Fill description with each commit body when multiple commits.
# @option -H --head[`_choice_search_repo`] <OWNER/REPO>  Select another head repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or the project ID or full URL
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option -m --milestone[`_choice_milestone`] <string>  The global ID or title of a milestone to assign
# @flag --no-editor                    Don't open editor to enter description.
# @flag --push                         Push committed changes after creating merge request.
# @flag --recover                      Save the options to a file if the merge request fails to be created.
# @option -i --related-issue[`_choice_opened_issue`] <string>  Create merge request for an issue.
# @flag --remove-source-branch         Remove Source Branch on merge
# @option --reviewer*,[`_choice_member`] <usernames>  Request review from users by their usernames
# @option -s --source-branch[`_choice_branch`] <string>  The Branch you are creating the merge request.
# @flag --squash-before-merge          Squash commits into a single commit when merging
# @option -b --target-branch[`_choice_branch`] <string>  The target or base branch into which you want your code merged
# @option -t --title <string>          Supply a title for merge request
# @flag -w --web                       continue merge request creation on web browser
# @flag --wip                          Mark merge request as a work in progress.
# @flag -y --yes                       Skip submission confirmation prompt, with --fill it skips all optional prompts
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::create() {
    :;
}
# }}} glab mr create

# {{{ glab mr delete
# @cmd Delete merge requests
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::delete() {
    :;
}
# }}} glab mr delete

# {{{ glab mr diff
# @cmd View changes in a merge request
# @option --color[always|never|auto] <string>    Use color in diff output:  (default "auto")
# @flag --help                                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::diff() {
    :;
}
# }}} glab mr diff

# {{{ glab mr for
# @cmd Create new merge request for an issue
# @flag --allow-collaboration     Allow commits from other members
# @option -a --assignee[`_choice_member`] <string>  Assign merge request to people by their IDs.
# @flag --draft                   Mark merge request as a draft.
# @option -l --label*,[`_choice_label`] <string>  Add label by name.
# @option -m --milestone[`_choice_milestone`] <int>  add milestone by <id> for merge request (default -1)
# @flag --remove-source-branch    Remove Source Branch on merge
# @option -b --target-branch[`_choice_branch`] <string>  The target or base branch into which you want your code merged
# @flag --wip                     Mark merge request as a work in progress.
# @flag --with-labels             Copy labels from issue to the merge request
# @flag --help                    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
mr::for() {
    :;
}
# }}} glab mr for

# {{{ glab mr issues
# @cmd Get issues related to a particular merge request.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::issues() {
    :;
}
# }}} glab mr issues

# {{{ glab mr list
# @cmd List merge requests
# @flag -A --all                 Get all merge requests
# @option -a --assignee*[`_choice_member`] <string>  Get only merge requests assigned to users
# @option --author[`_choice_search_user`] <string>  Filter merge request by Author <username>
# @flag -c --closed              Get only closed merge requests
# @flag -d --draft               Filter by draft merge requests
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group/subgroup.
# @option -l --label*,[`_choice_label`] <string>  Filter merge request by label <name>
# @flag -M --merged              Get only merged merge requests
# @option -m --milestone[`_choice_milestone`] <string>  Filter merge request by milestone <id>
# @option --not-label*,[`_choice_mr_label`] <string>  Filter merge requests by not having label <name>
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 30)
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @option -r --reviewer*,[`_choice_member`] <string>  Get only merge requests with users as reviewer
# @option --search <string>      Filter by <string> in title and description
# @option -s --source-branch[`_choice_branch`] <string>  Filter by source branch <name>
# @option -t --target-branch[`_choice_branch`] <string>  Filter by target branch <name>
# @flag --help                   Show help for command
mr::list() {
    :;
}
# }}} glab mr list

# {{{ glab mr merge
# @cmd Merge/Accept merge requests
# @flag --auto-merge                             Set auto-merge (default true)
# @option -m --message <string>                  Custom merge commit message
# @flag -r --rebase                              Rebase the commits onto the base branch
# @flag -d --remove-source-branch                Remove source branch on merge
# @option --sha[`_choice_mr_commit`] <string>    Merge Commit sha
# @flag -s --squash                              Squash commits on merge
# @option --squash-message <string>              Custom Squash commit message
# @flag -y --yes                                 Skip submission confirmation prompt
# @flag --help                                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::merge() {
    :;
}
# }}} glab mr merge

# {{{ glab mr note
# @cmd Add a comment or note to merge request
# @option -m --message <string>    Comment/Note message
# @flag --unique                   Don't create a comment/note if it already exists
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id-branch <<id>|<branch>>
mr::note() {
    :;
}
# }}} glab mr note

# {{{ glab mr rebase
# @cmd Automatically rebase the source_branch of the merge request against its target_branch.
# @flag --skip-ci    Rebase merge request while skipping CI/CD pipeline.
# @flag --help       Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id-branch <<id>|<branch>>
mr::rebase() {
    :;
}
# }}} glab mr rebase

# {{{ glab mr reopen
# @cmd Reopen merge requests
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_closed_mr_or_branch`]
mr::reopen() {
    :;
}
# }}} glab mr reopen

# {{{ glab mr revoke
# @cmd Revoke approval on a merge request
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::revoke() {
    :;
}
# }}} glab mr revoke

# {{{ glab mr subscribe
# @cmd Subscribe to merge requests
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::subscribe() {
    :;
}
# }}} glab mr subscribe

# {{{ glab mr todo
# @cmd Add a to-do item to merge request
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::todo() {
    :;
}
# }}} glab mr todo

# {{{ glab mr unsubscribe
# @cmd Unsubscribe from merge requests
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::unsubscribe() {
    :;
}
# }}} glab mr unsubscribe

# {{{ glab mr update
# @cmd Update merge requests
# @option -a --assignee*[`_choice_member`] <string>  assign users via username, prefix with '!' or '-' to remove from existing assignees, '+' to add, otherwise replace existing assignees with given users
# @option -d --description <string>    merge request description; set to "-" to open an editor
# @flag --draft                        Mark merge request as a draft
# @option -l --label*,[`_choice_label`] <string>  add labels
# @flag --lock-discussion              Lock discussion on merge request
# @option -m --milestone[`_choice_milestone`] <string>  title of the milestone to assign, pass "" or 0 to unassign
# @flag -r --ready                     Mark merge request as ready to be reviewed and merged
# @flag --remove-source-branch         Toggles the removal of the Source Branch on merge
# @option --reviewer*,[`_choice_member`] <string>  request review from users by their usernames, prefix with '!' or '-' to remove from existing reviewers, '+' to add, otherwise replace existing reviewers with given users
# @flag --squash-before-merge          Toggles the option to squash commits into a single commit when merging
# @option --target-branch[`_choice_branch`] <string>  set target branch
# @option -t --title <string>          Title of merge request
# @flag --unassign                     unassign all users
# @option -u --unlabel*,[`_choice_mr_label`] <string>  remove labels
# @flag --unlock-discussion            Unlock discussion on merge request
# @flag --wip                          Mark merge request as a work in progress.
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_opened_mr_or_branch`]
mr::update() {
    :;
}
# }}} glab mr update

# {{{ glab mr view
# @cmd Display the title, body, and other information about a merge request.
# @flag -c --comments            Show mr comments and activities
# @option -p --page <int>        Page number
# @option -P --per-page <int>    Number of items to list per page (default 20)
# @flag -s --system-logs         Show system activities / logs
# @flag -w --web                 Open mr in a browser.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_all_mr_or_branch`]
mr::view() {
    :;
}
# }}} glab mr view
# }} glab mr

# {{ glab release
# @cmd Manage GitLab releases
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
release() {
    :;
}

# {{{ glab release create
# @cmd Create a new or update a GitLab Release for a repository
# @option -a --assets-links <JSON>    JSON string representation of assets links (e.g. `--assets-links='[{"name": "Asset1", "url":"https://<domain>/some/location/1", "link_type": "other", "filepath": "path/to/file"}]')`
# @option -m --milestone*[`_choice_milestone`] <string>  The title of each milestone the release is associated with
# @option -n --name <string>          The release name or title
# @option -N --notes <string>         The release notes/description.
# @option -F --notes-file <file>      Read release notes file.
# @option -r --ref <string>           If a tag specified doesn't exist, the release is created from ref and tagged with the specified tag name.
# @option -D --released-at <date>     The date when the release is/was ready.
# @flag --help                        Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg tag![`_choice_tag`]
# @arg files*
release::create() {
    :;
}
# }}} glab release create

# {{{ glab release delete
# @cmd Delete a GitLab Release
# @flag -t --with-tag    Delete associated tag
# @flag -y --yes         Skip confirmation prompt
# @flag --help           Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg tag![`_choice_tag`]
release::delete() {
    :;
}
# }}} glab release delete

# {{{ glab release download
# @cmd Download asset files from a GitLab Release
# @option -n --asset-name*[`_choice_asset_name`] <string>  Download only assets that match the name or a glob pattern
# @option -D --dir <dir>    Directory to download the release assets to (default ".")
# @flag --help              Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg tag![`_choice_tag`]
release::download() {
    :;
}
# }}} glab release download

# {{{ glab release list
# @cmd List releases in a repository
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
release::list() {
    :;
}
# }}} glab release list

# {{{ glab release upload
# @cmd Upload release asset files or links to GitLab Release
# @option -a --assets-links <JSON>    JSON string representation of assets links (e.g. `--assets-links='[{"name": "Asset1", "url":"https://<domain>/some/location/1", "link_type": "other", "filepath": "path/to/file"}]')`
# @flag --help                        Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg tag![`_choice_tag`]
# @arg files*
release::upload() {
    :;
}
# }}} glab release upload

# {{{ glab release view
# @cmd View information about a GitLab Release
# @flag -w --web    Open the release in the browser
# @flag --help      Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg tag![`_choice_tag`]
release::view() {
    :;
}
# }}} glab release view
# }} glab release

# {{ glab repo
# @cmd Work with GitLab repositories and projects
# @flag --help    Show help for command
repo() {
    :;
}

# {{{ glab repo archive
# @cmd Get an archive of the repository.
# @option -f --format <string>                   Optionally Specify format if you want a downloaded archive: {tar.gz|tar.bz2|tbz|tbz2|tb2|bz2|tar|zip}.
# @option -s --sha[`_choice_commit`] <string>    The commit SHA to download.
# @flag --help                                   Show help for command
repo::archive() {
    :;
}
# }}} glab repo archive

# {{{ glab repo clone
# @cmd Clone a GitLab repository/project
# @option -g --group[`_choice_search_group_subgroup`] <string>  Specify group to clone repositories from
# @flag -p --preserve-namespace     Clone the repo in a subdirectory based on namespace
# @flag -a --archived               Limit by archived status.
# @flag -G --include-subgroups      Include projects in subgroups of this group.
# @flag -m --mine                   Limit by projects in the group owned by the current authenticated user.
# @option -v --visibility[public|internal|private] <string>  Limit by visibility {public, internal, or private}.
# @flag -I --with-issues-enabled    Limit by projects with issues feature enabled.
# @flag -M --with-mr-enabled        Limit by projects with merge requests feature enabled.
# @flag -S --with-shared            Include projects shared to this group.
# @flag --paginate                  Make additional HTTP requests to fetch all pages of projects before cloning.
# @option --page <int>              Page number (default 1)
# @option --per-page <int>          Number of items to list per page (default 30)
# @flag --help                      Show help for command
# @arg repo![`_choice_search_repo`]
# @arg dir
repo::clone() {
    :;
}
# }}} glab repo clone

# {{{ glab repo contributors
# @cmd Get repository contributors list.
# @option -o --order[name|email|commits] <string>  Return contributors ordered by name, email, or commits (orders by commit date) fields (default "commits")
# @option -p --page <int>                 Page number (default 1)
# @option -P --per-page <int>             Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @option -s --sort[asc|desc] <string>    Return contributors sorted in asc or desc order
# @flag --help                            Show help for command
repo::contributors() {
    :;
}
# }}} glab repo contributors

# {{{ glab repo create
# @cmd Create a new GitLab project/repository.
# @option --defaultBranch <master>     Default branch of the project.
# @option -d --description <string>    Description of the new project
# @option -g --group[`_choice_search_group_subgroup`] <string>  Namespace/group for the new project (defaults to the current user’s namespace)
# @flag --internal                     Make project internal: visible to any authenticated user (default)
# @option -n --name <string>           Name of the new project
# @flag -p --private                   Make project private: visible only to project members
# @flag -P --public                    Make project public: visible without any authentication
# @flag --readme                       Initialize project with README.md
# @option --remoteName <origin>        Remote name for the Git repository you're in.
# @option -t --tag* <string>           The list of tags for the project.
# @flag --help                         Show help for command
# @arg path
repo::create() {
    :;
}
# }}} glab repo create

# {{{ glab repo delete
# @cmd Delete an existing repository on GitLab.
# @flag -y --yes    Skip the confirmation prompt and immediately delete the repository.
# @flag --help      Show help for command
# @arg repo[`_choice_search_repo`]
repo::delete() {
    :;
}
# }}} glab repo delete

# {{{ glab repo fork
# @cmd Create a fork of a GitLab repository
# @option -c --clone[true|false]    Clone the fork
# @option -n --name <string>        The name assigned to the resultant project after forking
# @option -p --path <path>          The path assigned to the resultant project after forking
# @option --remote[true|false]      Add remote for fork
# @flag --help                      Show help for command
# @arg repo[`_choice_search_repo`]
repo::fork() {
    :;
}
# }}} glab repo fork

# {{{ glab repo list
# @cmd Get list of repositories.
# @flag -a --all                          List all projects on the instance
# @flag --member                          Only list projects which you are a member
# @flag -m --mine                         Only list projects you own (default if no filters are passed)
# @option -o --order <string>             Return repositories ordered by id, created_at, or other fields (default "last_activity_at")
# @option -p --page <int>                 Page number (default 1)
# @option -P --per-page <int>             Number of items to list per page (default 30)
# @option -s --sort[asc|desc] <string>    Return repositories sorted in asc or desc order
# @flag --starred                         Only list starred projects
# @flag --help                            Show help for command
repo::list() {
    :;
}
# }}} glab repo list

# {{{ glab repo mirror
# @cmd Mirror a project/repository to the specified location using pull or push method.
# @flag --allow-divergence           Determines if divergent refs are skipped.
# @option --direction <dir>          Mirror direction (default "pull")
# @flag --enabled                    Determines if the mirror is enabled.
# @flag --protected-branches-only    Determines if only protected branches are mirrored.
# @option --url <string>             The target URL to which the repository is mirrored.
# @flag --help                       Show help for command
# @arg id-url-path <ID|URL|PATH>
repo::mirror() {
    :;
}
# }}} glab repo mirror

# {{{ glab repo search
# @cmd Search for GitLab repositories and projects by name
# @option -p --page <int>         Page number (default 1)
# @option -P --per-page <int>     Number of items to list per page (default 20)
# @option -s --search <string>    A string contained in the project name
# @flag --help                    Show help for command
repo::search() {
    :;
}
# }}} glab repo search

# {{{ glab repo transfer
# @cmd Transfer a repository to a new namespace.
# @option -t --target-namespace[`_choice_search_group_subgroup`] <string>  The namespace where your project should be transferred to
# @flag -y --yes    Danger: Skip confirmation prompt and force transfer operation.
# @flag --help      Show help for command
# @arg repo[`_choice_search_repo`]
repo::transfer() {
    :;
}
# }}} glab repo transfer

# {{{ glab repo view
# @cmd View a project/repository
# @option -b --branch[`_choice_repo_view_branch`] <string>  View a specific branch of the repository
# @flag -w --web    Open a project in the browser
# @flag --help      Show help for command
# @arg repo[`_choice_search_repo`]
repo::view() {
    :;
}
# }}} glab repo view
# }} glab repo

# {{ glab schedule
# @cmd Work with GitLab CI schedules
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
schedule() {
    :;
}

# {{{ glab schedule create
# @cmd Schedule a new pipeline.
# @flag --active                           Whether or not the schedule is active (default true)
# @option --cron <string>                  Cron interval pattern
# @option --cronTimeZone <string>          Cron timezone (default "UTC")
# @option --description <string>           Description of the schedule
# @option --ref[`_choice_ref`] <string>    Target branch or tag
# @flag --help                             Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
schedule::create() {
    :;
}
# }}} glab schedule create

# {{{ glab schedule delete
# @cmd Delete schedule with the specified ID.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_schedule`]
schedule::delete() {
    :;
}
# }}} glab schedule delete

# {{{ glab schedule list
# @cmd Get the list of schedules
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
schedule::list() {
    :;
}
# }}} glab schedule list

# {{{ glab schedule run
# @cmd Run the specified scheduled pipeline.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_schedule`]
schedule::run() {
    :;
}
# }}} glab schedule run
# }} glab schedule

# {{ glab snippet
# @cmd Create, view and manage snippets
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
snippet() {
    :;
}

# {{{ glab snippet create
# @cmd Create new snippet
# @option -d --description <string>    Description of the snippet
# @option -f --filename <file>         Filename of the snippet in GitLab
# @option -t --title <string>          Title of the snippet
# @option -v --visibility[public|internal|private] <string>  Limit by visibility {public, internal, or private} (default "private")
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg path
snippet::create() {
    :;
}
# }}} glab snippet create
# }} glab snippet

# {{ glab ssh-key
# @cmd Manage SSH keys registered with your GitLab account.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
ssh-key() {
    :;
}

# {{{ glab ssh-key add
# @cmd Add an SSH key to your GitLab account
# @option -e --expires-at <string>    The expiration date of the SSH key in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ)
# @option -t --title <string>         New SSH key's title
# @flag --help                        Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key-file
ssh-key::add() {
    :;
}
# }}} glab ssh-key add

# {{{ glab ssh-key delete
# @cmd Deletes a single SSH key specified by the ID.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key-id!
ssh-key::delete() {
    :;
}
# }}} glab ssh-key delete

# {{{ glab ssh-key get
# @cmd Returns a single SSH key specified by the ID.
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 20)
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg id[`_choice_ssh_key`]
ssh-key::get() {
    :;
}
# }}} glab ssh-key get

# {{{ glab ssh-key list
# @cmd Get a list of currently authenticated user's SSH keys.
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 30)
# @flag --show-id                Shows IDs of SSH Keys
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
ssh-key::list() {
    :;
}
# }}} glab ssh-key list
# }} glab ssh-key

# {{ glab user
# @cmd Interact with user
# @flag --help    Show help for command
user() {
    :;
}

# {{{ glab user events
# @cmd View user events
# @flag -a --all                 Get events from all projects
# @option -p --page <int>        Page number (default 1)
# @option -P --per-page <int>    Number of items to list per page (default 30)
# @flag --help                   Show help for command
user::events() {
    :;
}
# }}} glab user events
# }} glab user

# {{ glab variable
# @cmd Manage GitLab Project and Group Variables
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
variable() {
    :;
}

# {{{ glab variable delete
# @cmd Delete a project or group variable
# @option -g --group[`_choice_search_group_subgroup`] <string>  Delete variable from a group
# @option -s --scope <string>    The environment_scope of the variable.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key![`_choice_variable_key`]
variable::delete() {
    :;
}
# }}} glab variable delete

# {{{ glab variable export
# @cmd Export project or group variables.
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group or subgroup.
# @option -p --page <int>        Page number.
# @option -P --per-page <int>    Number of items to list per page.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help                   Show help for command
variable::export() {
    :;
}
# }}} glab variable export

# {{{ glab variable get
# @cmd get a project or group variable
# @option -g --group[`_choice_search_group_subgroup`] <string>  Get variable for a group
# @option -s --scope <string>    The environment_scope of the variable.
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key![`_choice_variable_key`]
variable::get() {
    :;
}
# }}} glab variable get

# {{{ glab variable list
# @cmd List project or group variables
# @option -g --group[`_choice_search_group_subgroup`] <string>  Select a group/subgroup.
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @flag --help    Show help for command
variable::list() {
    :;
}
# }}} glab variable list

# {{{ glab variable set
# @cmd Create a new project or group variable
# @option -g --group[`_choice_search_group_subgroup`] <string>  Set variable for a group
# @flag -m --masked                         Whether the variable is masked
# @flag -p --protected                      Whether the variable is protected
# @flag -r --raw                            Whether the variable is treated as a raw string
# @option -s --scope <string>               The environment_scope of the variable.
# @option -t --type[env_var|file] <file>    The type of a variable:  (default "env_var")
# @option -v --value <string>               The value of a variable
# @flag --help                              Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key![`_choice_variable_key`]
# @arg value!
variable::set() {
    :;
}
# }}} glab variable set

# {{{ glab variable update
# @cmd Update an existing project or group variable
# @option -g --group[`_choice_search_group_subgroup`] <string>  Set variable for a group
# @flag -m --masked                         Whether the variable is masked
# @flag -p --protected                      Whether the variable is protected
# @flag -r --raw                            Whether the variable is treated as a raw string
# @option -s --scope <string>               The environment_scope of the variable.
# @option -t --type[env_var|file] <file>    The type of a variable:  (default "env_var")
# @option -v --value <string>               The value of a variable
# @flag --help                              Show help for command
# @option -R --repo[`_choice_search_repo`] <OWNER/REPO>  Select another repository using the OWNER/REPO or `GROUP/NAMESPACE/REPO` format or full URL or git URL
# @arg key![`_choice_variable_key`]
# @arg value!
variable::update() {
    :;
}
# }}} glab variable update
# }} glab variable

# {{ glab version
# @cmd Show glab version information
# @flag --help    Show help for command
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