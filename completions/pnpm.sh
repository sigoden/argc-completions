#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -r --recursive                Run the command for each project in the workspace.
# @option -C --dir <path>             Run as if pnpm was started in <path> instead of the current working directory.
# @flag -w --workspace-root           Run as if pnpm was started in the root of the workspace instead of the current working directory.
# @option --filter[`_choice_workspace`] <pattern>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @option --changed-files-ignore-pattern <pattern>  Allows to ignore changed files by glob patterns when filtering for changed projects since the specified commit/branch.
# @arg cmd[`_choice_script`]

# {{ pnpm add
# @cmd Installs a package and any packages that it depends on.
# @flag --color                         Controls colors in the output.
# @flag --no-color                      Controls colors in the output.
# @flag -E                              Install exact version
# @flag --save-exact                    Install exact version
# @flag --no-save-exact                 Install exact version
# @flag --save-workspace-protocol       Save packages from the workspace with a "workspace:" protocol.
# @flag --no-save-workspace-protocol    Save packages from the workspace with a "workspace:" protocol.
# @flag --aggregate-output              Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>                Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -g --global                     Install as a global package
# @flag --global-dir                    Specify a custom directory to store global packages
# @flag -h --help                       Output usage information
# @flag --ignore-scripts                Don't run lifecycle scripts
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --offline                       Trigger an error if any required dependencies are not available in local store
# @flag --prefer-offline                Skip staleness checks for cached data, but request missing data from the server
# @flag -r --recursive                  Run installation recursively in every package found in subdirectories or in every workspace package, when executed inside a workspace.
# @flag -D --save-dev                   Save package to your `devDependencies`
# @flag -O --save-optional              Save package to your `optionalDependencies`
# @flag --save-peer                     Save package to your `peerDependencies` and `devDependencies`
# @flag -P --save-prod                  Save package to your `dependencies`.
# @option --store-dir <dir>             The directory in which all the packages are saved on the disk
# @flag --stream                        Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                    Divert all output to stderr
# @option --virtual-store-dir <dir>     The directory with links to the store (default is node_modules/.pnpm).
# @flag --workspace                     Only adds the new dependency if it is found in the workspace
# @flag -w --workspace-root             Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>       Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>      Defines files related to tests.
# @arg name!
add() {
    :;
}
# }} pnpm add

# {{ pnpm import
# @cmd Generates a pnpm-lock.yaml from an npm package-lock.json (or npm-shrinkwrap.json) file
import() {
    :;
}
# }} pnpm import

# {{ pnpm install
# @cmd Install all dependencies for a project
# @alias i
# @flag --color                               Controls colors in the output.
# @flag --no-color                            Controls colors in the output.
# @flag --frozen-lockfile                     Don't generate a lockfile and fail if an update is needed.
# @flag --no-frozen-lockfile                  Don't generate a lockfile and fail if an update is needed.
# @flag --verify-store-integrity              If false, doesn't check whether packages in the store were mutated
# @flag --no-verify-store-integrity           If false, doesn't check whether packages in the store were mutated
# @flag --aggregate-output                    Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option --child-concurrency <number>        Controls the number of child processes run parallelly to build node modules
# @flag -D --dev                              Only `devDependencies` are installed regardless of the `NODE_ENV`
# @option -C --dir <dir>                      Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag --fix-lockfile                        Fix broken lockfile entries automatically
# @option --force[cpu|os|arch]                Force reinstall dependencies: refetch packages modified in store, recreate a lockfile and/or modules directory created by a non-compatible version of pnpm.
# @flag --global-dir                          Specify a custom directory to store global packages
# @flag -h --help                             Output usage information
# @option --hoist-pattern <pattern>           Hoist all dependencies matching the pattern to `node_modules/.pnpm/node_modules`.
# @flag --ignore-pnpmfile                     Disable pnpm hooks defined in .pnpmfile.cjs
# @flag --ignore-scripts                      Don't run lifecycle scripts
# @option --lockfile-dir <dir>                The directory in which the pnpm-lock.yaml of the package will be created.
# @flag --lockfile-only                       Dependencies are not downloaded.
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --merge-git-branch-lockfiles          Merge lockfiles were generated on git branch
# @option --modules-dir <dir>                 The directory in which dependencies will be installed (instead of node_modules)
# @option --network-concurrency <number>      Maximum number of concurrent network requests
# @flag --no-hoist                            Dependencies inside the modules directory will have access only to their listed dependencies
# @flag --no-lockfile                         Don't read or generate a `pnpm-lock.yaml` file
# @flag --no-optional                         `optionalDependencies` are not installed
# @flag --offline                             Trigger an error if any required dependencies are not available in local store
# @option --package-import-method[`_choice_pacakge_import_method`] <auto>  Import package method
# @flag --prefer-frozen-lockfile              If the available `pnpm-lock.yaml` satisfies the `package.json` then perform a headless installation
# @flag --prefer-offline                      Skip staleness checks for cached data, but request missing data from the server
# @flag -P --prod                             Packages in `devDependencies` won't be installed
# @option --public-hoist-pattern <pattern>    Hoist all dependencies matching the pattern to the root of the modules directory
# @flag -r --recursive                        Run installation recursively in every package found in subdirectories.
# @flag --resolution-only                     Re-runs resolution: useful for printing out peer dependency issues
# @flag --shamefully-hoist                    All the subdeps will be hoisted into the root node_modules.
# @flag --side-effects-cache                  Use or cache the results of (pre/post)install hooks
# @flag --side-effects-cache-readonly         Only use the side effects cache if present, do not create it for new packages
# @option --store-dir <dir>                   The directory in which all the packages are saved on the disk
# @flag --stream                              Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --strict-peer-dependencies            Fail on missing or invalid peer dependencies
# @flag --use-running-store-server            Only allows installation with a store server.
# @flag --use-stderr                          Divert all output to stderr
# @flag --use-store-server                    Starts a store server in the background.
# @option --virtual-store-dir <dir>           The directory with links to the store (default is node_modules/.pnpm).
# @flag -w --workspace-root                   Run the command on the root workspace project
# @option --reporter[`_choice_reporter`] <append-only>  Set reporter.
# @flag -s --silent                           No output is logged to the console, except fatal errors
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>             Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>            Defines files related to tests.
install() {
    :;
}
# }} pnpm install

