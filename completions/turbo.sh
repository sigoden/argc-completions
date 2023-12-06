#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
# @option --cache-dir <CACHE_DIR>             Override the filesystem cache directory
# @option --cache-workers <CACHE_WORKERS>     Set the number of concurrent cache operations (default 10) [default: 10]
# @option --concurrency                       Limit the concurrency of task execution.
# @flag --continue                            Continue execution even if a task exits with an error or non-zero exit code.
# @option --dry-run[text|json] <DRY_RUN>
# @flag --single-package                      Run turbo in single-package mode
# @option -F --filter                         Use the given selector to specify package(s) to act as entry points.
# @option --force[true|false]                 Ignore the existing cache (to force execution) [env: TURBO_FORCE=]
# @option --framework-inference[true|false] <BOOL>  Specify whether or not to do framework inference for tasks [default: true]
# @option --global-deps <GLOBAL_DEPS>         Specify glob of global filesystem dependencies to be hashed.
# @option --graph                             Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html).
# @option --env-mode[infer|loose|strict] <ENV_MODE>  Environment variable mode.
# @option --ignore                            Files to ignore when calculating changed files (i.e.
# @flag --include-dependencies                Include the dependencies of tasks in execution
# @flag --no-cache                            Avoid saving task results to the cache.
# @flag --no-daemon                           Run without using turbo's daemon process
# @flag --no-deps                             Exclude dependent task consumers from execution
# @option --output-logs[full|none|hash-only|new-only|errors-only] <OUTPUT_LOGS>  Set type of process output logging.
# @option --log-order[auto|stream|grouped] <LOG_ORDER>  Set type of task output order.
# @flag --only                                Only executes the tasks specified, does not execute parent tasks
# @flag --parallel                            Execute all tasks in parallel
# @option --profile <PROFILE_FILE>            File to write turbo's performance profile output into.
# @option --remote-only[true|false] <BOOL>    Ignore the local filesystem cache for all tasks.
# @option --scope                             Specify package(s) to act as entry points for task execution.
# @option --since                             Limit/Set scope to changed packages since a mergebase.
# @option --summarize[true|false]             Generate a summary of the turbo run [env: TURBO_RUN_SUMMARY=]
# @option --log-prefix[auto|none|task] <LOG_PREFIX>  Use "none" to remove prefixes from task logs.
# @arg task*[`_choice_task`]

# {{ turbo bin
# @cmd Get the path to the Turbo binary
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
bin() {
    :;
}
# }} turbo bin

# {{ turbo completion
# @cmd Generate the autocompletion script for the specified shell
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
# @arg shell![bash|elvish|fish|powershell|zsh]
completion() {
    :;
}
# }} turbo completion

# {{ turbo daemon
# @cmd Runs the Turborepo background daemon
# @option --idle-time <IDLE_TIME>             Set the idle timeout for turbod [default: 4h0m0s]
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon() {
    :;
}

# {{{ turbo daemon restart
# @cmd Restarts the turbo daemon
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon::restart() {
    :;
}
# }}} turbo daemon restart

# {{{ turbo daemon start
# @cmd Ensures that the turbo daemon is running
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon::start() {
    :;
}
# }}} turbo daemon start

# {{{ turbo daemon status
# @cmd Reports the status of the turbo daemon
# @flag --json                                Pass --json to report status in JSON format
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon::status() {
    :;
}
# }}} turbo daemon status

# {{{ turbo daemon stop
# @cmd Stops the turbo daemon
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon::stop() {
    :;
}
# }}} turbo daemon stop

# {{{ turbo daemon clean
# @cmd Stops the turbo daemon if it is already running, and removes any stale daemon state
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
daemon::clean() {
    :;
}
# }}} turbo daemon clean
# }} turbo daemon

# {{ turbo generate
# @cmd Generate a new app / package
# @flag --version
# @option -c --config                         Generator configuration file
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option -r --root                           The root of your repository (default: directory with root turbo.json)
# @option -a --args*                          Answers passed directly to generator
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
# @arg generator_name                         The name of the generator to run
generate() {
    :;
}

# {{{ turbo generate workspace
# @cmd Add a new package or app to your project
# @option -n --name                           Name for the new workspace
# @flag --version
# @flag -b --empty                            Generate an empty workspace
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @option -c --copy                           Generate a workspace using an existing workspace as a template.
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @option -d --destination                    Where the new workspace should be created
# @flag --color                               Force color usage in the terminal
# @option -t --type                           The type of workspace to create
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option -r --root                           The root of your repository (default: directory with root turbo.json)
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option -p --example-path <EXAMPLE_PATH>    In a rare case, your GitHub URL might contain a branch name with a slash (e.g. bug/fix-1) and the path to the example (e.g. foo/bar).
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @flag --show-all-dependencies               Do not filter available dependencies by the workspace type
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
generate::workspace() {
    :;
}
# }}} turbo generate workspace

