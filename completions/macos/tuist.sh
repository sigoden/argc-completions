#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help-env    Display subcommands to manage the environment tuist versions.
# @flag -h --help     Show help information.

# {{ tuist build
# @cmd Builds a project
# @flag --generate                              Force the generation of the project before building.
# @flag --clean                                 When passed, it cleans the project before building it
# @option -p --path <path>                      The path to the directory that contains the project to be built.
# @option -d --device <device>                  Build on a specific device.
# @option -o --os <os>                          Build with a specific version of the OS.
# @option -C --configuration <configuration>    The configuration to be used when building the scheme.
# @option --build-output-path <build-output-path>  The directory where build products will be copied to when the project is built.
# @flag -h --help                               Show help information.
# @arg scheme!                                  The scheme to be built.
build() {
    :;
}
# }} tuist build

# {{ tuist cache
# @cmd A set of utilities related to the caching of targets.
# @flag -h --help    Show help information.
cache() {
    :;
}

# {{{ tuist cache warm
# @cmd Warms the local and remote cache.
# @option -p --path <path>               The path to the directory that contains the project whose targets will be cached.
# @option -P --profile <profile>         The name of the profile to be used when warming up the cache.
# @flag -x --xcframeworks                When passed it caches the targets for simulator and device using xcframeworks.
# @option --destination <destination>    Output type of xcframeworks when --xcframeworks is passed (device/simulator) (default: 3)
# @flag --dependencies-only              If passed, the command doesn't cache the targets passed in the `--targets` argument, but only their dependencies
# @flag -h --help                        Show help information.
# @arg targets+                          A list of targets to cache.
cache::warm() {
    :;
}
# }}} tuist cache warm

# {{{ tuist cache print-hashes
# @cmd Print the hashes of the cacheable frameworks in the given project.
# @option -p --path <path>               The path to the directory that contains the project whose targets will be cached.
# @option -P --profile <profile>         The name of the profile to be used when warming up the cache.
# @flag -x --xcframeworks                When passed it caches the targets for simulator and device using xcframeworks.
# @option --destination <destination>    Output type of xcframeworks when --xcframeworks is passed (device/simulator) (default: 3)
# @flag -h --help                        Show help information.
cache::print-hashes() {
    :;
}
# }}} tuist cache print-hashes
# }} tuist cache

# {{ tuist clean
# @cmd Clean all the artifacts stored locally
# @option -p --path <path>    The path to the directory that contains the project that should be cleaned.
# @flag -h --help             Show help information.
# @arg clean-categories+[plugins|builds|tests|generatedAutomationProjects|projectDescriptionHelpers|manifests|dependencies]  The cache and artifact categories to be cleaned.
clean() {
    :;
}
# }} tuist clean

# {{ tuist dump
# @cmd Outputs the manifest as a JSON
# @option -p --path <path>    The path to the folder where the manifest is
# @flag -h --help             Show help information.
# @arg manifest!              The manifest to be dumped (default: project)
dump() {
    :;
}
# }} tuist dump

# {{ tuist edit
# @cmd Generates a temporary project to edit the project in the current directory
# @option -p --path <path>             The path to the directory whose project will be edited
# @flag -P --permanent                 It creates the project in the current directory or the one indicated by -p and doesn't block the process
# @flag -o --only-current-directory    It only includes the manifest in the current directory.
# @flag -h --help                      Show help information.
edit() {
    :;
}
# }} tuist edit

# {{ tuist fetch
# @cmd Fetches any remote content necessary to interact with the project.
# @option -p --path <path>    The path to the directory that contains the definition of the project.
# @flag -u --update           Instead of simple fetch, update external content when available.
# @flag -h --help             Show help information.
fetch() {
    :;
}
# }} tuist fetch

# {{ tuist generate
# @cmd Generates an Xcode workspace to start working on the project.
# @option -p --path <path>               The path to the directory that contains the definition of the project.
# @flag -n --no-open                     Don't open the project after generating it.
# @flag -x --xcframeworks                When passed it uses xcframeworks (simulator and device) from the cache instead of frameworks (only simulator).
# @option --destination <destination>    Type of cached xcframeworks to use when --xcframeworks is passed (device/simulator) (default: 3)
# @option -P --profile <profile>         The name of the cache profile to be used when focusing on the target.
# @flag --no-cache                       Ignore cached targets, and use their sources instead.
# @option --skip-cache <skip-cache>      A list of targets which will not use cached binaries when using default `sources` list.
# @flag -h --help                        Show help information.
# @arg sources+                          A list of targets to focus on.
generate() {
    :;
}
# }} tuist generate

