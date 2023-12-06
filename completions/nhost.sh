#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                      show help
# @option --project-name <value>       Project name (default: "argc-completions") [$NHOST_PROJECT_NAME]
# @flag -v --version                   print the version
# @option --data-folder <value>        Data folder to persist data (default: ".nhost/data/main") [$NHOST_DATA_FOLDER]
# @option --dot-nhost-folder <path>    Path to .nhost folder (default: ".nhost") [$NHOST_DOT_NHOST_FOLDER]
# @option --nhost-folder <path>        Path to nhost folder (default: "nhost") [$NHOST_NHOST_FOLDER]
# @option --root-folder <value>        Root folder of project (default: ".") [$NHOST_ROOT_FOLDER]

# {{ nhost config
# @cmd Perform config operations
# @flag -h --help    show help
config() {
    :;
}

# {{{ nhost config default
# @cmd Create default configuration and secrets
# @flag -h --help    show help
config::default() {
    :;
}
# }}} nhost config default

# {{{ nhost config example
# @cmd Shows an example config file
# @flag -h --help    show help
config::example() {
    :;
}
# }}} nhost config example

# {{{ nhost config pull
# @cmd Get cloud configuration
# @option --subdomain <value>    Pull this subdomain's configuration.
# @flag --yes                    Skip confirmation (default: false) [$NHOST_YES]
# @flag -h --help                show help
config::pull() {
    :;
}
# }}} nhost config pull

# {{{ nhost config show
# @cmd Shows configuration after resolving secrets
# @option --subdomain <value>    Show this subdomain's rendered configuration.
# @flag -h --help                show help
config::show() {
    :;
}
# }}} nhost config show

# {{{ nhost config validate
# @cmd Validate configuration
# @option --subdomain <value>    Validate this subdomain's configuration.
# @flag -h --help                show help
config::validate() {
    :;
}
# }}} nhost config validate

# {{{ nhost config edit
# @cmd Edit base configuration or an overlay
# @option --subdomain <value>    If specified, edit this subdomain's overlay, otherwise edit base configuation [$NHOST_SUBDOMAIN]
# @option --editor <value>       Editor to use (default: "vim") [$EDITOR]
# @flag -h --help                show help
config::edit() {
    :;
}
# }}} nhost config edit
# }} nhost config

# {{ nhost dev
# @cmd Operate local development environment
# @flag -h --help    show help
dev() {
    :;
}

# {{{ nhost dev compose
# @cmd docker compose wrapper, sets project name and compose file automatically
# @arg command~[`_choice_compose`]
dev::compose() {
    :;
}
# }}} nhost dev compose

# {{{ nhost dev hasura
# @cmd hasura-cli wrapper
# @arg command~[`_choice_hasura`]
dev::hasura() {
    :;
}
# }}} nhost dev hasura
# }} nhost dev

# {{ nhost up
# @cmd Start local development environment
# @option --http-port <value>              HTTP port to listen on (default: 443) [$NHOST_HTTP_PORT]
# @flag --disable-tls                      Disable TLS (default: false) [$NHOST_DISABLE_TLS]
# @option --postgres-port <value>          Postgres port to listen on (default: 5432) [$NHOST_POSTGRES_PORT]
# @flag --apply-seeds                      Apply seeds.
# @option --auth-port <value>              If specified, expose auth on this port.
# @option --storage-port <value>           If specified, expose storage on this port.
# @option --functions-port <value>         If specified, expose functions on this port.
# @option --hasura-port <value>            If specified, expose hasura on this port.
# @option --hasura-console-port <value>    If specified, expose hasura console on this port.
# @option --dashboard-version <value>      Dashboard version to use (default: "nhost/dashboard:0.20.28") [$NHOST_DASHBOARD_VERSION]
# @flag -h --help                          show help
up() {
    :;
}
# }} nhost up

# {{ nhost down
# @cmd Stop local development environment
# @flag --volumes    Remove volumes (default: false)
# @flag -h --help    show help
down() {
    :;
}
# }} nhost down

# {{ nhost logs
# @cmd Show logs from local development environment
# @flag --dry-run               Execute command in dry run mode
# @flag -f --follow             Follow log output.
# @flag --no-color              Produce monochrome output.
# @flag --no-log-prefix         Don't print prefix in logs.
# @option --since <string>      Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
# @option -n --tail <string>    Number of lines to show from the end of the logs for each container.
# @flag -t --timestamps         Show timestamps.
# @option --until <string>      Show logs before a timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
# @arg service*
logs() {
    :;
}
# }} nhost logs

# {{ nhost docker-credentials
# @cmd Perform docker-credentials operations
# @flag -h --help    show help
docker-credentials() {
    :;
}

# {{{ nhost docker-credentials configure
# @cmd Install credentials helper and configure docker so it can authenticate with Nhost's registry
# @option --docker-config <file>    Path to docker config file (default: "/home/sigo/.docker/config.json") [$DOCKER_CONFIG]
# @flag --no-interactive            Do not prompt for confirmation (default: false) [$NO_INTERACTIVE]
# @flag -h --help                   show help
docker-credentials::configure() {
    :;
}
# }}} nhost docker-credentials configure
# }} nhost docker-credentials