# {{{ turbo generate run
# @cmd
# @option -c --config                         Generator configuration file
# @flag --version
# @option -r --root                           The root of your repository (default: directory with root turbo.json)
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @option -a --args*                          Answers passed directly to generator
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
# @arg generator_name                         The name of the generator to run
generate::run() {
    :;
}
# }}} turbo generate run
# }} turbo generate

# {{ turbo link
# @cmd Link your local directory to a Vercel organization and enable remote caching
# @flag --no-gitignore                        Do not create or modify .gitignore (default false)
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @option --target[remote-cache|spaces]       Specify what should be linked (default "remote cache") [default: remote-cache]
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
link() {
    :;
}
# }} turbo link

# {{ turbo login
# @cmd Login to your Vercel account
# @option --sso-team <SSO_TEAM>
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
login() {
    :;
}
# }} turbo login

# {{ turbo logout
# @cmd Logout to your Vercel account
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
logout() {
    :;
}
# }} turbo logout

# {{ turbo prune
# @cmd Prepare a subset of your monorepo
# @flag --version
# @flag --docker
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --out-dir <OUTPUT_DIR>              [default: out]
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
# @arg scope*                                 Workspaces that should be included in the subset
prune() {
    :;
}
# }} turbo prune

# {{ turbo run
# @cmd Run tasks across projects in your monorepo
# @option --cache-dir <CACHE_DIR>             Override the filesystem cache directory
# @flag --version
# @option --cache-workers <CACHE_WORKERS>     Set the number of concurrent cache operations (default 10)
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @option --concurrency                       Limit the concurrency of task execution.
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --continue                            Continue execution even if a task exits with an error or non-zero exit code.
# @flag --color                               Force color usage in the terminal
# @option --dry-run[text|json] <DRY_RUN>
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @flag --single-package                      Run turbo in single-package mode
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option -F --filter                         Use the given selector to specify package(s) to act as entry points.
# @option --force[true|false]                 Ignore the existing cache (to force execution)
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --framework-inference[true|false] <BOOL>  Specify whether or not to do framework inference for tasks
# @option --login                             Override the login endpoint
# @option --global-deps <GLOBAL_DEPS>         Specify glob of global filesystem dependencies to be hashed.
# @flag --no-color                            Suppress color usage in the terminal
# @option --graph                             Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html).
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --env-mode[infer|loose|strict] <ENV_MODE>  Environment variable mode.
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --ignore                            Files to ignore when calculating changed files (i.e.
# @option --team                              Set the team slug for API calls
# @flag --include-dependencies                Include the dependencies of tasks in execution
# @option --token                             Set the auth token for API calls
# @flag --no-cache                            Avoid saving task results to the cache.
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @flag --no-daemon                           Run without using turbo's daemon process
# @option --verbosity <COUNT>                 Verbosity level
# @flag --no-deps                             Exclude dependent task consumers from execution
# @option --output-logs[full|none|hash-only|new-only|errors-only] <OUTPUT_LOGS>  Set type of process output logging.
# @option --log-order[auto|stream|grouped] <LOG_ORDER>  Set type of task output order.
# @flag --only                                Only executes the tasks specified, does not execute parent tasks
# @flag --parallel                            Execute all tasks in parallel
# @option --profile <PROFILE_FILE>            File to write turbo's performance profile output into.
# @option --remote-only[true|false] <BOOL>    Ignore the local filesystem cache for all tasks.
# @option --scope                             Specify package(s) to act as entry points for task execution.
# @option --since                             Limit/Set scope to changed packages since a mergebase.
# @option --summarize[true|false]             Generate a summary of the turbo run
# @option --log-prefix[auto|none|task] <LOG_PREFIX>  Use "none" to remove prefixes from task logs.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg task*[`_choice_task`]
run() {
    :;
}
# }} turbo run

# {{ turbo unlink
# @cmd Unlink the current directory from your Vercel organization and disable Remote Caching
# @option --target[remote-cache|spaces]       Specify what should be unlinked (default "remote cache") [default: remote-cache]
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cpuprofile <CPU_PROFILE_FILE>     Specify a file to save a cpu profile
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag -h --help                             Print help
unlink() {
    :;
}
# }} turbo unlink

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_task() {
    _helper_find_turbo_json_path
    if [[ -f "$turo_json_path" ]]; then
        cat "$turo_json_path" | yq '.pipeline | keys | .[]'
    fi
}

_helper_find_turbo_json_path() {
    if [[ -d "$argc_cwd" ]]; then
        cd "$argc_cwd"
    fi
    turo_json_path="$(_argc_util_path_search_parent turbo.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"