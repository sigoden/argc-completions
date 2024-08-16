#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version
# @flag --skip-infer                             Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                     Disable the turbo update notification
# @option --api                                  Override the endpoint for API calls
# @flag --color                                  Force color usage in the terminal
# @option --cwd <CWD_DIR>                        The directory in which to run turbo
# @option --heap <HEAP_FILE>                     Specify a file to save a pprof heap profile
# @option --ui                                   Specify whether to use the streaming UI or TUI
# @option --login                                Override the login endpoint
# @flag --no-color                               Suppress color usage in the terminal
# @flag --preflight                              When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>       Set a timeout for all HTTP requests
# @option --team                                 Set the team slug for API calls
# @option --token                                Set the auth token for API calls
# @option --trace <TRACE_FILE>                   Specify a file to save a pprof trace
# @option --verbosity <COUNT>                    Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                                Print help (see a summary with '-h')
# @option --cache-workers <CACHE_WORKERS>        Set the number of concurrent cache operations (default 10)
# @option --dry-run[text|json] <DRY_RUN>
# @option --graph                                Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html, .mermaid, .dot).
# @flag --no-cache                               Avoid saving task results to the cache.
# @flag --daemon                                 Force turbo to either use or not use the local daemon.
# @flag --no-daemon                              Force turbo to either use or not use the local daemon.
# @option --profile <PROFILE_FILE>               File to write turbo's performance profile output into.
# @option --anon-profile <ANON_PROFILE>          File to write turbo's performance profile output into.
# @option --remote-cache-read-only[true|false] <BOOL>  Treat remote cache as read only
# @option --summarize[true|false]                Generate a summary of the turbo run
# @flag --parallel                               Execute all tasks in parallel
# @option --cache-dir <CACHE_DIR>                Override the filesystem cache directory
# @option --concurrency                          Limit the concurrency of task execution.
# @flag --continue                               Continue execution even if a task exits with an error or non-zero exit code.
# @flag --single-package                         Run turbo in single-package mode
# @option --force[true|false]                    Ignore the existing cache (to force execution)
# @option --framework-inference[true|false] <BOOL>  Specify whether or not to do framework inference for tasks
# @option --global-deps <GLOBAL_DEPS>            Specify glob of global filesystem dependencies to be hashed.
# @option --env-mode[loose|strict] <ENV_MODE>    Environment variable mode.
# @option -F --filter                            Use the given selector to specify package(s) to act as entry points.
# @flag --affected                               Run only tasks that are affected by changes between the current branch and `main`
# @option --output-logs[full|none|hash-only|new-only|errors-only] <OUTPUT_LOGS>  Set type of process output logging.
# @option --log-order[auto|stream|grouped] <LOG_ORDER>  Set type of task output order.
# @flag --only                                   Only executes the tasks specified, does not execute parent tasks
# @option --remote-only[true|false] <BOOL>       Ignore the local filesystem cache for all tasks.
# @option --log-prefix[auto|none|task] <LOG_PREFIX>  Use "none" to remove prefixes from task logs.
# @arg task*[`_choice_task`]

# {{ turbo bin
# @cmd Get the path to the Turbo binary
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg shell![bash|elvish|fish|powershell|zsh]
completion() {
    :;
}
# }} turbo completion

# {{ turbo daemon
# @cmd Runs the Turborepo background daemon
# @option --idle-time <IDLE_TIME>             Set the idle timeout for turbod
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
daemon::stop() {
    :;
}
# }}} turbo daemon stop

# {{{ turbo daemon clean
# @cmd Stops the turbo daemon if it is already running, and removes any stale daemon state
# @flag --clean-logs                          Clean
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
daemon::clean() {
    :;
}
# }}} turbo daemon clean

# {{{ turbo daemon logs
# @cmd Shows the daemon logs
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
daemon::logs() {
    :;
}
# }}} turbo daemon logs
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option -r --root                           The root of your repository (default: directory with root turbo.json)
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option -p --example-path <EXAMPLE_PATH>    In a rare case, your GitHub URL might contain a branch name with a slash (e.g. bug/fix-1) and the path to the example (e.g. foo/bar).
# @flag --show-all-dependencies               Do not filter available dependencies by the workspace type
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg generator_name                         The name of the generator to run
generate::run() {
    :;
}
# }}} turbo generate run
# }} turbo generate

# {{ turbo telemetry
# @cmd Enable or disable anonymous telemetry
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
telemetry() {
    :;
}

# {{{ turbo telemetry enable
# @cmd Enables anonymous telemetry
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
telemetry::enable() {
    :;
}
# }}} turbo telemetry enable

