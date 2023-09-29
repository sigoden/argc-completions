#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Show help for a command

# {{ amplify init
# @cmd Initialize a new Amplify project
# @flag -y --yes                          Skip all interactive prompts by selecting default options
# @flag --amplify                         Basic information of the project
# @flag --frontend                        Information for the project's frontend application
# @flag --envName                         Name of the environment for the Amplify project
# @flag --debug                           Run the CLI in debug mode
# @flag --providers                       Configuration settings for provider plugins
# @flag --categories                      Configuration settings for resources in the given categories
# @flag --app                             Specify a GitHub repository from which to create an Amplify project
# @option --permissions-boundary <ARN>    Specify an IAM permissions boundary for the roles created during init
init() {
    :;
}
# }} amplify init

# {{ amplify configure
# @cmd Configure the CLI to work with your AWS profile
# @flag --usage-data-on               Turn on usage data sharing.
# @flag --usage-data-off              Turn off usage data sharing.
# @flag --share-project-config-on     Turn on non-sensitive project configurations sharing on failures.
# @flag --share-project-config-off    Turn off non-sensitive project configurations sharing on failures.
configure() {
    :;
}

# {{{ amplify configure project
# @cmd Configure the attributes of your project
# @flag -y --yes       Skip all interactive prompts by selecting default options
# @flag --debug        Run the CLI in debug mode
# @flag --amplify      Basic information of the project
# @flag --frontend     Information for the project's frontend application
# @flag --providers    Configuration settings for provider plugins
configure::project() {
    :;
}
# }}} amplify configure project

# {{{ amplify configure hosting
# @cmd Configure hosting resources for your Amplify project
configure::hosting() {
    :;
}
# }}} amplify configure hosting

# {{{ amplify configure codegen
# @cmd Configure GraphQL codegen for your Amplify project
configure::codegen() {
    :;
}
# }}} amplify configure codegen
# }} amplify configure

# {{ amplify push
# @cmd Provisions cloud resources with the latest local changes
# @flag --codegen     Configuration for GraphQL codegen
# @flag --debug       Run the CLI in debug mode
# @flag -f --force    Pushes all resources regardless of update status and bypasses all guardrails
# @flag -y --yes      Skip all interactive prompts by selecting default options
# @flag --allow-destructive-graphql-schema-updates  Pushes schema changes that require removal or replacement of underlying tables
push() {
    :;
}
# }} amplify push

# {{ amplify pull
# @cmd Fetch upstream backend changes from the cloud and updates the local environment
# @option --appId <app-id>        The unique identifier for the Amplify project
# @option --envName <env-name>    Name of the environment for the Amplify project
# @flag --debug                   Run the CLI in debug mode
# @flag -y --yes                  Skip all interactive prompts by selecting default options
# @flag --restore                 Overwrite your local backend changes with configurations from the cloud
# @flag --amplify                 Basic information of the project
# @flag --frontend                Information for the project's frontend application
# @flag --providers               Configuration settings for provider plugins
pull() {
    :;
}
# }} amplify pull

# {{ amplify env
# @cmd Displays and manages environment related information for your Amplify project
env() {
    :;
}

# {{{ amplify env add
# @cmd Adds a new environment to your Amplify Project
# @flag -y --yes                  Skip all interactive prompts by selecting default options
# @option --envName <env-name>    Specify environment name
env::add() {
    :;
}
# }}} amplify env add

# {{{ amplify env checkout
# @cmd Moves your environment to the environment specified in the command
env::checkout() {
    :;
}
# }}} amplify env checkout

# {{{ amplify env get
# @cmd Displays and manages environment related information for your Amplify project
# @option --name <env-name>    Specify name
# @flag --json                 Get environment information in JSON format
env::get() {
    :;
}
# }}} amplify env get

# {{{ amplify env import
# @cmd Imports an existing Amplify project environment stack to your local backend
# @option --name <env-name>              Specify name
# @option --config <provider-configs>    Specify configuration file
# @option --awsInfo <aws-configs>        Specify AWS account info
env::import() {
    :;
}
# }}} amplify env import

# {{{ amplify env list
# @cmd Displays a list of all the environments in your Amplify project
# @flag --details    List environment details
# @flag --json       List environment details in JSON format
env::list() {
    :;
}
# }}} amplify env list

# {{{ amplify env pull
# @cmd Pulls your environment with the current cloud environment
# @flag -y --yes     Skip all interactive prompts by selecting default options
# @flag --restore    Overwrite your local backend with that of the specified environment
env::pull() {
    :;
}
# }}} amplify env pull

# {{{ amplify env remove
# @cmd Removes an environment from the Amplify project
# @flag -y --yes                  Skip all interactive prompts by selecting default options
# @option --envName <env-name>    Specify environment name
env::remove() {
    :;
}
# }}} amplify env remove