# {{ pnpm it
# @cmd Runs a pnpm install followed immediately by a pnpm test
# @alias install-test
it() {
    :;
}
# }} pnpm it

# {{ pnpm ln
# @cmd Connect the local project to another one
# @alias link
# @flag --color                Controls colors in the output.
# @flag --no-color             Controls colors in the output.
# @flag --aggregate-output     Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>       Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -g --global            Link package to/from global node_modules
# @flag -h --help              Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --stream               Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr           Divert all output to stderr
# @flag -w --workspace-root    Run the command on the root workspace project
# @arg dir!
ln() {
    :;
}
# }} pnpm ln

# {{ pnpm prune
# @cmd Removes extraneous packages
# @flag --color                Controls colors in the output.
# @flag --no-color             Controls colors in the output.
# @flag --aggregate-output     Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>       Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help              Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --no-optional          Remove the packages specified in `optionalDependencies`
# @flag --prod                 Remove the packages specified in `devDependencies`
# @flag --stream               Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr           Divert all output to stderr
# @flag -w --workspace-root    Run the command on the root workspace project
prune() {
    :;
}
# }} pnpm prune

# {{ pnpm rb
# @cmd Rebuild a package
# @alias rebuild
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help                     Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --pending                     Rebuild packages that were not build during installation.
# @flag -r --recursive                Rebuild every package found in subdirectories or every workspace package, when executed inside a workspace.
# @option --store-dir <dir>           The directory in which all the packages are saved on the disk
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg*[`_choice_dependency`]
rb() {
    :;
}
# }} pnpm rb

# {{ pnpm rm
# @cmd Removes packages from node_modules and from the project's package.json
# @alias remove
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag --global-dir                  Specify a custom directory to store global packages
# @flag -h --help                     Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag -r --recursive                Remove from every package found in subdirectories or from every workspace package, when executed inside a workspace.
# @flag -D --save-dev                 Remove the dependency only from "devDependencies"
# @flag -O --save-optional            Remove the dependency only from "optionalDependencies"
# @flag -P --save-prod                Remove the dependency only from "dependencies"
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg-version*[`_choice_dependency`] <<pkg>[@<version>]>
rm() {
    :;
}
# }} pnpm rm

# {{ pnpm unlink
# @cmd Unlinks a package.
# @flag --color                Controls colors in the output.
# @flag --no-color             Controls colors in the output.
# @flag --aggregate-output     Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>       Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help              Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag -r --recursive         Unlink in every package found in subdirectories or in every workspace package, when executed inside a workspace.
# @flag --stream               Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr           Divert all output to stderr
# @flag -w --workspace-root    Run the command on the root workspace project
# @arg pkg[`_choice_dependency`]
unlink() {
    :;
}
# }} pnpm unlink

