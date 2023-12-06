#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help              help for circleci
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN

# {{ circleci completion
# @cmd Generate shell completion scripts
# @flag -h --help              help for completion
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
completion() {
    :;
}

# {{{ circleci completion bash
# @cmd Generate bash completion scripts
# @flag -h --help              help for bash
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
completion::bash() {
    :;
}
# }}} circleci completion bash

# {{{ circleci completion zsh
# @cmd Generate zsh completion scripts
# @flag -h --help              help for zsh
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
completion::zsh() {
    :;
}
# }}} circleci completion zsh
# }} circleci completion

# {{ circleci config
# @cmd Operate on build config files
# @flag -h --help              help for config
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
config() {
    :;
}

# {{{ circleci config generate
# @cmd Generate a config by analyzing your repository contents
# @flag -h --help              help for generate
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
config::generate() {
    :;
}
# }}} circleci config generate

# {{{ circleci config pack
# @cmd Pack up your CircleCI configuration into a single file.
# @flag -h --help              help for pack
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
config::pack() {
    :;
}
# }}} circleci config pack

# {{{ circleci config process
# @cmd Validate config and display expanded configuration.
# @flag -h --help                         help for process
# @option --org-id <string>               organization id used when a config depends on private orbs belonging to that org
# @option -o --org-slug <string>          organization slug (for example: github/example-org), used when a config depends o
# @option --pipeline-parameters <path>    YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file p
# @flag --verbose                         adds verbose output to the command
# @option --host <string>                 URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check               Skip the check for updates check run before every command.
# @option --token <string>                your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
config::process() {
    :;
}
# }}} circleci config process

# {{{ circleci config validate
# @cmd Check that the config file is well formed.
# @alias check
# @flag -h --help                     help for validate
# @flag --ignore-deprecated-images    ignores the deprecated images error
# @option --org-id <string>           organization id used when a config depends on private orbs belonging to that org
# @option -o --org-slug <string>      organization slug (for example: github/example-org), used when a config depends on
# @flag -v --verbose                  Enable verbose output
# @option --host <string>             URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check           Skip the check for updates check run before every command.
# @option --token <string>            your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
config::validate() {
    :;
}
# }}} circleci config validate
# }} circleci config

# {{ circleci context
# @cmd For securing and sharing environment variables across projects
# @flag -h --help              help for context
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
context() {
    :;
}

# {{{ circleci context create
# @cmd Create a new context
# @flag -h --help              help for create
# @option --org-id <string>    The id of your organization.
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type[github|bitbucket]
# @arg org-name
# @arg context-name!
context::create() {
    :;
}
# }}} circleci context create

# {{{ circleci context delete
# @cmd Delete the named context
# @flag -f --force             Delete the context without asking for confirmation.
# @flag -h --help              help for delete
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg context-name!
context::delete() {
    :;
}
# }}} circleci context delete

# {{{ circleci context list
# @cmd List all contexts
# @flag -h --help              help for list
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
context::list() {
    :;
}
# }}} circleci context list

# {{{ circleci context remove-secret
# @cmd Remove an environment variable from the named context
# @flag -h --help              help for remove-secret
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg context-name!
# @arg secret-name! <secret name>
context::remove-secret() {
    :;
}
# }}} circleci context remove-secret

# {{{ circleci context show
# @cmd Show a context
# @flag -h --help              help for show
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg context-name!
context::show() {
    :;
}
# }}} circleci context show

# {{{ circleci context store-secret
# @cmd Store a new environment variable in the named context.
# @flag -h --help              help for store-secret
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg context-name!
# @arg secret-name! <secret name>
context::store-secret() {
    :;
}
# }}} circleci context store-secret
# }} circleci context

# {{ circleci diagnostic
# @cmd Check the status of your CircleCI CLI.
# @flag -h --help              help for diagnostic
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
diagnostic() {
    :;
}
# }} circleci diagnostic

# {{ circleci env
# @cmd Manage environment variables
# @flag -h --help              help for env
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
env() {
    :;
}

# {{{ circleci env subst
# @cmd Substitute environment variables in a string
# @flag -h --help              help for subst
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
env::subst() {
    :;
}
# }}} circleci env subst
# }} circleci env

# {{ circleci follow
# @cmd Attempt to follow the project for the current git repository.
# @flag -h --help              help for follow
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
follow() {
    :;
}
# }} circleci follow