# {{{ amplify env update
# @cmd Update the environment configuration
# @option --permissions-boundary <IAM Policy ARN>  Set a permissions boundary
env::update() {
    :;
}
# }}} amplify env update
# }} amplify env

# {{ amplify add
# @cmd Adds a resource for an Amplify category in your local backend
add() {
    :;
}
# }} amplify add

# {{ amplify status
# @cmd Shows the state of local resources not yet pushed to the cloud
# @flag -v --verbose    Shows verbose details, including cloudformation differences
status() {
    :;
}

# {{{ amplify status notifications
# @cmd Lists the enabled/disabled statuses of the available notification channels
status::notifications() {
    :;
}
# }}} amplify status notifications

# {{{ amplify status api
# @cmd Displays the current status of your API
# @flag -acm    Displays the access control matrix
status::api() {
    :;
}
# }}} amplify status api

# {{{ amplify status auth
# @cmd Displays the current status of your auth resource
status::auth() {
    :;
}
# }}} amplify status auth

# {{{ amplify status custom
# @cmd Displays the current status of your custom resource
status::custom() {
    :;
}
# }}} amplify status custom

# {{{ amplify status storage
# @cmd Displays the current status of your storage resource
status::storage() {
    :;
}
# }}} amplify status storage

# {{{ amplify status analytics
# @cmd Displays the current status of your analytics resource
status::analytics() {
    :;
}
# }}} amplify status analytics

# {{{ amplify status function
# @cmd Displays the current status of your function resource
status::function_() {
    :;
}
# }}} amplify status function

# {{{ amplify status hosting
# @cmd Displays the current status of your hosting
status::hosting() {
    :;
}
# }}} amplify status hosting

# {{{ amplify status interactions
# @cmd Displays the current status of your interactions resource
status::interactions() {
    :;
}
# }}} amplify status interactions

# {{{ amplify status predictions
# @cmd Displays the current status of your predictions resource
status::predictions() {
    :;
}
# }}} amplify status predictions
# }} amplify status

# {{ amplify plugin
# @cmd Configure Amplify plugins
plugin() {
    :;
}

# {{{ amplify plugin init
# @cmd Scaffolds a skeleton Amplify CLI plugin
plugin::init() {
    :;
}
# }}} amplify plugin init

# {{{ amplify plugin configure
# @cmd Configures Amplify CLI plugin options
plugin::configure() {
    :;
}
# }}} amplify plugin configure

# {{{ amplify plugin list
# @cmd Lists general plugin information
plugin::list() {
    :;
}
# }}} amplify plugin list

# {{{ amplify plugin scan
# @cmd Explicitly starts a scan/search for new and existing plugins
plugin::scan() {
    :;
}
# }}} amplify plugin scan

# {{{ amplify plugin add
# @cmd Explicitly adds a plugin for the Amplify CLI to use
plugin::add() {
    :;
}
# }}} amplify plugin add

# {{{ amplify plugin remove
# @cmd Explicitly removes a plugin from the Amplify CLI
plugin::remove() {
    :;
}
# }}} amplify plugin remove

# {{{ amplify plugin verify
# @cmd Verifies if a plugin package/directory is a valid Amplify CLI plugin
plugin::verify() {
    :;
}
# }}} amplify plugin verify
# }} amplify plugin

# {{ amplify update
# @cmd Update resource for an Amplify category in your local backend
update() {
    :;
}
# }} amplify update

# {{ amplify publish
# @cmd Executes amplify push and hosts the frontend app
# @flag -y --yes                     Automatically accept publish prompt
# @flag --codegen                    Configuration for GraphQL codegen
# @flag -f --force                   Pushes all resources regardless of update status and bypasses all guardrails
# @flag --allow-destructive-graphql-schema-updates  Pushes schema changes that require removal or replacement of underlying tables
# @flag -c --invalidateCloudFront    Send an invalidation request to the Amazon CloudFront service
publish() {
    :;
}
# }} amplify publish

# {{ amplify remove
# @cmd Removes a resource for an Amplify category in your local backend
remove() {
    :;
}
# }} amplify remove

# {{ amplify console
# @cmd Opens the web console for the selected cloud resource
console() {
    :;
}
# }} amplify console

# {{ amplify delete
# @cmd Delete the Amplify project
# @flag -y --yes      Skip all interactive prompts by selecting default options
# @flag -f --force    Skip all interactive prompts by selecting default options
delete() {
    :;
}
# }} amplify delete

# {{ amplify upgrade
# @cmd Download and install the latest version of the Amplify CLI
upgrade() {
    :;
}
# }} amplify upgrade

# {{ amplify import
# @cmd Imports existing resources to your local backend
# @flag --headless    Headless JSON payload (see https://docs.amplify.aws/cli/usage/headless)
import() {
    :;
}

