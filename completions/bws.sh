#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @flag -V --version                          Print version

# {{ bws config
# @cmd Configure the CLI
# @flag -d --delete
# @option -o --output[json|yaml|env|table|tsv|none]  Output format
# @option -c --color[no|yes|auto]             Use colors in the output
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use
# @option -p --profile                        Profile to use from the config file
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file
# @flag -h --help                             Print help (see a summary with '-h')
# @arg name[server-base|server-api|server-identity|state-file-dir]
# @arg value
config() {
    :;
}
# }} bws config

# {{ bws completions
# @cmd Generate shell completion files
# @option -o --output[json|yaml|env|table|tsv|none]  Output format
# @option -c --color[no|yes|auto]             Use colors in the output
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use
# @option -p --profile                        Profile to use from the config file
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file
# @flag -h --help                             Print help (see a summary with '-h')
# @arg shell[bash|elvish|fish|powershell|zsh]
completions() {
    :;
}
# }} bws completions

# {{ bws project
# @cmd Commands available on Projects
# @option -o --output[json|yaml|env|table|tsv|none]  Output format
# @option -c --color[no|yes|auto]             Use colors in the output
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use
# @option -p --profile                        Profile to use from the config file
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file
# @flag -h --help                             Print help (see a summary with '-h')
project() {
    :;
}

# {{{ bws project create
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg name!
project::create() {
    :;
}
# }}} bws project create

# {{{ bws project delete
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg project_ids*
project::delete() {
    :;
}
# }}} bws project delete

# {{{ bws project edit
# @cmd
# @option --name
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg project_id![`_choice_project_id`]
project::edit() {
    :;
}
# }}} bws project edit

# {{{ bws project get
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg project_id![`_choice_project_id`]
project::get() {
    :;
}
# }}} bws project get

# {{{ bws project list
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
project::list() {
    :;
}
# }}} bws project list
# }} bws project

# {{ bws secret
# @cmd Commands available on Secrets
# @option -o --output[json|yaml|env|table|tsv|none]  Output format
# @option -c --color[no|yes|auto]             Use colors in the output
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use
# @option -p --profile                        Profile to use from the config file
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file
# @flag -h --help                             Print help (see a summary with '-h')
secret() {
    :;
}

# {{{ bws secret create
# @cmd
# @option --note                              An optional note to add to the secret
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg key!
# @arg value!
# @arg project_id![`_choice_project_id`]      The ID of the project this secret will be added to
secret::create() {
    :;
}
# }}} bws secret create

# {{{ bws secret delete
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg secret_ids*
secret::delete() {
    :;
}
# }}} bws secret delete

# {{{ bws secret edit
# @cmd
# @option --key
# @option --value
# @option --note
# @option --project-id <PROJECT_ID>
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg secret_id![`_choice_secret_id`]
secret::edit() {
    :;
}
# }}} bws secret edit

# {{{ bws secret get
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg secret_id![`_choice_secret_id`]
secret::get() {
    :;
}
# }}} bws secret get

# {{{ bws secret list
# @cmd
# @option -o --output[json|yaml|env|table|tsv|none]  Output format [default: json]
# @option -c --color[no|yes|auto]             Use colors in the output [default: auto]
# @option -t --access-token <ACCESS_TOKEN>    Specify access token for the machine account [env: BWS_ACCESS_TOKEN]
# @option -f --config-file <CONFIG_FILE>      [default: ~/.bws/config] Config file to use [env: BWS_CONFIG_FILE=]
# @option -p --profile                        Profile to use from the config file [env: BWS_PROFILE=]
# @option -u --server-url <SERVER_URL>        Override the server URL from the config file [env: BWS_SERVER_URL=]
# @flag -h --help                             Print help
# @arg project_id[`_choice_project_id`]
secret::list() {
    :;
}
# }}} bws secret list
# }} bws secret

_choice_project_id() {
    bws project list --output json | yq '.[] | .id + "	" + .name'
}

_choice_secret_id() {
    bws secret list --output json | yq '.[] | .id + "	" + .key'
}

command eval "$(argc --argc-eval "$0" "$@")"