# {{ tuist graph
# @cmd Generates a graph from the workspace or project in the current directory
# @flag -t --skip-test-targets              Skip Test targets during graph rendering.
# @flag -d --skip-external-dependencies     Skip external dependencies.
# @option -l --platform[ios|macos|tvos|watchos] <platform>  A platform to filter.
# @option -f --format <format>              Available formats: dot, json, png, svg (default: png)
# @flag -n --no-open                        Don't open the file after generating it.
# @option -a --algorithm <algorithm>        Available formats: dot, neato, twopi, circo, fdp, sfdp, patchwork (default: dot)
# @option -p --path <path>                  The path to the directory that contains the project whose targets will be cached.
# @option -o --output-path <output-path>    The path where the graph will be generated.
# @flag -h --help                           Show help information.
# @arg targets+                             A list of targets to filter.
graph() {
    :;
}
# }} tuist graph

# {{ tuist init
# @cmd Bootstraps a project
# @option --platform <platform>       The platform (ios, tvos, visionos, watchos or macos) the product will be for (Default: ios)
# @option -n --name <name>            The name of the project.
# @option -t --template <template>    The name of the template to use (you can list available templates with tuist scaffold list)
# @option -p --path <path>            The path to the folder where the project will be generated (Default: Current directory)
# @flag -h --help                     Show help information.
init() {
    :;
}
# }} tuist init

# {{ tuist cloud
# @cmd A set of commands to interact with the cloud.
# @flag -h --help    Show help information.
cloud() {
    :;
}

# {{{ tuist cloud auth
# @cmd Authenticates the user for using Cloud
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
cloud::auth() {
    :;
}
# }}} tuist cloud auth

# {{{ tuist cloud session
# @cmd Prints the current Cloud session
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
cloud::session() {
    :;
}
# }}} tuist cloud session

# {{{ tuist cloud logout
# @cmd Removes an existing Cloud session.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
cloud::logout() {
    :;
}
# }}} tuist cloud logout

# {{{ tuist cloud init
# @cmd Creates a new tuist cloud project.
# @option -o --organization <organization>    Organization to initialize the Cloud project with.
# @option --server-url <server-url>           URL to the cloud server.
# @option -p --path <path>                    The path to the Tuist Cloud project.
# @flag -h --help                             Show help information.
# @arg name!                                  The name of the project to create.
cloud::init() {
    :;
}
# }}} tuist cloud init

# {{{ tuist cloud clean
# @cmd Cleans the remote cache.
# @option -p --path <path>    The path to the Tuist Cloud project.
# @flag -h --help             Show help information.
cloud::clean() {
    :;
}
# }}} tuist cloud clean

# {{{ tuist cloud project
# @cmd A set of commands to manage your cloud projects.
# @flag -h --help    Show help information.
cloud::project() {
    :;
}

# {{{{ tuist cloud project create
# @cmd Create a new project.
# @option -o --organization <organization>    Organization to create the project with.
# @option --server-url <server-url>           URL to the cloud server.
# @flag -h --help                             Show help information.
# @arg name!                                  The name of the project to create.
cloud::project::create() {
    :;
}
# }}}} tuist cloud project create

# {{{{ tuist cloud project list
# @cmd List projects you have access to.
# @flag --json                         The output in JSON format.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
cloud::project::list() {
    :;
}
# }}}} tuist cloud project list

# {{{{ tuist cloud project delete
# @cmd Delete a Cloud project.
# @option -o --organization <organization>    The organization that the project belongs to.
# @option --server-url <server-url>           URL to the cloud server.
# @flag -h --help                             Show help information.
# @arg project!                               The project to delete.
cloud::project::delete() {
    :;
}
# }}}} tuist cloud project delete

# {{{{ tuist cloud project token
# @cmd Get a project token.
# @option -o --organization-name <organization-name>  Organization of the project.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg project-name!                   The name of the project to get the token for.
cloud::project::token() {
    :;
}
# }}}} tuist cloud project token
# }}} tuist cloud project

# {{{ tuist cloud organization
# @cmd A set of commands to manage your Cloud organizations.
# @flag -h --help    Show help information.
cloud::organization() {
    :;
}

# {{{{ tuist cloud organization create
# @cmd Create a new organization.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to create.
cloud::organization::create() {
    :;
}
# }}}} tuist cloud organization create