# {{ pnpm up
# @cmd Updates packages to their latest version based on the specified range
# @alias update
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option --depth <number>            How deep should levels of dependencies be inspected.
# @flag -D --dev                      Update packages only in "devDependencies"
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -g --global                   Update globally installed packages
# @flag --global-dir                  Specify a custom directory to store global packages
# @flag -h --help                     Output usage information
# @flag -i --interactive              Show outdated dependencies and select which ones to update
# @flag -L --latest                   Ignore version ranges in package.json
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --no-optional                 Don't update packages in "optionalDependencies"
# @flag -P --prod                     Update packages only in "dependencies" and "optionalDependencies"
# @flag -r --recursive                Update in every package found in subdirectories or every workspace package, when executed inside a workspace.
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag --workspace                   Tries to link all packages from the workspace.
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg*[`_choice_dependency`]
up() {
    :;
}
# }} pnpm up

# {{ pnpm audit
# @cmd Checks for known security issues with the installed packages
# @option --audit-level <severity>    Only print advisories with severity greater than or equal to one of the following: low|moderate|high|critical.
# @flag -D --dev                      Only audit "devDependencies"
# @flag --fix                         Add overrides to the package.json file in order to force non-vulnerable versions of the dependencies
# @flag --ignore-registry-errors      Use exit code 0 if the registry responds with an error.
# @flag --json                        Output audit report in JSON format
# @flag --no-optional                 Don't audit "optionalDependencies"
# @flag -P --prod                     Only audit "dependencies" and "optionalDependencies"
audit() {
    :;
}
# }} pnpm audit

# {{ pnpm licenses
# @cmd Check licenses in consumed packages
# @flag -D --dev                      Check only "devDependencies"
# @flag --json                        Show information in JSON format
# @flag --long                        Show more details (such as a link to the repo) are not displayed.
# @flag --no-optional                 Don't check "optionalDependencies"
# @flag -P --prod                     Check only "dependencies" and "optionalDependencies"
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg cmd[list]
licenses() {
    :;
}
# }} pnpm licenses

# {{ pnpm ls
# @cmd Print all the versions of packages that are installed, as well as their dependencies, in a tree-structure
# @alias list
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option --depth <number>            Max display depth of the dependency tree
# @flag -D --dev                      Display only the dependency graph for packages in `devDependencies`
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -g --global                   List packages in the global install prefix instead of in the current project
# @flag --global-dir                  Specify a custom directory to store global packages
# @flag -h --help                     Output usage information
# @flag --json                        Show information in JSON format
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --long                        Show extended information
# @flag --no-optional                 Don't display packages from `optionalDependencies`
# @flag --only-projects               Display only dependencies that are also projects within the workspace
# @flag --parseable                   Show parseable output instead of tree view
# @flag -P --prod                     Display only the dependency graph for packages in `dependencies` and `optionalDependencies`
# @flag -r --recursive                Perform command on every package in subdirectories or on every workspace package, when executed inside a workspace.
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg*[`_choice_dependency`]
ls() {
    :;
}
# }} pnpm ls

# {{ pnpm outdated
# @cmd Check for outdated packages
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @flag --compatible                  Print only versions that satisfy specs in package.json
# @flag -D --dev                      Check only "devDependencies"
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag --global-dir                  Specify a custom directory to store global packages
# @flag -h --help                     Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --long                        By default, details about the outdated packages (such as a link to the repo) are not displayed.
# @flag --no-optional                 Don't check "optionalDependencies"
# @flag --no-table                    Prints the outdated packages in a list.
# @flag -P --prod                     Check only "dependencies" and "optionalDependencies"
# @flag -r --recursive                Check for outdated dependencies in every package found in subdirectories or in every workspace package, when executed inside a workspace.
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg*[`_choice_dependency`]
outdated() {
    :;
}
# }} pnpm outdated

# {{ pnpm exec
# @cmd Executes a shell command in scope of a project
# @flag --parallel          Completely disregard concurrency and topological sorting, running a given script immediately in all matching packages with prefixed streaming output.
# @flag -r --recursive      Run the shell command in every package found in subdirectories or every workspace package, when executed inside a workspace.
# @flag --report-summary    Save the execution results of every package to "pnpm-exec-summary.json".
# @flag --resume-from       Command executed from given package
# @flag -c --shell-mode     If exist, runs file inside of a shell.
# @arg command[`_choice_bin`]
# @arg args*
exec() {
    :;
}
# }} pnpm exec