# {{ circleci info
# @cmd Check information associated to your user account.
# @flag -h --help              help for info
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
info() {
    :;
}

# {{{ circleci info org
# @cmd View your Organizations' information
# @flag -h --help              help for org
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
info::org() {
    :;
}
# }}} circleci info org
# }} circleci info

# {{ circleci local
# @cmd Debug jobs on the local machine
# @flag -h --help              help for local
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
local() {
    :;
}

# {{{ circleci local execute
# @cmd Run a job in a container on the local machine
# @option --branch <string>                 Git branch
# @option --build-agent-version <string>    The version of the build agent image you want to use.
# @option --checkout-key <string>           Git Checkout key (default "~/.ssh/id_rsa")
# @option -c --config <file>                config file (default ".circleci/config.yml")
# @option --docker-socket-path <path>       Path to the host's docker socket (default "/var/run/docker.sock")
# @option -e <VAR=VAL>                      Set environment variables, e.g. -e VAR=VAL
# @option --env <VAR=VAL>                   Set environment variables, e.g. -e VAR=VAL
# @flag -h --help                           help for execute
# @option --index <int>                     node index of parallelism
# @option --node-total <int>                total number of parallel nodes (default 1)
# @option --org-id <string>                 organization id, used when a config depends on private orbs belonging to that org
# @option -o --org-slug <string>            organization slug (for example: github/example-org), used when a config depends o
# @option --repo-url <string>               Git Url
# @option --revision <string>               Git Revision
# @flag --skip-checkout                     use local path as-is (default true)
# @option -v --volume* <string>             Volume bind-mounting
# @option --host <string>                   URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check                 Skip the check for updates check run before every command.
# @option --token <string>                  your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg job-name!
local::execute() {
    :;
}
# }}} circleci local execute
# }} circleci local

# {{ circleci namespace
# @cmd Operate on namespaces
# @flag -h --help              help for namespace
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
namespace() {
    :;
}

# {{{ circleci namespace create
# @cmd Create a namespace
# @flag -h --help              help for create
# @flag --no-prompt            Disable prompt to bypass interactive UI.
# @option --org-id <string>    The id of your organization.
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg name!
# @arg vcs-type[github|bitbucket]
# @arg org-name
namespace::create() {
    :;
}
# }}} circleci namespace create
# }} circleci namespace

# {{ circleci open
# @cmd Open the current project in the browser.
# @flag -h --help              help for open
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
open() {
    :;
}
# }} circleci open

# {{ circleci orb
# @cmd Operate on orbs
# @flag -h --help              help for orb
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
orb() {
    :;
}

# {{{ circleci orb add-to-category
# @cmd Add an orb to a category
# @flag -h --help              help for add-to-category
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace-orb <<namespace>/<orb>>
# @arg category-name[`_choice_orb_category`] <"<category-name>">
orb::add-to-category() {
    :;
}
# }}} circleci orb add-to-category

# {{{ circleci orb create
# @cmd Create an orb in the specified namespace
# @flag -h --help              help for create
# @flag --no-prompt            Disable prompt to bypass interactive UI.
# @flag --private              Specify that this orb is for private use within your org, unlisted from the public registry.
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace-orb <<namespace>/<orb>>
orb::create() {
    :;
}
# }}} circleci orb create

# {{{ circleci orb diff
# @cmd Shows the difference between two versions of the same orb
# @option --color[always|auto|never] <string>    Show colored diff.
# @flag -h --help                                help for diff
# @option --host <string>                        URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check                      Skip the check for updates check run before every command.
# @option --token <string>                       your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg orb!
# @arg version1!
# @arg version2!
orb::diff() {
    :;
}
# }}} circleci orb diff

# {{{ circleci orb info
# @cmd Show the meta-data of an orb
# @flag -h --help              help for info
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg orb!
orb::info() {
    :;
}
# }}} circleci orb info

# {{{ circleci orb init
# @cmd Initialize a new orb project.
# @flag -h --help              help for init
# @flag --private              initialize a private orb
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
orb::init() {
    :;
}
# }}} circleci orb init

# {{{ circleci orb list
# @cmd List orbs
# @flag -d --details           output all the commands, executors, and jobs, along with a tree of their parameters
# @flag -h --help              help for list
# @flag --private              exclusively list private orbs within a namespace
# @option --sort <string>      one of "builds""projects""orgs"
# @flag -u --uncertified       include uncertified orbs
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace!
orb::list() {
    :;
}
# }}} circleci orb list