# {{{ turbo telemetry disable
# @cmd Disables anonymous telemetry
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
telemetry::disable() {
    :;
}
# }}} turbo telemetry disable

# {{{ turbo telemetry status
# @cmd Reports the status of telemetry
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
telemetry::status() {
    :;
}
# }}} turbo telemetry status
# }} turbo telemetry

# {{ turbo scan
# @cmd Turbo your monorepo by running a number of 'repo lints' to identify common issues, suggest fixes, and improve performance
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
scan() {
    :;
}
# }} turbo scan

# {{ turbo ls
# @cmd EXPERIMENTAL: List packages in your monorepo
# @flag --affected                            Show only packages that are affected by changes between the current branch and `main`
# @flag --version
# @option -F --filter                         Use the given selector to specify package(s) to act as entry points.
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg package*[`_choice_package`]
ls() {
    :;
}
# }} turbo ls

# {{ turbo link
# @cmd Link your local directory to a Vercel organization and enable remote caching
# @flag --no-gitignore                        Do not create or modify .gitignore (default false)
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @option --target[remote-cache|spaces]       Specify what should be linked (default "remote cache")
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
link() {
    :;
}
# }} turbo link

# {{ turbo login
# @cmd Login to your Vercel account
# @option --sso-team <SSO_TEAM>
# @flag --version
# @flag -f --force                            Force a login to receive a new token.
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
login() {
    :;
}
# }} turbo login

# {{ turbo logout
# @cmd Logout to your Vercel account
# @flag --invalidate                          Invalidate the token on the server
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg scope*                                 Workspaces that should be included in the subset
prune() {
    :;
}
# }} turbo prune

# {{ turbo run
# @cmd Run tasks across projects in your monorepo
# @option --cache-workers <CACHE_WORKERS>        Set the number of concurrent cache operations (default 10)
# @flag --version
# @option --dry-run[text|json] <DRY_RUN>
# @flag --skip-infer                             Skip any attempts to infer which version of Turbo the project is configured to use
# @option --graph                                Generate a graph of the task execution and output to a file when a filename is specified (.svg, .png, .jpg, .pdf, .json, .html, .mermaid, .dot).
# @flag --no-update-notifier                     Disable the turbo update notification
# @option --api                                  Override the endpoint for API calls
# @flag --no-cache                               Avoid saving task results to the cache.
# @flag --daemon                                 Force turbo to either use or not use the local daemon.
# @flag --no-daemon                              Force turbo to either use or not use the local daemon.
# @flag --color                                  Force color usage in the terminal
# @option --cwd <CWD_DIR>                        The directory in which to run turbo
# @option --heap <HEAP_FILE>                     Specify a file to save a pprof heap profile
# @option --profile <PROFILE_FILE>               File to write turbo's performance profile output into.
# @option --anon-profile <ANON_PROFILE>          File to write turbo's performance profile output into.
# @option --ui                                   Specify whether to use the streaming UI or TUI
# @option --login                                Override the login endpoint
# @option --remote-cache-read-only[true|false] <BOOL>  Treat remote cache as read only
# @flag --no-color                               Suppress color usage in the terminal
# @option --summarize[true|false]                Generate a summary of the turbo run
# @flag --preflight                              When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @flag --parallel                               Execute all tasks in parallel
# @option --remote-cache-timeout <TIMEOUT>       Set a timeout for all HTTP requests
# @option --cache-dir <CACHE_DIR>                Override the filesystem cache directory
# @option --team                                 Set the team slug for API calls
# @option --concurrency                          Limit the concurrency of task execution.
# @option --token                                Set the auth token for API calls
# @flag --continue                               Continue execution even if a task exits with an error or non-zero exit code.
# @option --trace <TRACE_FILE>                   Specify a file to save a pprof trace
# @flag --single-package                         Run turbo in single-package mode
# @option --verbosity <COUNT>                    Verbosity level
# @option --force[true|false]                    Ignore the existing cache (to force execution)
# @option --framework-inference[true|false] <BOOL>  Specify whether or not to do framework inference for tasks
# @option --global-deps <GLOBAL_DEPS>            Specify glob of global filesystem dependencies to be hashed.
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @option --env-mode[loose|strict] <ENV_MODE>    Environment variable mode.
# @option -F --filter                            Use the given selector to specify package(s) to act as entry points.
# @flag --affected                               Run only tasks that are affected by changes between the current branch and `main`
# @option --output-logs[full|none|hash-only|new-only|errors-only] <OUTPUT_LOGS>  Set type of process output logging.
# @option --log-order[auto|stream|grouped] <LOG_ORDER>  Set type of task output order.
# @flag --only                                   Only executes the tasks specified, does not execute parent tasks
# @option --remote-only[true|false] <BOOL>       Ignore the local filesystem cache for all tasks.
# @option --log-prefix[auto|none|task] <LOG_PREFIX>  Use "none" to remove prefixes from task logs.
# @flag -h --help                                Print help (see a summary with '-h')
# @arg task*[`_choice_task`]
run() {
    :;
}
# }} turbo run

