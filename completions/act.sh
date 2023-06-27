#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
# @version 0.2.46

# @option -a --actor <string>                   user that triggered the event (default "nektos/act")
# @option --artifact-server-addr <string>       Defines the address to which the artifact server binds.
# @option --artifact-server-path <path>         Defines the path where the artifact server stores uploads and retrieves downloads from.
# @option --artifact-server-port <string>       Defines the port where the artifact server listens.
# @flag -b --bind                               bind working directory to container, rather than copy
# @flag --bug-report                            Display system information for bug report
# @option --cache-server-addr <string>          Defines the address to which the cache server binds.
# @option --cache-server-path <path>            Defines the path where the cache server stores caches.
# @option --cache-server-port <uint16>          Defines the port where the artifact server listens.
# @option --container-architecture[`_choice_container_platform`] <string>  Architecture which should be used to run containers, e.g.: linux/amd64.
# @option --container-cap-add <stringArray>     kernel capabilities to add to the workflow containers
# @option --container-cap-drop <stringArray>    kernel capabilities to remove from the workflow containers
# @option --container-daemon-socket <string>    URI to Docker Engine socket (e.g.: unix://~/.docker/run/docker.sock or - to disable bind mounting the socket)
# @option --container-options <string>          Custom docker container options for the job container without an options property in the job definition
# @option --defaultbranch <string>              the name of the main branch
# @flag --detect-event                          Use first event type from workflow as event that triggered the workflow
# @option -C --directory <dir>                  working directory (default ".")
# @flag -n --dryrun                             dryrun mode
# @option --env <stringArray>                   env to make available to actions with optional value
# @option --env-file <file>                     environment file to read and use as env in the containers (default ".env")
# @option -e --eventpath <string>               path to event JSON file
# @option --github-instance <string>            GitHub instance to use.
# @flag -g --graph                              draw workflows
# @flag -h --help                               help for act
# @option --input <stringArray>                 action input to make available to actions
# @option --input-file <file>                   input file to read and use as action input (default ".input")
# @flag --insecure-secrets                      NOT RECOMMENDED! Doesn't hide secrets while printing logs.
# @option -j --job[`_choice_job`] <string>      run a specific job ID
# @flag --json                                  Output logs in json format
# @flag -l --list                               list workflows
# @option --matrix <stringArray>                specify which matrix configuration to include (e.g.
# @flag --no-cache-server                       Disable cache server
# @flag --no-recurse                            Flag to disable running workflows from subdirectories of specified path in '--workflows'/'-W' flag
# @flag --no-skip-checkout                      Do not skip actions/checkout
# @option -P --platform <stringArray>           custom image to use per platform
# @flag --privileged                            use privileged mode
# @flag -p --pull                               pull docker image(s) even if already present (default true)
# @flag -q --quiet                              disable logging of output from steps
# @flag --rebuild                               rebuild local action docker image(s) even if already present (default true)
# @option --remote-name <string>                git remote name that will be used to retrieve url of git repo (default "origin")
# @option --replace-ghe-action-token-with-github-com <string>  If you are using replace-ghe-action-with-github-com  and you want to use private actions on GitHub, you have to set personal access token
# @option --replace-ghe-action-with-github-com <stringArray>  If you are using GitHub Enterprise Server and allow specified actions from GitHub (github.com), you can set actions on this.
# @flag -r --reuse                              don't remove container(s) on successfully completed workflow(s) to maintain state between runs
# @flag --rm                                    automatically remove container(s)/volume(s) after a workflow(s) failure
# @option -s --secret <stringArray>             secret to make available to actions with optional value
# @option --secret-file <file>                  file with list of secrets to read from (default ".secrets")
# @flag --use-gitignore                         Controls whether paths specified in .gitignore should be copied into container (default true)
# @option --userns <string>                     user namespace to use
# @flag -v --verbose                            verbose output
# @flag --version                               version for act
# @flag -w --watch                              watch the contents of the local repo and run when files change
# @option -W --workflows <path>                 path to workflow file(s) (default "./.github/workflows/")
# @arg event[`_choice_event`]

_choice_job() {
    act -l 2>/dev/null | tail +2 | awk '{print $2}'    
}

_choice_container_platform() {
    cat <<-'EOF'
linux/amd64
linux/arm64
linux/ppc64le
linux/s390x
linux/386
linux/arm/v7
linux/arm/v6
EOF
}

_choice_event() {
    cat <<-'EOF'
branch_protection_rule
check_run
check_suite
create
delete
deployment
deployment_status
discussion
discussion_comment
fork
gollum
issue_comment
issues
label
merge_group
milestone
page_build
project
project_card
project_column
public
pull_request
pull_request_comment
pull_request_review
pull_request_review_comment
pull_request_target
push
registry_package
release
repository_dispatch
schedule
status
watch
workflow_call
workflow_dispatch
workflow_run
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"