# {{{ circleci orb list-categories
# @cmd List orb categories
# @flag -h --help              help for list-categories
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
orb::list-categories() {
    :;
}
# }}} circleci orb list-categories

# {{{ circleci orb pack
# @cmd Pack an Orb with local scripts.
# @flag -h --help              help for pack
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
orb::pack() {
    :;
}
# }}} circleci orb pack

# {{{ circleci orb process
# @cmd Validate an orb and print its form after all pre-registration processing
# @flag -h --help                help for process
# @option --org-id <string>      organization id used when an orb depends on private orbs belonging to that org
# @option --org-slug <string>    organization slug (for example: github/example-org), used when an orb depends on private orb
# @option --host <string>        URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check      Skip the check for updates check run before every command.
# @option --token <string>       your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
orb::process() {
    :;
}
# }}} circleci orb process

# {{{ circleci orb publish
# @cmd Publish an orb to the registry
# @flag -h --help              help for publish
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
# @arg orb!
orb::publish() {
    :;
}

# {{{{ circleci orb publish increment
# @cmd Increment a released version of an orb
# @flag -h --help              help for increment
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
# @arg namespace-orb <<namespace>/<orb>>
# @arg segment!
orb::publish::increment() {
    :;
}
# }}}} circleci orb publish increment

# {{{{ circleci orb publish promote
# @cmd Promote a development version of an orb to a semantic release
# @flag -h --help              help for promote
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg orb!
# @arg segment!
orb::publish::promote() {
    :;
}
# }}}} circleci orb publish promote
# }}} circleci orb publish

# {{{ circleci orb remove-from-category
# @cmd Remove an orb from a category
# @flag -h --help              help for remove-from-category
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace-orb <<namespace>/<orb>>
# @arg category-name[`_choice_orb_category`] <"<category-name>">
orb::remove-from-category() {
    :;
}
# }}} circleci orb remove-from-category

# {{{ circleci orb source
# @cmd Show the source of an orb
# @flag -h --help              help for source
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg orb!
orb::source() {
    :;
}
# }}} circleci orb source

# {{{ circleci orb unlist
# @cmd Disable or enable an orb's listing in the registry
# @flag -h --help              help for unlist
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace-orb <<namespace>/<orb>>
# @arg truefalse!
orb::unlist() {
    :;
}
# }}} circleci orb unlist

# {{{ circleci orb validate
# @cmd Validate an orb.yml
# @flag -h --help                help for validate
# @option --org-id <string>      organization id used when an orb depends on private orbs belonging to that org
# @option --org-slug <string>    organization slug (for example: github/example-org), used when an orb depends on private orb
# @option --host <string>        URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check      Skip the check for updates check run before every command.
# @option --token <string>       your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path!
orb::validate() {
    :;
}
# }}} circleci orb validate
# }} circleci orb

# {{ circleci policy
# @cmd Manage security policies
# @flag -h --help                       help for policy
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
policy() {
    :;
}

# {{{ circleci policy decide
# @cmd make a decision
# @option --context <string>              policy context for decision (default "config")
# @flag -h --help                         help for decide
# @option --input <file>                  path to input file
# @option --meta <string>                 decision metadata (json string)
# @option --metafile <file>               decision metadata file
# @flag --no-compile                      skip config compilation (evaluate policy against source config only)
# @option --owner-id <string>             the id of the policy's owner
# @option --pipeline-parameters <path>    YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file p
# @flag --strict                          return non-zero status code for decision resulting in HARD_FAIL
# @option --host <string>                 URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>      base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check               Skip the check for updates check run before every command.
# @option --token <string>                your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg policy_file_or_dir_path
policy::decide() {
    :;
}
# }}} circleci policy decide

# {{{ circleci policy diff
# @cmd Get diff between local and remote policy bundles
# @option --context <string>            policy context (default "config")
# @flag -h --help                       help for diff
# @option --owner-id <string>           the id of the policy's owner
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg policy_dir_path!
policy::diff() {
    :;
}
# }}} circleci policy diff

