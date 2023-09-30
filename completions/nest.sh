#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    Output the current version.
# @flag -h --help       Output usage information.

# {{ nest new
# @cmd Generate Nest application.
# @alias n
# @option --directory <directory>             Specify the destination directory
# @flag -d --dry-run                          Report actions that would be performed without writing out results.
# @flag -g --skip-git                         Skip git repository initialization.
# @flag -s --skip-install                     Skip package installation.
# @option -p --package-manager[npm|yarn|pnpm] <packageManager>  Specify package manager.
# @option -l --language[TypeScript|Javascript] <language>  Programming language to be used (TypeScript or JavaScript) (default: "TypeScript")
# @option -c --collection <collectionName>    Schematics collection to use (default: "@nestjs/schematics")
# @flag --strict                              Enables strict mode in TypeScript.
# @flag -h --help                             Output usage information.
# @arg name
new() {
    :;
}
# }} nest new

# {{ nest build
# @cmd Build Nest application.
# @option -c --config <path>                      Path to nest-cli configuration file.
# @option -p --path <path>                        Path to tsconfig file.
# @flag -w --watch                                Run in watch mode (live-reload).
# @option -b --builder[tsc|webpack|swc] <name>    Builder to be used.
# @flag --watchAssets                             Watch non-ts (e.g., .graphql) files mode.
# @flag --webpack                                 Use webpack for compilation (deprecated option, use --builder instead).
# @flag --type-check                              Enable type checking (when SWC is used).
# @option --webpackPath <path>                    Path to webpack configuration.
# @flag --tsc                                     Use typescript compiler for compilation.
# @flag --preserveWatchOutput                     Use "preserveWatchOutput" option when using tsc watch mode.
# @flag -h --help                                 Output usage information.
# @arg app[`_choice_project`]
build() {
    :;
}
# }} nest build

# {{ nest start
# @cmd Run Nest application.
# @option -c --config <path>                      Path to nest-cli configuration file.
# @option -p --path <path>                        Path to tsconfig file.
# @flag -w --watch                                Run in watch mode (live-reload).
# @option -b --builder[tsc|webpack|swc] <name>    Builder to be used.
# @flag --watchAssets                             Watch non-ts (e.g., .graphql) files mode.
# @option -d --debug <hostport>                   Run in debug mode (with --inspect flag).
# @flag --webpack                                 Use webpack for compilation (deprecated option, use --builder instead).
# @option --webpackPath <path>                    Path to webpack configuration.
# @flag --type-check                              Enable type checking (when SWC is used).
# @flag --tsc                                     Use typescript compiler for compilation.
# @option --sourceRoot <sourceRoot>               Points at the root of the source code for the single project in standard mode structures, or the default project in monorepo mode structures.
# @option --entryFile <entryFile>                 Path to the entry file where this command will work with.
# @option -e --exec <binary>                      Binary to run (default: "node").
# @flag --preserveWatchOutput                     Use "preserveWatchOutput" option when using tsc watch mode.
# @flag -h --help                                 Output usage information.
# @arg app[`_choice_project`]
start() {
    :;
}
# }} nest start

# {{ nest info
# @cmd Display Nest project details.
# @alias i
# @flag -h --help    Output usage information.
info() {
    :;
}
# }} nest info

# {{ nest add
# @cmd Adds support for an external library to your project.
# @flag -d --dry-run         Report actions that would be performed without writing out results.
# @flag -s --skip-install    Skip package installation.
# @option -p --project[`_choice_project`] <project>  Project in which to generate files.
# @flag -h --help            Output usage information.
# @arg library!
add() {
    :;
}
# }} nest add

# {{ nest generate
# @cmd Generate a Nest element.
# @alias g
# @flag -d --dry-run                          Report actions that would be taken without writing out results.
# @option -p --project[`_choice_project`] <project>  Project in which to generate files.
# @flag --flat                                Enforce flat structure of generated element.
# @flag --no-flat                             Enforce that directories are generated.
# @flag --spec                                Enforce spec files generation.
# @option --spec-file-suffix <suffix>         Use a custom suffix for spec files.
# @flag --skip-import                         Skip importing (default: false)
# @flag --no-spec                             Disable spec files generation.
# @option -c --collection <collectionName>    Schematics collection to use.
# @flag -h --help                             Output usage information.
# @arg schematic![`_choice_schematic`]
# @arg name
# @arg path
generate() {
    :;
}
# }} nest generate

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_project() {
    _helper_find_nest_cli_json_path
    if [[ -n "$nest_cli_json_path" ]]; then
        cat "$nest_cli_json_path" | yq '(.projects // {}) | keys | .[]'
    fi

}

_choice_schematic() {
    cat <<-'EOF'
application	Generate a new application workspace
class	Generate a new class
configuration	Generate a CLI configuration file
controller	Generate a controller declaration
decorator	Generate a custom decorator
filter	Generate a filter declaration
gateway	Generate a gateway declaration
guard	Generate a guard declaration
interceptor	Generate an interceptor declaration
interface	Generate an interface
library	Generate a new library within a monorepo
middleware	Generate a middleware declaration
module	Generate a module declaration
pipe	Generate a pipe declaration
provider	Generate a provider declaration
resolver	Generate a GraphQL resolver declaration
resource	Generate a new CRUD resource
service	Generate a service declaration
sub-app	Generate a new application within a monorepo
EOF
}

_helper_find_nest_cli_json_path() {
    nest_cli_json_path="$(_argc_util_path_search_parent nest-cli.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"