# {{ pnpm run
# @cmd Runs a defined package script
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help                     Output usage information
# @flag --if-present                  Avoid exiting with a non-zero exit code when the script is undefined
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --no-bail                     The command will exit with a 0 exit code even if the script fails
# @flag --parallel                    Completely disregard concurrency and topological sorting, running a given script immediately in all matching packages with prefixed streaming output.
# @flag -r --recursive                Run the defined package script in every package found in subdirectories or every workspace package, when executed inside a workspace.
# @flag --report-summary              Save the execution results of every package to "pnpm-exec-summary.json".
# @flag --reporter-hide-prefix        Hide project name prefix from output of running scripts.
# @flag --resume-from                 Command executed from given package
# @flag --sequential                  Run the specified scripts one by one
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg command[`_choice_script`]
# @arg args*
run() {
    :;
}
# }} pnpm run

# {{ pnpm start
# @cmd Runs an arbitrary command specified in the package's "start" property of its "scripts" object
start() {
    :;
}
# }} pnpm start

# {{ pnpm test
# @cmd Runs a package's "test" script, if one was provided
# @alias t
# @flag -r --recursive                Run the tests in every package found in subdirectories or every workspace package, when executed inside a workspace.
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg args*
test() {
    :;
}
# }} pnpm test

# {{ pnpm pack
# @cmd
# @option --pack-destination <dir>    Directory in which `pnpm pack` will save tarballs.
pack() {
    :;
}
# }} pnpm pack

# {{ pnpm publish
# @cmd Publishes a package to the registry
# @option --access <public|restricted>    Tells the registry whether this package should be published as public or restricted
# @flag --dry-run                         Does everything a publish would do except actually publishing to the registry
# @flag --force                           Packages are proceeded to be published even if their current version is already in the registry.
# @flag --ignore-scripts                  Ignores any publish related lifecycle scripts (prepublishOnly, postpublish, and the like)
# @flag --json                            Show information in JSON format
# @flag --no-git-checks                   Don't check if current branch is your publish branch, clean, and up to date
# @flag --otp                             When publishing packages that require two-factor authentication, this option can specify a one-time password
# @flag --publish-branch                  Sets branch name to publish.
# @flag -r --recursive                    Publish all packages from the workspace
# @flag --report-summary                  Save the list of the newly published packages to "pnpm-publish-summary.json".
# @option --tag <tag>                     Registers the published package with the given tag.
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>         Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>        Defines files related to tests.
# @arg tarball-dir <<tarball>|<dir>>
publish() {
    :;
}
# }} pnpm publish

# {{ pnpm root
# @cmd
# @flag -g --global    Print the global `node_modules` directory
root() {
    :;
}
# }} pnpm root

# {{ pnpm store
# @cmd Manage your store
store() {
    :;
}

# {{{ pnpm store add
# @cmd Adds new packages to the store.
# @arg pkg+
store::add() {
    :;
}
# }}} pnpm store add

# {{{ pnpm store path
# @cmd Returns the path to the active store directory.
store::path() {
    :;
}
# }}} pnpm store path

# {{{ pnpm store prune
# @cmd Removes unreferenced (extraneous, orphan) packages from the store.
store::prune() {
    :;
}
# }}} pnpm store prune

# {{{ pnpm store --force
# @cmd If there are alien directories in the store, this command removes them.
store::--force() {
    :;
}
# }}} pnpm store --force

# {{{ pnpm store status
# @cmd Checks for modified packages in the store.
store::status() {
    :;
}
# }}} pnpm store status
# }} pnpm store

# {{ pnpm fetch
# @cmd Fetch packages from a lockfile into virtual store, package manifest is ignored.
# @flag --color                Controls colors in the output.
# @flag --no-color             Controls colors in the output.
# @flag --aggregate-output     Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @flag -D --dev               Only development packages will be fetched
# @option -C --dir <dir>       Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help              Output usage information
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag -P --prod              Development packages will not be fetched
# @flag --stream               Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr           Divert all output to stderr
# @flag -w --workspace-root    Run the command on the root workspace project
fetch() {
    :;
}
# }} pnpm fetch

# {{ pnpm patch
# @cmd Prepare a package for patching.
# @flag --edit-dir           The package that needs to be modified will be extracted to this directory
# @flag --ignore-existing    Ignore existing patch files when patching
# @arg pkg-name-version <<pkg name>@<version>>
patch() {
    :;
}
# }} pnpm patch

