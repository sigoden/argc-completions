#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number

# {{ lerna add-caching
# @cmd Interactive prompt to generate task runner configuration
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
add-caching() {
    :;
}
# }} lerna add-caching

# {{ lerna changed
# @cmd List local packages that have changed since the last tagged release
# @alias updated
# @option --conventional-graduate <string>    Detect currently prereleased packages that would change to a non-prerelease version.
# @flag --force-conventional-graduate         Always include all packages by specified by --conventional-graduate whether or not they are a prerelease or have changes since the previous version.
# @option --force-publish[`_choice_package`] <string>  Always include targeted packages when detecting changed packages, skipping default logic.
# @option --ignore-changes* <file>            Ignore changes in files matched by glob(s) when detecting changed packages.
# @flag --include-merged-tags                 Include tags from merged branches when detecting changed packages.
# @flag --json                                Show information as a JSON array
# @flag --ndjson                              Show information as newline-delimited JSON
# @flag -a --all                              Show private packages that are normally hidden
# @flag -l --long                             Show extended information
# @flag -p --parseable                        Show parseable output instead of columnified view
# @flag --toposort                            Sort packages in topological order instead of lexical by directory
# @flag --graph                               Show dependency graph as a JSON-formatted adjacency list
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>              How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                       Fail if a cycle is detected among dependencies.
# @flag --no-progress                         Disable progress bars.
# @flag --no-sort                             Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>               Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                             Show help
# @flag -v --version                          Show version number
changed() {
    :;
}
# }} lerna changed

# {{ lerna clean
# @cmd Remove the node_modules directory from all packages
# @flag -y --yes                                  Skip all confirmation prompts
# @option --scope[`_choice_package`] <string>     Include only packages with names matching the given glob.
# @option --ignore[`_choice_package`] <string>    Exclude packages with names matching the given glob.
# @flag --no-private                              Exclude packages with { "private": true } in their package.json.
# @option --since <string>                        Only include packages that have been changed since the specified [ref].
# @flag --exclude-dependents                      Exclude all transitive dependents when running a command with --since, overriding the default "changed" algorithm.
# @flag --include-dependents                      Include all transitive dependents when running a command regardless of --scope, --ignore, or --since.
# @flag --include-dependencies                    Include all transitive dependencies when running a command regardless of --scope, --ignore, or --since.
# @flag --include-merged-tags                     Include tags from merged branches when running a command with --since.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
clean() {
    :;
}
# }} lerna clean

# {{ lerna create
# @cmd Create a new lerna-managed package
# @option --access[public|restricted] <string>    When using a scope, set publishConfig.access value
# @option --bin <string>                          Package has an executable.
# @option --description <string>                  Package description
# @option --dependencies* <string>                A list of package dependencies
# @flag --es-module                               Initialize a transpiled ES Module
# @option --homepage <path>                       The package homepage, defaulting to a subpath of the root pkg.homepage
# @option --keywords* <string>                    A list of package keywords
# @option --license <string>                      The desired package license (SPDX identifier)
# @flag --private                                 Make the new package private, never published to any external registry
# @option --registry <string>                     Configure the package's publishConfig.registry
# @option --tag <string>                          Configure the package's publishConfig.tag
# @flag -y --yes                                  Skip all prompts, accepting default values
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
# @arg name                                       The package name (including scope), which must be locally unique _and_ publicly available
# @arg loc                                        A custom package location, defaulting to the first configured package location
create() {
    :;
}
# }} lerna create

# {{ lerna diff
# @cmd Diff all packages or a single package since the last release
# @option --ignore-changes* <file>    Ignore changes in files matched by glob(s).
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>      How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles               Fail if a cycle is detected among dependencies.
# @flag --no-progress                 Disable progress bars.
# @flag --no-sort                     Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>       Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                     Show help
# @flag -v --version                  Show version number
# @arg pkgname[`_choice_package`]     An optional package name to filter the diff output
diff() {
    :;
}
# }} lerna diff

# {{ lerna exec
# @cmd Execute an arbitrary command in each package
# @flag --stream                                  Stream output with lines prefixed by originating package name.
# @flag --parallel                                Execute command with unlimited concurrency, streaming prefixed output.
# @flag --no-bail                                 Continue executing command despite non-zero exit in a given package.
# @flag --no-prefix                               Do not prefix streaming output.
# @flag --profile                                 Profile command executions and output performance profile to default location.
# @option --profile-location <file>               Output performance profile to custom location instead of default project root.
# @option --scope[`_choice_package`] <string>     Include only packages with names matching the given glob.
# @option --ignore[`_choice_package`] <string>    Exclude packages with names matching the given glob.
# @flag --no-private                              Exclude packages with { "private": true } in their package.json.
# @option --since <string>                        Only include packages that have been changed since the specified [ref].
# @flag --exclude-dependents                      Exclude all transitive dependents when running a command with --since, overriding the default "changed" algorithm.
# @flag --include-dependents                      Include all transitive dependents when running a command regardless of --scope, --ignore, or --since.
# @flag --include-dependencies                    Include all transitive dependencies when running a command regardless of --scope, --ignore, or --since.
# @flag --include-merged-tags                     Include tags from merged branches when running a command with --since.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
# @arg cmd[`_choice_cmd`]                         The command to execute.
# @arg args*                                      Positional arguments (not recognized by lerna) to send to command  [array] [default: []]
exec() {
    :;
}
# }} lerna exec