# {{{{ tuist cloud organization list
# @cmd List your organizations.
# @flag --json                         The output in JSON format.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
cloud::organization::list() {
    :;
}
# }}}} tuist cloud organization list

# {{{{ tuist cloud organization delete
# @cmd Delete a new organization.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to delete.
cloud::organization::delete() {
    :;
}
# }}}} tuist cloud organization delete

# {{{{ tuist cloud organization show
# @cmd Show information about the specified organization.
# @flag --json                         The output in JSON format.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to show.
cloud::organization::show() {
    :;
}
# }}}} tuist cloud organization show

# {{{{ tuist cloud organization invite
# @cmd Invite a new member to your organization.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to invite the user to.
# @arg email!                          The email of the user to invite.
cloud::organization::invite() {
    :;
}
# }}}} tuist cloud organization invite

# {{{{ tuist cloud organization remove
# @cmd A set of commands to remove members or cancel pending invitations.
# @flag -h --help    Show help information.
cloud::organization::remove() {
    :;
}

# {{{{{ tuist cloud organization remove invite
# @cmd Cancel pending invitation.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to cancel the invitation for.
# @arg email!                          The email of the user to cancel the invitation for.
cloud::organization::remove::invite() {
    :;
}
# }}}}} tuist cloud organization remove invite

# {{{{{ tuist cloud organization remove member
# @cmd Remove a member from your organization.
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization to remove the organization member from.
# @arg username!                       The username of the member you want to remove from the organization.
cloud::organization::remove::member() {
    :;
}
# }}}}} tuist cloud organization remove member
# }}}} tuist cloud organization remove

# {{{{ tuist cloud organization update
# @cmd A set of commands to update the organization.
# @flag -h --help    Show help information.
cloud::organization::update() {
    :;
}

# {{{{{ tuist cloud organization update member
# @cmd Update a member from your organization.
# @option --role <role>                The new member role
# @option --server-url <server-url>    URL to the cloud server.
# @flag -h --help                      Show help information.
# @arg organization-name!              The name of the organization for which you want to update the member for.
# @arg username!                       The username of the member you want to update.
cloud::organization::update::member() {
    :;
}
# }}}}} tuist cloud organization update member
# }}}} tuist cloud organization update
# }}} tuist cloud organization
# }} tuist cloud

# {{ tuist migration
# @cmd A set of utilities to assist in the migration of Xcode projects to Tuist.
# @flag -h --help    Show help information.
migration() {
    :;
}

# {{{ tuist migration settings-to-xcconfig
# @cmd It extracts the build settings from a project or a target into an xcconfig file.
# @option -p --xcodeproj-path <xcodeproj-path>    The path to the Xcode project
# @option -x --xcconfig-path <xcconfig-path>      The path to the .xcconfig file where build settings will be extracted.
# @option -t --target <target>                    The name of the target whose build settings will be extracted.
# @flag -h --help                                 Show help information.
# @arg xcodeproj-path!
# @arg xcconfig-path!
migration::settings-to-xcconfig() {
    :;
}
# }}} tuist migration settings-to-xcconfig

# {{{ tuist migration check-empty-settings
# @cmd It checks if the build settings of a project or target are empty.
# @option -p --xcodeproj-path <xcodeproj-path>    The path to the Xcode project
# @option -t --target <target>                    The name of the target whose build settings will be checked.
# @flag -h --help                                 Show help information.
# @arg xcodeproj-path!
migration::check-empty-settings() {
    :;
}
# }}} tuist migration check-empty-settings

# {{{ tuist migration list-targets
# @cmd It lists the targets of a project sorted by number of dependencies.
# @option -p --xcodeproj-path <xcodeproj-path>    The path to the Xcode project
# @flag -h --help                                 Show help information.
# @arg xcodeproj-path!
migration::list-targets() {
    :;
}
# }}} tuist migration list-targets
# }} tuist migration

# {{ tuist plugin
# @cmd A set of commands for plugin's management.
# @flag -h --help    Show help information.
plugin() {
    :;
}

# {{{ tuist plugin archive
# @cmd Archives a plugin into a NameOfPlugin.tuist-plugin.zip.
# @option -p --path <path>    The path to the directory that contains the definition of the plugin.
# @flag -h --help             Show help information.
plugin::archive() {
    :;
}
# }}} tuist plugin archive

# {{{ tuist plugin build
# @cmd Builds a plugin.
# @option -c --configuration <configuration>    Choose configuration (default: debug).
# @option -p --path <path>                      The path to the directory that contains the definition of the plugin.
# @flag --build-tests                           Build both source and test targets.
# @flag --show-bin-path                         Print the binary output path.
# @option --targets <targets>                   Build the specified targets.
# @option --products <products>                 Build the specified products.
# @flag -h --help                               Show help information.
plugin::build() {
    :;
}
# }}} tuist plugin build