# {{ pnpm patch-commit
# @cmd Generate a patch out of a directory.
# @flag --patches-dir    The generated patch file will be saved to this directory
# @arg patchdir!
patch-commit() {
    :;
}
# }} pnpm patch-commit

# {{ pnpm dedup
# @cmd Perform an install removing older dependencies in the lockfile if a newer version can be used.
dedup() {
    :;
}
# }} pnpm dedup

# {{ pnpm why
# @cmd Shows all packages that depend on the specified package.
# @flag --color                       Controls colors in the output.
# @flag --no-color                    Controls colors in the output.
# @flag --aggregate-output            Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @option --depth <number>            Max display depth of the dependency graph
# @flag -D --dev                      Display only the dependency graph for packages in `devDependencies`
# @option -C --dir <dir>              Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -g --global                   List packages in the global install prefix instead of in the current project
# @flag --global-dir                  Specify a custom directory to store global packages
# @flag -h --help                     Output usage information
# @flag --json                        Show information in JSON format
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @flag --long                        Show extended information
# @flag --no-optional                 Don't display packages from `optionalDependencies`
# @flag --parseable                   Show parseable output instead of tree view
# @flag -P --prod                     Display only the dependency graph for packages in `dependencies` and `optionalDependencies`
# @flag -r --recursive                Perform command on every package in subdirectories or on every workspace package, when executed inside a workspace.
# @flag --stream                      Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                  Divert all output to stderr
# @flag -w --workspace-root           Run the command on the root workspace project
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg pkg+[`_choice_dependency`]
why() {
    :;
}
# }} pnpm why

# {{ pnpm dlx
# @cmd Fetches a package from the registry without installing it as a dependency, hotloads it, and runs whatever default command binary it exposes.
# @flag --package          The package to install before running the command
# @flag -c --shell-mode    Runs the script inside of a shell.
# @option --reporter[`_choice_reporter`] <append-only>  Set reporter.
# @flag -s --silent        No output is logged to the console, except fatal errors
dlx() {
    :;
}
# }} pnpm dlx

# {{ pnpm create
# @cmd Create a project from a create-* or @foo/create-* starter kit.
# @arg name!
create() {
    :;
}
# }} pnpm create

# {{ pnpm env
# @cmd Manages the Node.js environment.
# @flag -g --global    Manages Node.js versions globally
# @flag --remote       List the remote versions of Node.js
env() {
    :;
}

# {{{ pnpm env add
# @cmd Installs the specified version(s) of Node.js without activating them as the current version.
# @arg pkg+
env::add() {
    :;
}
# }}} pnpm env add

# {{{ pnpm env ls
# @cmd List Node.js versions available locally or remotely
# @alias list
# @flag --remote    List the remote versions of Node.js
env::ls() {
    :;
}
# }}} pnpm env ls

# {{{ pnpm env rm
# @cmd Removes the specified version(s) of Node.js.
# @alias remove
# @flag -g --global    Manages Node.js versions globally
env::rm() {
    :;
}
# }}} pnpm env rm

# {{{ pnpm env use
# @cmd Installs the specified version of Node.js.
# @flag -g --global    Manages Node.js versions globally
env::use() {
    :;
}
# }}} pnpm env use
# }} pnpm env

# {{ pnpm server
# @cmd Manage a store server.
# @flag --color                             Controls colors in the output.
# @flag --no-color                          Controls colors in the output.
# @flag --lock
# @flag --no-lock
# @flag --verify-store-integrity            If false, doesn't check whether packages in the store were mutated
# @flag --no-verify-store-integrity         If false, doesn't check whether packages in the store were mutated
# @flag --aggregate-output                  Aggregate output from child processes that are run in parallel, and only print output when child process is finished.
# @flag --background                        Runs the server in the background
# @option -C --dir <dir>                    Change to directory <dir> (default: /home/sigo/w/argc-completions)
# @flag -h --help                           Output usage information
# @flag --ignore-stop-requests              Disallows stopping the server using `pnpm server stop`
# @flag --ignore-upload-requests            Disallows creating new side effect cache during install
# @option --loglevel[debug|info|warn|error|silent] <level>  What level of logs to report.
# @option --network-concurrency <number>    Maximum number of concurrent network requests
# @option --port <number>                   The port number to use, when TCP is used for communication
# @option --protocol[auto|tcp|ipc]          The communication protocol used by the server
# @option --store-dir <dir>                 The directory in which all the packages are saved on the disk
# @flag --stream                            Stream output from child processes immediately, prefixed with the originating package directory.
# @flag --use-stderr                        Divert all output to stderr
# @flag -w --workspace-root                 Run the command on the root workspace project
server() {
    :;
}

