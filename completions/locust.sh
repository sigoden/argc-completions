#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                             show this help message and exit
# @option -f --locustfile <filename>          The Python file or module that contains your test, e.g. 'my_test.py'.
# @option --config <filename>                 File to read additional configuration from.
# @option -H --host <base url>                Host to load test, in the following format: https://www.example.com
# @option -u --users <int>                    Peak number of concurrent Locust users.
# @option -r --spawn-rate <float>             Rate to spawn users at (users per second).
# @option -t --run-time <time string>         Stop after the specified amount of time, e.g. (300s, 20m, 3h, 1h30m, etc.).
# @flag -l --list                             Show list of possible User classes and exit
# @option --web-host <ip>                     Host to bind the web interface to.
# @option -P --web-port <port number>         Port on which to run web host
# @flag --headless                            Disable the web interface, and start the test immediately.
# @flag --autostart                           Starts the test immediately (like --headless, but without disabling the web UI)
# @option --autoquit <seconds>                Quits Locust entirely, X seconds after the run is finished.
# @option --web-auth <username:password>      DEPRECATED Turn on Basic Auth for the web interface.
# @option --tls-cert <filename>               Optional path to TLS certificate to use to serve over HTTPS
# @option --tls-key <filename>                Optional path to TLS private key to use to serve over HTTPS
# @flag --class-picker                        Enable select boxes in the web interface to choose from all available User classes and Shape classes
# @flag --modern-ui                           Use the new React-based frontend for the web UI
# @flag --master                              Launch locust as a master node, to which worker nodes connect.
# @option --master-bind-host <ip>             IP address for the master to listen on, e.g '192.168.1.1'.
# @option --master-bind-port <port number>    Port for the master to listen on.
# @option --expect-workers <int>              Delay starting the test until this number of workers have connected (only used in combination with --headless/--autostart).
# @option --expect-workers-max-wait <int>     How long should the master wait for workers to connect before giving up.
# @flag --worker                              Set locust to run in distributed mode with this process as worker
# @option --processes <int>                   Number of times to fork the locust process, to enable using system.
# @option --master-host <hostname>            Hostname of locust master node to connect to.
# @option --master-port <port number>         Port to connect to on master node.
# @option -T --tags* <tag>                    List of tags to include in the test, so only tasks with any matching tags will be executed
# @option -E --exclude-tags* <tag>            List of tags to exclude from the test, so only tasks with no matching tags will be executed
# @option --csv <filename>                    Store request stats to files in CSV format.
# @flag --csv-full-history                    Store each stats entry in CSV format to _stats_history.csv file.
# @flag --print-stats                         Enable periodic printing of request stats in UI runs
# @flag --only-summary                        Disable periodic printing of request stats during --headless run
# @flag --reset-stats                         Reset statistics once spawning has been completed.
# @option --html <filename>                   Store HTML report to file path specified
# @flag --json                                Prints the final stats in JSON format to stdout.
# @flag --skip-log-setup                      Disable Locust's logging setup.
# @option -L --loglevel[DEBUG|INFO|WARNING|ERROR|CRITICAL] <level>  Choose between DEBUG/INFO/WARNING/ERROR/CRITICAL.
# @option --logfile <filename>                Path to log file.
# @flag --show-task-ratio                     Print table of the User classes' task execution ratio.
# @flag --show-task-ratio-json                Print json data of the User classes' task execution ratio.
# @flag -V --version                          Show program's version number and exit
# @option --exit-code-on-error <int>          Sets the process exit code to use when a test result contain any failure or error.
# @option -s --stop-timeout <number>          Number of seconds to wait for a simulated user to complete any executing task before exiting.
# @flag --equal-weights                       Use equally distributed task weights, overriding the weights specified in the locustfile.
# @flag --enable-rebalancing                  Allow to automatically rebalance users if new workers are added or removed during a test run.
# @arg userclass*[`_choice_userclass`]

_choice_userclass() {
    locust --list | sed -n 's/^\s\+\(.*\)$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"