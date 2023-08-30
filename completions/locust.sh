#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  show this help message and exit
# @option -f --locustfile                          Python module to import, e.g. '../other_test.py'.
# @option --config                                 Config file path
# @option -H --host                                Host to load test in the following format: http://10.21.32.33
# @option -u --users <NUM_USERS>                   Peak number of concurrent Locust users.
# @option -r --spawn-rate <SPAWN_RATE>             Rate to spawn users at (users per second).
# @option -t --run-time <RUN_TIME>                 Stop after the specified amount of time, e.g. (300s, 20m, 3h, 1h30m, etc.).
# @flag -l --list                                  Show list of possible User classes and exit
# @option --web-host <WEB_HOST>                    Host to bind the web interface to.
# @option -P --web-port <WEB_PORT>                 Port on which to run web host
# @flag --headless                                 Disable the web interface, and start the test immediately.
# @flag --autostart                                Starts the test immediately (like --headless, but without disabling the web UI)
# @option --autoquit                               Quits Locust entirely, X seconds after the run is finished.
# @option --web-auth <WEB_AUTH>                    Turn on Basic Auth for the web interface.
# @option --tls-cert <TLS_CERT>                    Optional path to TLS certificate to use to serve over HTTPS
# @option --tls-key <TLS_KEY>                      Optional path to TLS private key to use to serve over HTTPS
# @flag --class-picker                             Enable select boxes in the web interface to choose from all available User classes and Shape classes
# @flag --master                                   Set locust to run in distributed mode with this process as master
# @option --master-bind-host[hostname|ip] <MASTER_BIND_HOST>  Interfaces that locust master should bind to.
# @option --master-bind-port <MASTER_BIND_PORT>    Port that locust master should bind to.
# @option --expect-workers <EXPECT_WORKERS>        How many workers master should expect to connect before starting the test (only when --headless/autostart is used).
# @option --expect-workers-max-wait <EXPECT_WORKERS_MAX_WAIT>  How long should the master wait for workers to connect before giving up.
# @flag --worker                                   Set locust to run in distributed mode with this process as worker
# @option --master-host <MASTER_NODE_HOST>         Host or IP address of locust master for distributed load testing.
# @option --master-port <MASTER_NODE_PORT>         The port to connect to that is used by the locust master for distributed load testing.
# @option -T --tags* <TAG>                         List of tags to include in the test, so only tasks with any matching tags will be executed
# @option -E --exclude-tags* <TAG>                 List of tags to exclude from the test, so only tasks with no matching tags will be executed
# @option --csv <CSV_PREFIX>                       Store current request stats to files in CSV format.
# @flag --csv-full-history                         Store each stats entry in CSV format to _stats_history.csv file.
# @flag --print-stats                              Enable periodic printing of request stats in UI runs
# @flag --only-summary                             Disable periodic printing of request stats during --headless run
# @flag --reset-stats                              Reset statistics once spawning has been completed.
# @option --html <HTML_FILE>                       Store HTML report to file path specified
# @flag --json                                     Prints the final stats in JSON format to stdout.
# @flag --skip-log-setup                           Disable Locust's logging setup.
# @option -L --loglevel[DEBUG|INFO|WARNING|ERROR|CRITICAL]  Choose between DEBUG/INFO/WARNING/ERROR/CRITICAL.
# @option --logfile                                Path to log file.
# @flag --show-task-ratio                          Print table of the User classes' task execution ratio.
# @flag --show-task-ratio-json                     Print json data of the User classes' task execution ratio.
# @flag -V --version                               Show program's version number and exit
# @option --exit-code-on-error <EXIT_CODE_ON_ERROR>  Sets the process exit code to use when a test result contain any failure or error
# @option -s --stop-timeout <STOP_TIMEOUT>         Number of seconds to wait for a simulated user to complete any executing task before exiting.
# @flag --equal-weights                            Use equally distributed task weights, overriding the weights specified in the locustfile.
# @flag --enable-rebalancing                       Allow to automatically rebalance users if new workers are added or removed during a test run.
# @arg userclass*[`_choice_userclass`]

_choice_userclass() {
    locust --list | sed -n 's/^\s\+\(.*\)$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"