# {{{ tuist plugin run
# @cmd Runs a plugin.
# @option -c --configuration <configuration>    Choose configuration (default: debug).
# @option -p --path <path>                      The path to the directory that contains the definition of the plugin.
# @flag --build-tests                           Build both source and test targets.
# @flag --skip-build                            Skip building the plugin.
# @flag -h --help                               Show help information.
# @arg task!                                    The plugin task to run.
# @arg arguments+                               The arguments to pass to the plugin task.
plugin::run() {
    :;
}
# }}} tuist plugin run

# {{{ tuist plugin test
# @cmd Tests a plugin.
# @option -c --configuration <configuration>    Choose configuration (default: debug).
# @option -p --path <path>                      The path to the directory that contains the definition of the plugin.
# @flag --build-tests                           Build both source and test targets.
# @option --test-products <test-products>       Test the specified products.
# @flag -h --help                               Show help information.
plugin::test() {
    :;
}
# }}} tuist plugin test
# }} tuist plugin

# {{ tuist run
# @cmd Runs a scheme or target in the project
# @flag --generate                              Force the generation of the project before running.
# @flag --clean                                 When passed, it cleans the project before running.
# @option -p --path <path>                      The path to the directory that contains the project with the target or scheme to be run.
# @option -C --configuration <configuration>    The configuration to be used when building the scheme.
# @option --device <device>                     The simulator device name to run the target or scheme on.
# @option -o --os <os>                          The OS version of the simulator.
# @flag -h --help                               Show help information.
# @arg scheme!                                  The scheme to be run.
# @arg arguments+                               The arguments to pass to the runnable target during execution.
run() {
    :;
}
# }} tuist run

# {{ tuist scaffold
# @cmd Generates new project based on a template
# @flag --json                The output in JSON format
# @option -p --path <path>    The path to the folder where the template will be generated (Default: Current directory)
# @flag -h --help             Show help information.
# @arg template!              Name of template you want to use
scaffold() {
    :;
}

# {{{ tuist scaffold list
# @cmd Lists available scaffold templates
scaffold::list() {
    :;
}
# }}} tuist scaffold list
# }} tuist scaffold

# {{ tuist signing
# @cmd A set of commands for signing-related operations
# @flag -h --help    Show help information.
signing() {
    :;
}

# {{{ tuist signing encrypt
# @cmd Encrypts all files in Tuist/Signing directory
# @option -p --path <path>    The path to the folder containing the certificates you would like to encrypt
# @flag -h --help             Show help information.
signing::encrypt() {
    :;
}
# }}} tuist signing encrypt

# {{{ tuist signing decrypt
# @cmd Decrypts all files in Tuist/Signing directory
# @option -p --path <path>    The path to the folder containing the encrypted certificates
# @flag -h --help             Show help information.
signing::decrypt() {
    :;
}
# }}} tuist signing decrypt
# }} tuist signing

# {{ tuist test
# @cmd Tests a project
# @flag -c --clean                              When passed, it cleans the project before testing it.
# @option -p --path <path>                      The path to the directory that contains the project to be tested.
# @option -d --device <device>                  Test on a specific device.
# @option -o --os <os>                          Test with a specific version of the OS.
# @option -C --configuration <configuration>    The configuration to be used when testing the scheme.
# @flag --skip-ui-tests                         When passed, it skips testing UI Tests targets.
# @option -T --result-bundle-path <result-bundle-path>  Path where test result bundle will be saved.
# @option --retry-count <retry-count>           Tests will retry <number> of times until success.
# @option --test-plan <test-plan>               The test plan to run.
# @option --test-targets <test-targets>         The list of test identifiers you want to test.
# @option --skip-test-targets <skip-test-targets>  The list of test identifiers you want to skip testing.
# @option --filter-configurations <filter-configurations>  The list of configurations you want to test.
# @option --skip-configurations <skip-configurations>  The list of configurations you want to skip testing.
# @flag -h --help                               Show help information.
# @arg scheme!                                  The scheme to be tested.
test() {
    :;
}
# }} tuist test

# {{ tuist version
# @cmd Outputs the current version of tuist
# @flag -h --help    Show help information.
version() {
    :;
}
# }} tuist version

command eval "$(argc --argc-eval "$0" "$@")"