# {{ nhost init
# @cmd Initialize a new Nhost project
# @flag --remote     Initialize pulling configuration, migrations and metadata from the linked project (default: false) [$NHOST_REMOTE]
# @flag -h --help    show help
init() {
    :;
}
# }} nhost init

# {{ nhost list
# @cmd List remote apps
# @flag -h --help    show help
list() {
    :;
}
# }} nhost list

# {{ nhost link
# @cmd Link local app to a remote one
# @flag -h --help    show help
link() {
    :;
}
# }} nhost link

# {{ nhost run
# @cmd Perform operations on Nhost Run
# @flag -h --help    show help
run() {
    :;
}

# {{{ nhost run config-deploy
# @cmd Deploy service configuration
# @option --config <file>         Service configuration file [$NHOST_RUN_SERVICE_CONFIG]
# @option --service-id <value>    Service ID to update [$NHOST_RUN_SERVICE_ID]
# @flag -h --help                 show help
run::config-deploy() {
    :;
}
# }}} nhost run config-deploy

# {{{ nhost run config-edit-image
# @cmd Edits configuration file and sets the image
# @option --config <file>    Service configuration file [$NHOST_RUN_SERVICE_CONFIG]
# @option --image <value>    Image to use [$NHOST_RUN_SERVICE_IMAGE]
# @flag -h --help            show help
run::config-edit-image() {
    :;
}
# }}} nhost run config-edit-image

# {{{ nhost run config-pull
# @cmd Download service configuration
# @option --config <file>         Service configuration file [$NHOST_RUN_SERVICE_CONFIG]
# @option --service-id <value>    Service ID to update [$NHOST_RUN_SERVICE_ID]
# @flag -h --help                 show help
run::config-pull() {
    :;
}
# }}} nhost run config-pull

# {{{ nhost run config-validate
# @cmd Validates service configuration after resolving secrets (only validation against cloud project supported)
# @option --config <file>         Service configuration file [$NHOST_RUN_SERVICE_CONFIG]
# @option --service-id <value>    Service ID to update [$NHOST_RUN_SERVICE_ID]
# @flag -h --help                 show help
run::config-validate() {
    :;
}
# }}} nhost run config-validate

# {{{ nhost run config-example
# @cmd Shows an example config file
# @flag -h --help    show help
run::config-example() {
    :;
}
# }}} nhost run config-example
# }} nhost run

# {{ nhost secrets
# @cmd Manage secrets
# @flag -h --help    show help
secrets() {
    :;
}

# {{{ nhost secrets create
# @cmd Create secret in the cloud environment
# @option --subdomain <value>    Project's subdomain to operate on, defaults to linked project [$NHOST_SUBDOMAIN]
# @flag -h --help                show help
# @arg name
# @arg value
secrets::create() {
    :;
}
# }}} nhost secrets create

# {{{ nhost secrets delete
# @cmd Delete secret in the cloud environment
# @option --subdomain <value>    Project's subdomain to operate on, defaults to linked project [$NHOST_SUBDOMAIN]
# @flag -h --help                show help
# @arg name[`_choice_secret`]
secrets::delete() {
    :;
}
# }}} nhost secrets delete

# {{{ nhost secrets list
# @cmd List secrets in the cloud environment
# @option --subdomain <value>    Project's subdomain to operate on, defaults to linked project [$NHOST_SUBDOMAIN]
# @flag -h --help                show help
secrets::list() {
    :;
}
# }}} nhost secrets list

# {{{ nhost secrets update
# @cmd Update secret in the cloud environment
# @option --subdomain <value>    Project's subdomain to operate on, defaults to linked project [$NHOST_SUBDOMAIN]
# @flag -h --help                show help
# @arg name[`_choice_secret`]
# @arg value
secrets::update() {
    :;
}
# }}} nhost secrets update
# }} nhost secrets

# {{ nhost sw
# @cmd Perform software management operations
# @flag -h --help    show help
sw() {
    :;
}

# {{{ nhost sw uninstall
# @cmd Remove the installed CLI from system permanently
# @flag --force      Force uninstall without confirmation (default: false) [$NHOST_FORCE_UNINSTALL]
# @flag -h --help    show help
sw::uninstall() {
    :;
}
# }}} nhost sw uninstall

# {{{ nhost sw upgrade
# @cmd Upgrade the CLI to the latest version
# @flag -h --help    show help
sw::upgrade() {
    :;
}
# }}} nhost sw upgrade

# {{{ nhost sw version
# @cmd Show the current version of Nhost CLI you have installed
# @flag -h --help    show help
sw::version() {
    :;
}
# }}} nhost sw version
# }} nhost sw

# {{ nhost login
# @cmd Login to Nhost
# @option --email <value>       Email address [$NHOST_EMAIL]
# @option --password <value>    Password [$NHOST_PASSWORD]
# @option --pat <value>         Use this Personal Access Token instead of generating a new one with your email/password [$NHOST_PAT]
# @flag -h --help               show help
login() {
    :;
}
# }} nhost login

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_compose() {
    _argc_util_comp_subcommand 0 docker-compose
}

_choice_hasura() {
    _argc_util_comp_subcommand 0 hasura
}

_choice_secret() {
    nhost secrets list
}

command eval "$(argc --argc-eval "$0" "$@")"