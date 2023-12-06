#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --cache-selected-only                      At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only                   At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                         Display debug logging during dbt execution.
# @flag --debug                                    Display debug logging during dbt execution.
# @flag --no-debug                                 Display debug logging during dbt execution.
# @flag -x                                         Stop execution on first failure.
# @flag --fail-fast                                Stop execution on first failure.
# @flag --no-fail-fast                             Stop execution on first failure.
# @flag --log-cache-events                         Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                      Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                        Configure the 'log-path'.
# @flag --partial-parse                            Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                         Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                           At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                        At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                                    Output all {{ print() }} macro calls.
# @flag --no-print                                 Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>                Sets the width of terminal output
# @flag -q                                         Suppress all non-error logging to stdout.
# @flag --quiet                                    Suppress all non-error logging to stdout.
# @flag --no-quiet                                 Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>           When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats               Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats            Send anonymous usage stats to dbt Labs.
# @flag --static-parser                            Use the static parser.
# @flag --no-static-parser                         Use the static parser.
# @flag --use-colors                               Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                            Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                          Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                       Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser                  Enable experimental parsing features.
# @flag --no-use-experimental-parser               Enable experimental parsing features.
# @flag -V                                         Show version information and exit
# @flag -v                                         Show version information and exit
# @flag --version                                  Show version information and exit
# @flag --version-check                            If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                         If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                               Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                            Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --warn-error                               If dbt would normally warn, instead raise an exception.
# @option --warn-error-options <WARNERROROPTIONSTYPE>  If dbt would normally warn, instead raise an exception based on include/exclude configuration.
# @option --log-format[text|debug|json|default]    Specify the format of logging to the console and the log file.
# @flag -h --help                                  Show this message and exit.