# {{ lerna import
# @cmd Import a package into the monorepo with commit history
# @flag --flatten                   Import each merge commit as a single change the merge introduced
# @option --dest <dir>              Import destination directory for the external git repository
# @flag --preserve-commit           Preserve original committer in addition to original author
# @flag -y --yes                    Skip all confirmation prompts
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
# @arg dir                          The path to an external git repository that contains an npm package
import() {
    :;
}
# }} lerna import

# {{ lerna info
# @cmd Prints debugging information about the local environment
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
info() {
    :;
}
# }} lerna info

# {{ lerna init
# @cmd Create a new Lerna repo or upgrade an existing repo to the current version of Lerna
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
# @flag --exact                     Specify lerna dependency version in package.json without a caret (^)
# @flag -i --independent            Version packages independently
# @option --packages* <string>      A glob pattern matching packages that should be included (instead of defaulting to the package manager's workspaces config)
# @flag --dryRun                    Preview the changes that will be made to the file system without actually modifying anything
# @flag --skipInstall               Skip installation of dependencies after initialization
init() {
    :;
}
# }} lerna init

# {{ lerna list
# @cmd List local packages
# @alias ls,la,ll
# @flag --json                                    Show information as a JSON array
# @flag --ndjson                                  Show information as newline-delimited JSON
# @flag -a --all                                  Show private packages that are normally hidden
# @flag -l --long                                 Show extended information
# @flag -p --parseable                            Show parseable output instead of columnified view
# @flag --toposort                                Sort packages in topological order instead of lexical by directory
# @flag --graph                                   Show dependency graph as a JSON-formatted adjacency list
# @option --scope[`_choice_package`] <string>     Include only packages with names matching the given glob.
# @option --ignore[`_choice_package`] <string>    Exclude packages with names matching the given glob.
# @flag --no-private                              Exclude packages with { "private": true } in their package.json.
# @option --since <string>                        Only include packages that have been changed since the specified [ref].
# @flag --exclude-dependents                      Exclude all transitive dependents when running a command with --since, overriding the default "changed" algorithm.
# @flag --include-dependents                      Include all transitive dependents when running a command regardless of --scope, --ignore, or --since.
# @flag --include-dependencies                    Include all transitive dependencies when running a command regardless of --scope, --ignore, or --since.
# @flag --include-merged-tags                     Include tags from merged branches when running a command with --since.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
list() {
    :;
}
# }} lerna list

# {{ lerna publish
# @cmd Publish packages in the current project
# @flag -c --canary                      Publish packages after every successful merge using the sha as part of the tag.
# @option --preid <string>               Specify the prerelease identifier when publishing a prerelease
# @option --contents <dir>               Subdirectory to publish.
# @option --dist-tag <string>            Publish packages with the specified npm dist-tag
# @option --legacy-auth <string>         Legacy Base64 Encoded username and password.
# @option --pre-dist-tag <string>        Publish prerelease packages with the specified npm dist-tag
# @option --git-head <string>            Explicit SHA to set as gitHead when packing tarballs, only allowed with 'from-package' positional.
# @option --graph-type[all|dependencies] <string>  Type of dependency to use when determining package hierarchy.
# @flag --ignore-prepublish              Disable deprecated 'prepublish' lifecycle script
# @flag --ignore-scripts                 Disable all lifecycle scripts
# @option --otp <string>                 Supply a one-time password for publishing with two-factor authentication.
# @option --registry <string>            Use the specified registry for all npm client operations.
# @flag --require-scripts                Execute ./scripts/prepublish.js and ./scripts/postpublish.js, relative to package root.
# @flag --no-git-reset                   Do not reset changes to working tree after publishing is complete.
# @flag --temp-tag                       Create a temporary tag while publishing.
# @flag --no-verify-access               Do not verify package read-write access for current npm user.
# @flag --verify-access                  Verify package read-write access for current npm user.
# @option --summary-file <file>          Generate a json summary report after all packages have been successfully published, you can pass an optional path for where to save the file.
# @option --include-private* <string>    Include specified private packages when publishing by temporarily removing the private property from the package manifest.
# @flag -y --yes                         Skip all confirmation prompts.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>         How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                  Fail if a cycle is detected among dependencies.
# @flag --no-progress                    Disable progress bars.
# @flag --no-sort                        Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>          Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                        Show help
# @flag -v --version                     Show version number
# @arg bump[`_choice_semver`]            Increment version(s) by explicit version _or_ semver keyword, 'major', 'minor', 'patch', 'premajor', 'preminor', 'prepatch', 'prerelease', 'from-git', or 'from-package'.
publish() {
    :;
}
# }} lerna publish

# {{ lerna repair
# @cmd Runs automated migrations to repair the state of a lerna repo
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
repair() {
    :;
}
# }} lerna repair