# {{{ circleci policy eval
# @cmd perform raw opa evaluation locally
# @option --context <string>              policy context for decision (default "config")
# @flag -h --help                         help for eval
# @option --input <file>                  path to input file
# @option --meta <string>                 decision metadata (json string)
# @option --metafile <file>               decision metadata file
# @flag --no-compile                      skip config compilation (evaluate policy against source config only)
# @option --owner-id <string>             the id of the policy's owner
# @option --pipeline-parameters <path>    YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file p
# @option --query <string>                policy decision query (default "data")
# @option --host <string>                 URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>      base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check               Skip the check for updates check run before every command.
# @option --token <string>                your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg policy_file_or_dir_path!
policy::eval_() {
    :;
}
# }}} circleci policy eval

# {{{ circleci policy fetch
# @cmd Fetch policy bundle (or a single policy)
# @option --context <string>            policy context (default "config")
# @flag -h --help                       help for fetch
# @option --owner-id <string>           the id of the policy's owner
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg policy_name
policy::fetch() {
    :;
}
# }}} circleci policy fetch

# {{{ circleci policy logs
# @cmd Get policy decision logs / Get decision log (or policy bundle) by decision ID
# @option --after <string>              filter decision logs triggered AFTER this datetime
# @option --before <string>             filter decision logs triggered BEFORE this datetime
# @option --branch <string>             filter decision logs based on branch name
# @option --context <string>            policy context (default "config")
# @flag -h --help                       help for logs
# @option --out <file>                  specify output file name
# @option --owner-id <string>           the id of the policy's owner
# @flag --policy-bundle                 get only the policy bundle for given decisionID
# @option --project-id <string>         filter decision logs based on project-id
# @option --status <string>             filter decision logs based on their status
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg decision_id
policy::logs() {
    :;
}
# }}} circleci policy logs

# {{{ circleci policy push
# @cmd push policy bundle
# @option --context <string>            policy context (default "config")
# @flag -h --help                       help for push
# @flag --no-prompt                     removes the prompt
# @option --owner-id <string>           the id of the policy's owner
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg policy_dir_path!
policy::push() {
    :;
}
# }}} circleci policy push

# {{{ circleci policy settings
# @cmd get/set policy decision settings (To read settings: run command without any settings flags)
# @option --context <string>            policy context for decision (default "config")
# @flag --enabled                       enable/disable policy decision evaluation in build pipeline
# @flag -h --help                       help for settings
# @option --owner-id <string>           the id of the policy's owner
# @option --host <string>               URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>    base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check             Skip the check for updates check run before every command.
# @option --token <string>              your token for using CircleCI, also CIRCLECI_CLI_TOKEN
policy::settings() {
    :;
}
# }}} circleci policy settings

# {{{ circleci policy test
# @cmd runs policy tests
# @flag --debug                            print test debug context.
# @option --format[json|junit] <string>    select desired format between json or junit
# @flag -h --help                          help for test
# @option --owner-id <string>              the id of the policy's owner
# @option --run <string>                   select which tests to run based on regular expression
# @flag -v --verbose                       print all tests instead of only failed tests
# @option --host <string>                  URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @option --policy-base-url <string>       base url for policy api (default "https://internal.circleci.com")
# @flag --skip-update-check                Skip the check for updates check run before every command.
# @option --token <string>                 your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg path
policy::test() {
    :;
}
# }}} circleci policy test
# }} circleci policy

# {{ circleci project
# @cmd Operate on projects
# @flag -h --help              help for project
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
project() {
    :;
}

# {{{ circleci project dlc
# @cmd Manage dlc for projects
# @flag -h --help              help for dlc
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
project::dlc() {
    :;
}

# {{{{ circleci project dlc purge
# @cmd Purge DLC for a project
# @flag -h --help              help for purge
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg project-name!
project::dlc::purge() {
    :;
}
# }}}} circleci project dlc purge
# }}} circleci project dlc

# {{{ circleci project secret
# @cmd Operate on environment variables of projects
# @flag -h --help              help for secret
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
project::secret() {
    :;
}

# {{{{ circleci project secret create
# @cmd Create an environment variable of a project.
# @option --env-value <string>    An environment variable value to be created.
# @flag -h --help                 help for create
# @option --host <string>         URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check       Skip the check for updates check run before every command.
# @option --token <string>        your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg project-name!
# @arg env-name!
project::secret::create() {
    :;
}
# }}}} circleci project secret create