# {{ turbo watch
# @cmd Arguments used in run and watch
# @option --cache-dir <CACHE_DIR>                Override the filesystem cache directory
# @flag --version
# @option --concurrency                          Limit the concurrency of task execution.
# @flag --skip-infer                             Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --continue                               Continue execution even if a task exits with an error or non-zero exit code.
# @flag --no-update-notifier                     Disable the turbo update notification
# @option --api                                  Override the endpoint for API calls
# @flag --single-package                         Run turbo in single-package mode
# @flag --color                                  Force color usage in the terminal
# @option --force[true|false]                    Ignore the existing cache (to force execution)
# @option --cwd <CWD_DIR>                        The directory in which to run turbo
# @option --framework-inference[true|false] <BOOL>  Specify whether or not to do framework inference for tasks
# @option --global-deps <GLOBAL_DEPS>            Specify glob of global filesystem dependencies to be hashed.
# @option --heap <HEAP_FILE>                     Specify a file to save a pprof heap profile
# @option --env-mode[loose|strict] <ENV_MODE>    Environment variable mode.
# @option --ui                                   Specify whether to use the streaming UI or TUI
# @option -F --filter                            Use the given selector to specify package(s) to act as entry points.
# @option --login                                Override the login endpoint
# @flag --affected                               Run only tasks that are affected by changes between the current branch and `main`
# @flag --no-color                               Suppress color usage in the terminal
# @option --output-logs[full|none|hash-only|new-only|errors-only] <OUTPUT_LOGS>  Set type of process output logging.
# @flag --preflight                              When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --log-order[auto|stream|grouped] <LOG_ORDER>  Set type of task output order.
# @option --remote-cache-timeout <TIMEOUT>       Set a timeout for all HTTP requests
# @flag --only                                   Only executes the tasks specified, does not execute parent tasks
# @option --team                                 Set the team slug for API calls
# @option --token                                Set the auth token for API calls
# @option --remote-only[true|false] <BOOL>       Ignore the local filesystem cache for all tasks.
# @option --trace <TRACE_FILE>                   Specify a file to save a pprof trace
# @option --log-prefix[auto|none|task] <LOG_PREFIX>  Use "none" to remove prefixes from task logs.
# @option --verbosity <COUNT>                    Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                                Print help (see a summary with '-h')
watch() {
    :;
}
# }} turbo watch

# {{ turbo unlink
# @cmd Unlink the current directory from your Vercel organization and disable Remote Caching
# @option --target[remote-cache|spaces]       Specify what should be unlinked (default "remote cache")
# @flag --version
# @flag --skip-infer                          Skip any attempts to infer which version of Turbo the project is configured to use
# @flag --no-update-notifier                  Disable the turbo update notification
# @option --api                               Override the endpoint for API calls
# @flag --color                               Force color usage in the terminal
# @option --cwd <CWD_DIR>                     The directory in which to run turbo
# @option --heap <HEAP_FILE>                  Specify a file to save a pprof heap profile
# @option --ui                                Specify whether to use the streaming UI or TUI
# @option --login                             Override the login endpoint
# @flag --no-color                            Suppress color usage in the terminal
# @flag --preflight                           When enabled, turbo will precede HTTP requests with an OPTIONS request for authorization
# @option --remote-cache-timeout <TIMEOUT>    Set a timeout for all HTTP requests
# @option --team                              Set the team slug for API calls
# @option --token                             Set the auth token for API calls
# @option --trace <TRACE_FILE>                Specify a file to save a pprof trace
# @option --verbosity <COUNT>                 Verbosity level
# @flag --dangerously-disable-package-manager-check  Allow for missing `packageManager` in `package.json`.
# @flag -h --help                             Print help (see a summary with '-h')
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

_choice_package() {
    _helper_find_turbo_json_path
    cd "$(dirname "$turo_json_path")"
    ls -1 packages
}

_helper_find_turbo_json_path() {
    if [[ -d "$argc_cwd" ]]; then
        cd "$argc_cwd"
    fi
    turo_json_path="$(_argc_util_path_search_parent turbo.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"