# {{ lerna run
# @cmd Run an npm script in each package that contains that script
# @option --npm-client[`_choice_npm_client`] <string>  Executable used to run scripts (npm, yarn, pnpm, ...).
# @flag --stream                                  Stream output with lines prefixed by package.
# @flag --parallel                                Run script with unlimited concurrency, streaming prefixed output.
# @flag --no-bail                                 Continue running script despite non-zero exit in a given package.
# @flag --no-prefix                               Do not prefix streaming output.
# @flag --profile                                 Profile script executions and output performance profile to default location.
# @option --profile-location <file>               Output performance profile to custom location instead of default project root.
# @flag --verbose                                 When useNx is not false, show verbose output from dependent tasks.
# @flag --load-env-files                          When useNx is not false, automatically load .env files
# @option --scope[`_choice_package`] <string>     Include only packages with names matching the given glob.
# @option --ignore[`_choice_package`] <string>    Exclude packages with names matching the given glob.
# @flag --no-private                              Exclude packages with { "private": true } in their package.json.
# @option --since <string>                        Only include packages that have been changed since the specified [ref].
# @flag --exclude-dependents                      Exclude all transitive dependents when running a command with --since, overriding the default "changed" algorithm.
# @flag --include-dependents                      Include all transitive dependents when running a command regardless of --scope, --ignore, or --since.
# @flag --include-dependencies                    Include all transitive dependencies when running a command regardless of --scope, --ignore, or --since.
# @flag --include-merged-tags                     Include tags from merged branches when running a command with --since.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
# @arg script[`_choice_all_script`]               The npm script to run.
run() {
    :;
}
# }} lerna run

# {{ lerna watch
# @cmd Runs a command whenever packages or their dependents change.
# @option --scope[`_choice_package`] <string>     Include only packages with names matching the given glob.
# @option --ignore[`_choice_package`] <string>    Exclude packages with names matching the given glob.
# @flag --no-private                              Exclude packages with { "private": true } in their package.json.
# @option --since <string>                        Only include packages that have been changed since the specified [ref].
# @flag --exclude-dependents                      Exclude all transitive dependents when running a command with --since, overriding the default "changed" algorithm.
# @flag --include-dependents                      Include all transitive dependents when running a command regardless of --scope, --ignore, or --since.
# @flag --include-dependencies                    Include all transitive dependencies when running a command regardless of --scope, --ignore, or --since.
# @flag --include-merged-tags                     Include tags from merged branches when running a command with --since.
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>                  How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles                           Fail if a cycle is detected among dependencies.
# @flag --no-progress                             Disable progress bars.
# @flag --no-sort                                 Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>                   Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                                 Show help
# @flag -v --version                              Show version number
# @flag --verbose                                 Run watch mode in verbose mode, where commands are logged before execution.
watch() {
    :;
}
# }} lerna watch

# {{ lerna version
# @cmd Bump version of packages changed since the last release
# @option --loglevel[`_choice_log_level`] <string>  What level of logs to report.
# @option --concurrency <number>    How many processes to use when lerna parallelizes tasks.
# @flag --reject-cycles             Fail if a cycle is detected among dependencies.
# @flag --no-progress               Disable progress bars.
# @flag --no-sort                   Do not sort packages topologically (dependencies before dependents).
# @option --max-buffer <number>     Set max-buffer (in bytes) for subcommand execution
# @flag -h --help                   Show help
# @flag -v --version                Show version number
# @arg bump
version() {
    :;
}
# }} lerna version

# {{ lerna add
# @cmd The "add" command was removed by default in v7, and is no longer maintained.
# @flag --help       Show help  [boolean]
# @flag --version    Show version number  [boolean]
add() {
    :;
}
# }} lerna add

# {{ lerna bootstrap
# @cmd The "bootstrap" command was removed by default in v7, and is no longer maintained.
# @flag --help       Show help  [boolean]
# @flag --version    Show version number  [boolean]
bootstrap() {
    :;
}
# }} lerna bootstrap

# {{ lerna link
# @cmd The "link" command was removed by default in v7, and is no longer maintained.
# @flag --help       Show help  [boolean]
# @flag --version    Show version number  [boolean]
link() {
    :;
}
# }} lerna link

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_log_level() {
    printf "%s\n" silent error warn success info verbose silly
}

_choice_package() {
    lerna ls 2>/dev/null
}

_choice_cmd() {
    _argc_util_parallel _choice_bin ::: _choice_all_script
}

_choice_semver() {
    printf "%s\n" major minor patch premajor preminor prepatch
}

_choice_npm_client() {
    printf "%s\n" npm yarn pnpm
}

_choice_all_script() {
    {
        lerna list -p | while read p; do
            cat $p/package.json
        done
    } | \
    yq -N --input-format json  '(.scripts // {}) | keys | .[]'
}

_choice_bin() {
    _helper_find_lerna_json_path
    if [[ -f "$lerna_json_path" ]]; then
        bin_dir="$(dirname "$lerna_json_path")/node_modules/.bin"
        if [[ -d "$bin_dir" ]]; then
            ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
        fi
    fi
}

_helper_find_lerna_json_path() {
    lerna_json_path="$(_argc_util_path_search_parent lerna.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"