# {{{{ circleci project secret list
# @cmd List all environment variables of a project
# @flag -h --help              help for list
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg vcs-type![github|bitbucket]
# @arg org-name!
# @arg project-name!
project::secret::list() {
    :;
}
# }}}} circleci project secret list
# }}} circleci project secret
# }} circleci project

# {{ circleci runner
# @cmd Operate on runners
# @flag -h --help              help for runner
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
runner() {
    :;
}

# {{{ circleci runner instance
# @cmd Operate on runner instances
# @flag -h --help              help for instance
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
runner::instance() {
    :;
}

# {{{{ circleci runner instance list
# @cmd List runner instances
# @alias ls
# @flag -h --help              help for list
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace-or-resource-class! <namespace or resource-class>
runner::instance::list() {
    :;
}
# }}}} circleci runner instance list
# }}} circleci runner instance

# {{{ circleci runner resource-class
# @cmd Operate on runner resource-classes
# @flag -h --help              help for resource-class
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
runner::resource-class() {
    :;
}

# {{{{ circleci runner resource-class create
# @cmd Create a resource-class
# @flag --generate-token       Generate a default token
# @flag -h --help              help for create
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg resource-class!
# @arg description!
runner::resource-class::create() {
    :;
}
# }}}} circleci runner resource-class create

# {{{{ circleci runner resource-class delete
# @cmd Delete a resource-class
# @alias rm
# @flag -f --force             Delete resource-class and any associated tokens
# @flag -h --help              help for delete
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg resource-class!
runner::resource-class::delete() {
    :;
}
# }}}} circleci runner resource-class delete

# {{{{ circleci runner resource-class list
# @cmd List resource-classes for a namespace
# @alias ls
# @flag -h --help              help for list
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg namespace!
runner::resource-class::list() {
    :;
}
# }}}} circleci runner resource-class list
# }}} circleci runner resource-class

# {{{ circleci runner token
# @cmd Operate on runner tokens
# @flag -h --help              help for token
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
runner::token() {
    :;
}

# {{{{ circleci runner token create
# @cmd Create a token for a resource-class
# @flag -h --help              help for create
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg resource-class!
# @arg nickname!
runner::token::create() {
    :;
}
# }}}} circleci runner token create

# {{{{ circleci runner token delete
# @cmd Delete a token
# @alias rm
# @flag -h --help              help for delete
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg token-id!
runner::token::delete() {
    :;
}
# }}}} circleci runner token delete

# {{{{ circleci runner token list
# @cmd List tokens for a resource-class
# @alias ls
# @flag -h --help              help for list
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
# @arg resource-class!
runner::token::list() {
    :;
}
# }}}} circleci runner token list
# }}} circleci runner token
# }} circleci runner

# {{ circleci setup
# @cmd Setup the CLI with your credentials
# @flag -h --help              help for setup
# @flag --no-prompt            Disable prompt to bypass interactive UI.
# @flag --skip-update-check    Skip the check for updates check run before every command.
setup() {
    :;
}
# }} circleci setup

# {{ circleci telemetry
# @cmd Configure telemetry preferences
# @flag -h --help              help for telemetry
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
telemetry() {
    :;
}

# {{{ circleci telemetry disabled
# @cmd
telemetry::disabled() {
    :;
}
# }}} circleci telemetry disabled

# {{{ circleci telemetry disable
# @cmd Make sure no telemetry events is sent to CircleCI servers
# @flag -h --help              help for disable
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
telemetry::disable() {
    :;
}
# }}} circleci telemetry disable

# {{{ circleci telemetry enable
# @cmd Allow telemetry events to be sent to CircleCI servers
# @flag -h --help              help for enable
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
telemetry::enable() {
    :;
}
# }}} circleci telemetry enable
# }} circleci telemetry

# {{ circleci update
# @cmd Update the tool to the latest version
# @flag --check                Check if there are any updates available without installing
# @flag -h --help              help for update
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
update() {
    :;
}
# }} circleci update

# {{ circleci version
# @cmd Display version information
# @flag -h --help              help for version
# @option --host <string>      URL to your CircleCI host, also CIRCLECI_CLI_HOST (default "https://circleci.com")
# @flag --skip-update-check    Skip the check for updates check run before every command.
# @option --token <string>     your token for using CircleCI, also CIRCLECI_CLI_TOKEN
version() {
    :;
}
# }} circleci version

_choice_orb_category() {
    circleci orb list-categories
}

command eval "$(argc --argc-eval "$0" "$@")"