# {{{ amplify import auth
# @cmd Imports an existing auth resource to your local backend
import::auth() {
    :;
}
# }}} amplify import auth

# {{{ amplify import env
# @cmd Imports an existing Amplify project environment stack to your local backend
# @flag --name       Name of the environment to import
# @flag --config     Path to the environment configuration file
# @flag --awsInfo    Path to the environment AWS configuration file
import::env() {
    :;
}
# }}} amplify import env

# {{{ amplify import storage
# @cmd Imports an existing storage resource to your local backend
import::storage() {
    :;
}
# }}} amplify import storage
# }} amplify import

# {{ amplify override
# @cmd Override Amplify-generated resources with Cloud Development Kit (CDK)
override() {
    :;
}

# {{{ amplify override api
# @cmd Override Amplify-generated GraphQL API resources
override::api() {
    :;
}
# }}} amplify override api

# {{{ amplify override auth
# @cmd Override Amplify-generated auth resources
override::auth() {
    :;
}

# {{{{ amplify override auth add
# @cmd Adds an auth resource to your local backend
override::auth::add() {
    :;
}
# }}}} amplify override auth add

# {{{{ amplify override auth import
# @cmd Imports an existing auth resource to your local backend
override::auth::import() {
    :;
}
# }}}} amplify override auth import

# {{{{ amplify override auth push
# @cmd Provisions only auth cloud resources with the latest local developments
override::auth::push() {
    :;
}
# }}}} amplify override auth push

# {{{{ amplify override auth remove
# @cmd Removes auth resources from your local backend
override::auth::remove() {
    :;
}
# }}}} amplify override auth remove

# {{{{ amplify override auth update
# @cmd Updates the auth resource from your local backend
override::auth::update() {
    :;
}
# }}}} amplify override auth update

# {{{{ amplify override auth console
# @cmd Opens the web console for the auth category
override::auth::console() {
    :;
}
# }}}} amplify override auth console
# }}} amplify override auth

# {{{ amplify override storage
# @cmd Override Amplify-generated storage resources
override::storage() {
    :;
}
# }}} amplify override storage

# {{{ amplify override project
# @cmd override Amplify-generated project-level resources, such as IAM roles
override::project() {
    :;
}
# }}} amplify override project
# }} amplify override

# {{ amplify diagnose
# @cmd Capture non-sensitive Amplify backend metadata for debugging purposes
# @flag --send-report      Share non-sensitive project configurations of your Amplify backend with the Amplify team
# @flag --auto-send-off    Opt out of sharing your project configurations with Amplify on failures
# @flag --auto-send-on     Opt in to sharing your project configurations with Amplify on failures
diagnose() {
    :;
}
# }} amplify diagnose

# {{ amplify logout
# @cmd Logs out of Amplify Studio
# @option --appId <appId>    Specify app ID
logout() {
    :;
}
# }} amplify logout

# {{ amplify export
# @cmd Export Amplify CLI-generated backend as a Cloud Development Kit (CDK) stack
# @option --out <path>    Specify the output path, where this is typically the path to your CDK project
export() {
    :;
}
# }} amplify export

# {{ amplify uninstall
# @cmd Uninstall the Amplify CLI
uninstall() {
    :;
}
# }} amplify uninstall

# {{ amplify serve
# @cmd Executes amplify push, and then test run the client-side application locally
serve() {
    :;
}
# }} amplify serve

# {{ amplify mock
# @cmd Run mock server for testing categories locally
mock() {
    :;
}

# {{{ amplify mock api
# @cmd Run mock server for testing API locally
mock::api() {
    :;
}
# }}} amplify mock api

# {{{ amplify mock storage
# @cmd Run mock server for testing storage locally
mock::storage() {
    :;
}
# }}} amplify mock storage

# {{{ amplify mock function
# @cmd Run mock server for testing functions locally
# @option --event <path-to-json-file>      Specified JSON file as the event to pass to the Lambda handler
# @option --timeout <number-of-seconds>    Override the default 10-second function response timeout
mock::function_() {
    :;
}
# }}} amplify mock function
# }} amplify mock

# {{ amplify codegen
# @cmd Generates GraphQL statements and type annotations
codegen() {
    :;
}
# }} amplify codegen

# {{ amplify api
# @cmd Enable an easy and secure solution to access backend data
api() {
    :;
}
# }} amplify api

# {{ amplify storage
# @cmd Enable a mechanism for managing user content
storage() {
    :;
}

# {{{ amplify storage add
# @cmd Adds a storage resource to your local backend
storage::add() {
    :;
}
# }}} amplify storage add

# {{{ amplify storage import
# @cmd Import an existing storage resource to your local backend
storage::import() {
    :;
}
# }}} amplify storage import

# {{{ amplify storage update
# @cmd Update a storage resource
storage::update() {
    :;
}
# }}} amplify storage update