# {{ dbt build
# @cmd Run all seeds, models, snapshots, and tests in DAG order
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @flag -f --full-refresh                    If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --indirect-selection[eager|cautious|buildable|empty]  Choose which tests to select that are adjacent to selected resources.
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option --resource-types[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option --resource-type[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @flag --show                               Show a sample of the loaded data in the terminal
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @flag --store-failures                     Store test results (failing rows) in the database
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
build() {
    :;
}
# }} dbt build

# {{ dbt clean
# @cmd Delete all folders in the clean-targets list (usually...
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --clean-project-files-only          If disabled, dbt clean will delete all paths specified in clean-paths, even if they're outside the dbt project.
# @flag --no-clean-project-files-only       If disabled, dbt clean will delete all paths specified in clean-paths, even if they're outside the dbt project.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
clean() {
    :;
}
# }} dbt clean

# {{ dbt clone
# @cmd Create clones of selected nodes based on their location...
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --defer-state <DIRECTORY>         Override the state directory for deferral only.
# @option --exclude <TUPLE>                 Specify the nodes to exclude.
# @flag -f --full-refresh                   If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option --resource-types[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option --resource-type[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option -s <TUPLE>                        Specify the nodes to include.
# @option -m <TUPLE>                        Specify the nodes to include.
# @option --select <TUPLE>                  Specify the nodes to include.
# @option --models <TUPLE>                  Specify the nodes to include.
# @option --model <TUPLE>                   Specify the nodes to include.
# @option --selector <TEXT>                 The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>               Unless overridden, use this state directory for both state comparison and deferral.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
clone() {
    :;
}
# }} dbt clone

# {{ dbt compile
# @cmd Generates executable SQL from source, model, test, and...
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @flag -f --full-refresh                    If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --output <json|text>               Output format for dbt compile and dbt show
# @option --indirect-selection[eager|cautious|buildable|empty]  Choose which tests to select that are adjacent to selected resources.
# @flag --introspect                         Whether to scaffold introspective queries as part of compilation
# @flag --no-introspect                      Whether to scaffold introspective queries as part of compilation
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @option --inline <TEXT>                    Pass SQL inline to dbt compile and show
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
compile() {
    :;
}
# }} dbt compile

# {{ dbt debug
# @cmd Show information on the current dbt environment and...
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --connection                        Test the connection to the target database independent of dependency checks.
# @flag --config-dir                        Print a system-specific command to access the directory that the current dbt project is searching for a profiles.yml.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
debug() {
    :;
}
# }} dbt debug

# {{ dbt deps
# @cmd Install dbt packages specified.
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --vars <YAML>                     Supply variables to the project.
# @option --source[hub|git|local]           Source to download page from, must be one of hub, git, or local.
# @flag --dry-run                           Option to run `dbt deps --add-package` without updating package-lock.yml file.
# @flag --lock                              Generate the package-lock.yml file without install the packages.
# @flag --upgrade                           Upgrade packages to the latest version.
# @option --add-package <NEWPACKAGE>        Add a package to current package spec, specify it as package-name@version.
# @flag -h --help                           Show this message and exit.
deps() {
    :;
}
# }} dbt deps

# {{ dbt docs
# @cmd Generate or serve the documentation website for your...
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag -h --help                           Show this message and exit.
docs() {
    :;
}

# {{{ dbt docs generate
# @cmd Generate the documentation website for your project
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --compile                            Whether or not to run 'dbt compile' as part of docs generation
# @flag --no-compile                         Whether or not to run 'dbt compile' as part of docs generation
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @flag --empty-catalog                      If specified, generate empty catalog.json file during the `dbt docs generate` command.
# @flag --static                             Generate an additional static_index.html with manifest and catalog built-in.
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
docs::generate() {
    :;
}
# }}} dbt docs generate

# {{{ dbt docs serve
# @cmd Serve the documentation website for your project
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --browser                           Wether or not to open a local web browser after starting the server
# @flag --no-browser                        Wether or not to open a local web browser after starting the server
# @option --port <INTEGER>                  Specify the port number for the docs server
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
docs::serve() {
    :;
}
# }}} dbt docs serve
# }} dbt docs

# {{ dbt init
# @cmd Initialize a new dbt project.
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @flag -s --skip-profile-setup             Skip interactive profile setup.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
# @arg project_name
init() {
    :;
}
# }} dbt init

# {{ dbt list
# @cmd List the resources in your project
# @flag --cache-selected-only                  At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                     Display debug logging during dbt execution.
# @flag --debug                                Display debug logging during dbt execution.
# @flag --no-debug                             Display debug logging during dbt execution.
# @flag -x                                     Stop execution on first failure.
# @flag --fail-fast                            Stop execution on first failure.
# @flag --no-fail-fast                         Stop execution on first failure.
# @flag --log-cache-events                     Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                    Configure the 'log-path'.
# @flag --partial-parse                        Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                       At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                                Output all {{ print() }} macro calls.
# @flag --no-print                             Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>            Sets the width of terminal output
# @flag -q                                     Suppress all non-error logging to stdout.
# @flag --quiet                                Suppress all non-error logging to stdout.
# @flag --no-quiet                             Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>       When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats           Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --static-parser                        Use the static parser.
# @flag --no-static-parser                     Use the static parser.
# @flag --use-colors                           Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                      Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser              Enable experimental parsing features.
# @flag --no-use-experimental-parser           Enable experimental parsing features.
# @flag -V                                     Show version information and exit
# @flag -v                                     Show version information and exit
# @flag --version                              Show version information and exit
# @flag --version-check                        If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                           Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --exclude <TUPLE>                    Specify the nodes to exclude.
# @option --indirect-selection[eager|cautious|buildable|empty]  Choose which tests to select that are adjacent to selected resources.
# @option -m <TUPLE>                           Specify the nodes to include.
# @option --models <TUPLE>                     Specify the nodes to include.
# @option --model <TUPLE>                      Specify the nodes to include.
# @option --output[json|name|path|selector]    Specify the output format: either JSON or a newline-delimited list of selectors, paths, or names
# @option --output-keys <TUPLE>                Space-delimited listing of node properties to include as custom keys for JSON output (e.g. `--output json --output-keys name resource_type description`)
# @option --profile <TEXT>                     Which existing profile to load.
# @option --profiles-dir <PATH>                Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>                 Which directory to look in for the dbt_project.yml file.
# @option --resource-types[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option --resource-type[metric|semantic_model|source|analysis|model|test|exposure|snapshot|seed|default|all]  Restricts the types of resources that dbt will include
# @option -s --select <TUPLE>                  Specify the nodes to include.
# @option --selector <TEXT>                    The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>                  Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>            Override the state directory for deferral only.
# @option -t --target <TEXT>                   Which target to load for the given profile
# @option --target-path <PATH>                 Configure the 'target-path'.
# @option --vars <YAML>                        Supply variables to the project.
# @flag -h --help                              Show this message and exit.
list() {
    :;
}
# }} dbt list

# {{ dbt parse
# @cmd Parses the project and provides information on performance
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
parse() {
    :;
}
# }} dbt parse

# {{ dbt retry
# @cmd Retry the nodes that failed in the previous run.
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --vars <YAML>                     Supply variables to the project.
# @option --profile <TEXT>                  Which existing profile to load.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --state <DIRECTORY>               Unless overridden, use this state directory for both state comparison and deferral.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @flag -h --help                           Show this message and exit.
retry() {
    :;
}
# }} dbt retry

# {{ dbt run
# @cmd Compile SQL and execute against the current target...
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag -f --full-refresh                    If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
run() {
    :;
}
# }} dbt run

# {{ dbt run-operation
# @cmd Run the named macro with any supplied arguments.
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --args <YAML>                     Supply arguments to the macro.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
# @arg macro
run-operation() {
    :;
}
# }} dbt run-operation

# {{ dbt seed
# @cmd Load data from csv files into your data warehouse.
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --exclude <TUPLE>                 Specify the nodes to exclude.
# @flag -f --full-refresh                   If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                        Specify the nodes to include.
# @option -m <TUPLE>                        Specify the nodes to include.
# @option --select <TUPLE>                  Specify the nodes to include.
# @option --models <TUPLE>                  Specify the nodes to include.
# @option --model <TUPLE>                   Specify the nodes to include.
# @option --selector <TEXT>                 The selector name to use, as defined in selectors.yml
# @flag --show                              Show a sample of the loaded data in the terminal
# @option --state <DIRECTORY>               Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>         Override the state directory for deferral only.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
seed() {
    :;
}
# }} dbt seed

# {{ dbt show
# @cmd Generates executable SQL for a named resource or inline...
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @flag -f --full-refresh                    If specified, dbt will drop incremental models and fully-recalculate the incremental table from the model definition.
# @option --output <json|text>               Output format for dbt compile and dbt show
# @option --limit <INTEGER>                  Limit the number of results returned by dbt show
# @option --indirect-selection[eager|cautious|buildable|empty]  Choose which tests to select that are adjacent to selected resources.
# @flag --introspect                         Whether to scaffold introspective queries as part of compilation
# @flag --no-introspect                      Whether to scaffold introspective queries as part of compilation
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @option --inline <TEXT>                    Pass SQL inline to dbt compile and show
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
show() {
    :;
}
# }} dbt show

# {{ dbt snapshot
# @cmd Execute snapshots defined in your project
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
snapshot() {
    :;
}
# }} dbt snapshot

# {{ dbt source
# @cmd Manage your project's sources
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag -h --help                           Show this message and exit.
source() {
    :;
}

# {{{ dbt source freshness
# @cmd check the current freshness of the project's sources
# @flag --cache-selected-only               At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only            At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                  Display debug logging during dbt execution.
# @flag --debug                             Display debug logging during dbt execution.
# @flag --no-debug                          Display debug logging during dbt execution.
# @flag -x                                  Stop execution on first failure.
# @flag --fail-fast                         Stop execution on first failure.
# @flag --no-fail-fast                      Stop execution on first failure.
# @flag --log-cache-events                  Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events               Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                 Configure the 'log-path'.
# @flag --partial-parse                     Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                  Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                    At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                 At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                             Output all {{ print() }} macro calls.
# @flag --no-print                          Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>         Sets the width of terminal output
# @flag -q                                  Suppress all non-error logging to stdout.
# @flag --quiet                             Suppress all non-error logging to stdout.
# @flag --no-quiet                          Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>    When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats        Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats     Send anonymous usage stats to dbt Labs.
# @flag --static-parser                     Use the static parser.
# @flag --no-static-parser                  Use the static parser.
# @flag --use-colors                        Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                     Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                   Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser           Enable experimental parsing features.
# @flag --no-use-experimental-parser        Enable experimental parsing features.
# @flag -V                                  Show version information and exit
# @flag -v                                  Show version information and exit
# @flag --version                           Show version information and exit
# @flag --version-check                     If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                  If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                        Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                     Whether or not to write the manifest.json and run_results.json files to the target directory
# @option --exclude <TUPLE>                 Specify the nodes to exclude.
# @option -o --output <FILE>                Specify the output path for the JSON report.
# @option --profile <TEXT>                  Which existing profile to load.
# @option --profiles-dir <PATH>             Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>              Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                        Specify the nodes to include.
# @option -m <TUPLE>                        Specify the nodes to include.
# @option --select <TUPLE>                  Specify the nodes to include.
# @option --models <TUPLE>                  Specify the nodes to include.
# @option --model <TUPLE>                   Specify the nodes to include.
# @option --selector <TEXT>                 The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>               Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>         Override the state directory for deferral only.
# @option -t --target <TEXT>                Which target to load for the given profile
# @option --target-path <PATH>              Configure the 'target-path'.
# @option --threads <INTEGER>               Specify number of threads to use while executing models.
# @option --vars <YAML>                     Supply variables to the project.
# @flag -h --help                           Show this message and exit.
source::freshness() {
    :;
}
# }}} dbt source freshness
# }} dbt source

# {{ dbt test
# @cmd Runs tests on data in deployed models.
# @flag --cache-selected-only                At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag --no-cache-selected-only             At start of run, populate relational cache only for schemas containing selected nodes, or for all schemas of interest.
# @flag -d                                   Display debug logging during dbt execution.
# @flag --debug                              Display debug logging during dbt execution.
# @flag --no-debug                           Display debug logging during dbt execution.
# @flag -x                                   Stop execution on first failure.
# @flag --fail-fast                          Stop execution on first failure.
# @flag --no-fail-fast                       Stop execution on first failure.
# @flag --log-cache-events                   Enable verbose logging for relational cache events to help when debugging.
# @flag --no-log-cache-events                Enable verbose logging for relational cache events to help when debugging.
# @option --log-format-file[text|debug|json|default]  Specify the format of logging to the log file by overriding the default value and the general --log-format setting.
# @option --log-level[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the console and the log file.
# @option --log-level-file[debug|info|warn|error|none]  Specify the minimum severity of events that are logged to the log file by overriding the default value and the general --log-level setting.
# @option --log-path <PATH>                  Configure the 'log-path'.
# @flag --partial-parse                      Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --no-partial-parse                   Allow for partial parsing by looking for and writing to a pickle file in the target directory.
# @flag --populate-cache                     At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --no-populate-cache                  At start of run, use `show` or `information_schema` queries to populate a relational cache, which can speed up subsequent materializations.
# @flag --print                              Output all {{ print() }} macro calls.
# @flag --no-print                           Output all {{ print() }} macro calls.
# @option --printer-width <INTEGER>          Sets the width of terminal output
# @flag -q                                   Suppress all non-error logging to stdout.
# @flag --quiet                              Suppress all non-error logging to stdout.
# @flag --no-quiet                           Suppress all non-error logging to stdout.
# @option -r --record-timing-info <PATH>     When this option is passed, dbt will output low-level timing stats to the specified file.
# @flag --send-anonymous-usage-stats         Send anonymous usage stats to dbt Labs.
# @flag --no-send-anonymous-usage-stats      Send anonymous usage stats to dbt Labs.
# @flag --static-parser                      Use the static parser.
# @flag --no-static-parser                   Use the static parser.
# @flag --use-colors                         Specify whether log output is colorized in the console and the log file.
# @flag --no-use-colors                      Specify whether log output is colorized in the console and the log file.
# @flag --use-colors-file                    Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --no-use-colors-file                 Specify whether log file output is colorized by overriding the default value and the general --use-colors/--no-use-colors setting.
# @flag --use-experimental-parser            Enable experimental parsing features.
# @flag --no-use-experimental-parser         Enable experimental parsing features.
# @flag -V                                   Show version information and exit
# @flag -v                                   Show version information and exit
# @flag --version                            Show version information and exit
# @flag --version-check                      If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --no-version-check                   If set, ensure the installed dbt version matches the require-dbt-version specified in the dbt_project.yml file (if any).
# @flag --write-json                         Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --no-write-json                      Whether or not to write the manifest.json and run_results.json files to the target directory
# @flag --defer                              If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @flag --no-defer                           If set, resolve unselected nodes by deferring to the manifest within the --state directory.
# @option --exclude <TUPLE>                  Specify the nodes to exclude.
# @flag --favor-state                        If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @flag --no-favor-state                     If set, defer to the argument provided to the state flag for resolving unselected nodes, even if the node(s) exist as a database object in the current environment.
# @option --deprecated-favor-state <TEXT>    Internal flag for deprecating old env var.
# @option --indirect-selection[eager|cautious|buildable|empty]  Choose which tests to select that are adjacent to selected resources.
# @option --profile <TEXT>                   Which existing profile to load.
# @option --profiles-dir <PATH>              Which directory to look in for the profiles.yml file.
# @option --project-dir <PATH>               Which directory to look in for the dbt_project.yml file.
# @option -s <TUPLE>                         Specify the nodes to include.
# @option -m <TUPLE>                         Specify the nodes to include.
# @option --select <TUPLE>                   Specify the nodes to include.
# @option --models <TUPLE>                   Specify the nodes to include.
# @option --model <TUPLE>                    Specify the nodes to include.
# @option --selector <TEXT>                  The selector name to use, as defined in selectors.yml
# @option --state <DIRECTORY>                Unless overridden, use this state directory for both state comparison and deferral.
# @option --defer-state <DIRECTORY>          Override the state directory for deferral only.
# @flag --store-failures                     Store test results (failing rows) in the database
# @option -t --target <TEXT>                 Which target to load for the given profile
# @option --target-path <PATH>               Configure the 'target-path'.
# @option --threads <INTEGER>                Specify number of threads to use while executing models.
# @option --vars <YAML>                      Supply variables to the project.
# @flag -h --help                            Show this message and exit.
test() {
    :;
}
# }} dbt test

command eval "$(argc --argc-eval "$0" "$@")"