# {{{ pnpm server start
# @cmd Starts a service that does all interactions with the store.
server::start() {
    :;
}
# }}} pnpm server start

# {{{ pnpm server status
# @cmd Prints information about the running server
server::status() {
    :;
}
# }}} pnpm server status

# {{{ pnpm server stop
# @cmd Stops the store server
server::stop() {
    :;
}
# }}} pnpm server stop
# }} pnpm server

# {{ pnpm bin
# @cmd Prints the directory into which the executables of dependencies are linked.
# @flag -g --global    Print the global executables directory
bin() {
    :;
}
# }} pnpm bin

# {{ pnpm setup
# @cmd This command is used by the standalone installation scripts of pnpm.
# @flag -f --force    Override the PNPM_HOME env variable in case it already exists
setup() {
    :;
}
# }} pnpm setup

# {{ pnpm init
# @cmd Create a package.json file.
init() {
    :;
}
# }} pnpm init

# {{ pnpm deploy
# @cmd Deploy a package from a workspace.
# @flag -D --dev                      Only `devDependencies` are installed regardless of the `NODE_ENV`
# @flag --no-optional                 `optionalDependencies` are not installed
# @flag -P --prod                     Packages in `devDependencies` won't be installed
# @option --changed-files-ignore-pattern <pattern>  Defines files to ignore when filtering for changed projects since the specified commit/branch.
# @option --filter[`_choice_workspace`] <selector>  Filtering allows you to restrict commands to specific subsets of packages.
# @option --filter-prod <pattern>     Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
# @option --test-pattern <pattern>    Defines files related to tests.
# @arg deploy
# @arg target-directory! <target directory>
deploy() {
    :;
}
# }} pnpm deploy

# {{ pnpm docker
# @cmd Checks for known common issues with pnpm configuration.
docker() {
    :;
}
# }} pnpm docker

# {{ pnpm config
# @cmd Manage the configuration files.
# @flag -g --global                      Sets the configuration in the global config file
# @flag --json                           Show all the config settings in JSON format
# @option --location <project|global>    When set to "project", the .npmrc file at the nearest package.json will be used
config() {
    :;
}

# {{{ pnpm config delete
# @cmd Remove the config key from the config file
# @arg key![`_choice_config_key`]
config::delete() {
    :;
}
# }}} pnpm config delete

# {{{ pnpm config get
# @cmd Print the config value for the provided key
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} pnpm config get

# {{{ pnpm config list
# @cmd Show all the config settings
config::list() {
    :;
}
# }}} pnpm config list

# {{{ pnpm config set
# @cmd Set the config key to the value provided
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} pnpm config set
# }} pnpm config

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_workspace() {
    pnpm recursive list --json | yq '.[] | .name'
}

_choice_script() {
    _helper_apply_filter
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_choice_pacakge_import_method() {
    cat <<-'EOF'
auto	Clones/hardlinks or copies packages. The selected method depends from the file system"
clone	Clone (aka copy-on-write) packages from the store"
copy	Copy packages from the store"
hardlink	Hardlink packages from the store"
EOF
}

_choice_reporter() {
    cat <<-'EOF'
append-only	The output is always appended to the end. No cursor manipulations are performed"
default	The default reporter when the stdout is TTY"
ndjson	The most verbose reporter. Prints all logs in ndjson format"
silent	No output is logged to the console, except fatal errors"
EOF
}

_choice_dependency() {
    _helper_apply_filter
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_bin() {
    _helper_find_pkg_json_path
    if [[ -f "$pkg_json_path" ]]; then
        bin_dir="$(dirname "$pkg_json_path")/node_modules/.bin"
        if [[ -d "$bin_dir" ]]; then
            ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
        fi
    fi
}

_choice_config_key() {
    pnpm config list --json | yq 'keys | .[]'
}

_helper_apply_filter() {
    if [[ -n "$argc_filter" ]]; then
        local path = "$(pnpm recursive list --json | yq '.[] | select(.name == "'"$argc_filter"'") | .path')"
        if [[ -n "$path" ]]; then
            pkg_json_path="$(_argc_util_path_resolve -u "$path" package.json)"
        fi
    fi
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"