# {{{ amplify storage push
# @cmd Provisions storage cloud resources with the latest local developments
storage::push() {
    :;
}
# }}} amplify storage push

# {{{ amplify storage remove
# @cmd Removes storage resource from your local backend
storage::remove() {
    :;
}
# }}} amplify storage remove

# {{{ amplify storage override
# @cmd Generates 'overrides.ts' for overriding storage resources
storage::override() {
    :;
}
# }}} amplify storage override

# {{{ amplify storage console
# @cmd Opens the web console for the storage category
storage::console() {
    :;
}
# }}} amplify storage console
# }} amplify storage

# {{ amplify notifications
# @cmd Configure notifications for your Amplify project
notifications() {
    :;
}
# }} amplify notifications

# {{ amplify auth
# @cmd Enable sign-in, sign-up, and sign-out for your app
auth() {
    :;
}

# {{{ amplify auth add
# @cmd Adds an auth resource to your local backend
auth::add() {
    :;
}
# }}} amplify auth add

# {{{ amplify auth import
# @cmd Imports an existing auth resource to your local backend
auth::import() {
    :;
}
# }}} amplify auth import

# {{{ amplify auth push
# @cmd Provisions only auth cloud resources with the latest local developments
auth::push() {
    :;
}
# }}} amplify auth push

# {{{ amplify auth remove
# @cmd Removes auth resources from your local backend
auth::remove() {
    :;
}
# }}} amplify auth remove

# {{{ amplify auth update
# @cmd Updates the auth resource from your local backend
auth::update() {
    :;
}
# }}} amplify auth update

# {{{ amplify auth console
# @cmd Opens the web console for the auth category
auth::console() {
    :;
}
# }}} amplify auth console
# }} amplify auth

# {{ amplify geo
# @cmd Configure geo resources for your Amplify project
geo() {
    :;
}

# {{{ amplify geo add
# @cmd Takes you through a CLI flow to add a geo resource to your local backend
geo::add() {
    :;
}
# }}} amplify geo add

# {{{ amplify geo update
# @cmd Takes you through steps in the CLI to update a geo resource
geo::update() {
    :;
}
# }}} amplify geo update

# {{{ amplify geo push
# @cmd Provisions only geo cloud resources with the latest local developments
geo::push() {
    :;
}
# }}} amplify geo push

# {{{ amplify geo remove
# @cmd Removes geo resource from your local backend
geo::remove() {
    :;
}
# }}} amplify geo remove

# {{{ amplify geo console
# @cmd Opens the web console for the geo category
geo::console() {
    :;
}
# }}} amplify geo console
# }} amplify geo

# {{ amplify analytics
# @cmd Add analytics resources to your Amplify project
analytics() {
    :;
}
# }} amplify analytics

# {{ amplify function
# @cmd Configure function resources for your Amplify project
function_() {
    :;
}
# }} amplify function

# {{ amplify hosting
# @cmd Configure hosting resources for your Amplify project
hosting() {
    :;
}
# }} amplify hosting

# {{ amplify interactions
# @cmd Configure interactions resources for your Amplify project
interactions() {
    :;
}

# {{{ amplify interactions add
# @cmd Adds a interactions resources to your local backend
interactions::add() {
    :;
}
# }}} amplify interactions add

# {{{ amplify interactions update
# @cmd Takes you through a CLI flow to update an interactions resource
interactions::update() {
    :;
}
# }}} amplify interactions update

# {{{ amplify interactions push
# @cmd Provisions only interactions cloud resources with the latest local developments
interactions::push() {
    :;
}
# }}} amplify interactions push

# {{{ amplify interactions remove
# @cmd Removes interactions resources from your local backend
interactions::remove() {
    :;
}
# }}} amplify interactions remove
# }} amplify interactions

# {{ amplify predictions
# @cmd Configure predictions resources for your Amplify project
predictions() {
    :;
}

# {{{ amplify predictions add
# @cmd Takes you through a CLI flow to add a predictions resource to your local backend
predictions::add() {
    :;
}
# }}} amplify predictions add

# {{{ amplify predictions remove
# @cmd Removes predictions resource from your local backend
predictions::remove() {
    :;
}
# }}} amplify predictions remove

# {{{ amplify predictions update
# @cmd Takes you through steps in the CLI to update an predictions resource
predictions::update() {
    :;
}
# }}} amplify predictions update

# {{{ amplify predictions console
# @cmd Opens a web console to view your predictions resource
predictions::console() {
    :;
}
# }}} amplify predictions console

# {{{ amplify predictions push
# @cmd Provisions cloud resources with the latest local changes
predictions::push() {
    :;
}
# }}} amplify predictions push
# }} amplify predictions

# {{ amplify build
# @cmd Builds all resources in the project
build() {
    :;
}
# }} amplify build

command eval "$(argc --argc-eval "$0" "$@")"