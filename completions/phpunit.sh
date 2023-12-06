#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --bootstrap <file>                     A PHP script that is included before the tests run
# @option -c <|--configuration> <file>           Read configuration from XML file
# @flag --no-configuration                       Ignore default configuration file (phpunit.xml)
# @flag --no-extensions                          Do not load PHPUnit extensions
# @option --include-path <path(s)>               Prepend PHP's include_path with given path(s)
# @option -d <key[=value]>                       Sets a php.ini value
# @option --cache-directory <dir>                Specify cache directory
# @flag --generate-configuration                 Generate configuration file with suggested settings
# @flag --migrate-configuration                  Migrate configuration file to current format
# @option --generate-baseline <file>             Generate baseline for issues
# @option --use-baseline <file>                  Use baseline to ignore issues
# @flag --ignore-baseline                        Do not use baseline to ignore issues
# @flag --list-suites                            List available test suites
# @option --testsuite[`_choice_suite`] <name>    Only run tests from the specified test suite(s)
# @option --exclude-testsuite <name>             Exclude tests from the specified test suite(s)
# @flag --list-groups                            List available test groups
# @option --group[`_choice_group`] <name>        Only run tests from the specified group(s)
# @option --exclude-group <name>                 Exclude tests from the specified group(s)
# @option --covers <name>                        Only run tests that intend to cover <name>
# @option --uses <name>                          Only run tests that intend to use <name>
# @flag --list-tests                             List available tests
# @option --list-tests-xml <file>                List available tests in XML format
# @option --filter <pattern>                     Filter which tests to run
# @option --test-suffix <suffixes>               Only search for test in files with specified suffix(es).
# @flag --process-isolation                      Run each test in a separate PHP process
# @flag --globals-backup                         Backup and restore $GLOBALS for each test
# @flag --static-backup                          Backup and restore static properties for each test
# @flag --strict-coverage                        Be strict about code coverage metadata
# @flag --strict-global-state                    Be strict about changes to global state
# @flag --disallow-test-output                   Be strict about output during tests
# @flag --enforce-time-limit                     Enforce time limit based on test size
# @option --default-time-limit <sec>             Timeout in seconds for tests that have no declared size
# @flag --dont-report-useless-tests              Do not report tests that do not test anything
# @flag --stop-on-defect                         Stop after first error, failure, warning, or risky test
# @flag --stop-on-error                          Stop after first error
# @flag --stop-on-failure                        Stop after first failure
# @flag --stop-on-warning                        Stop after first warning
# @flag --stop-on-risky                          Stop after first risky test
# @flag --stop-on-deprecation                    Stop after first test that triggered a deprecation
# @flag --stop-on-notice                         Stop after first test that triggered a notice
# @flag --stop-on-skipped                        Stop after first skipped test
# @flag --stop-on-incomplete                     Stop after first incomplete test
# @flag --fail-on-warning                        Signal failure using shell exit code when a warning was triggered
# @flag --fail-on-risky                          Signal failure using shell exit code when a test was considered risky
# @flag --fail-on-deprecation                    Signal failure using shell exit code when a deprecation was triggered
# @flag --fail-on-notice                         Signal failure using shell exit code when a notice was triggered
# @flag --fail-on-skipped                        Signal failure using shell exit code when a test was skipped
# @flag --fail-on-incomplete                     Signal failure using shell exit code when a test was marked incomplete
# @flag --cache-result                           Write test results to cache file
# @flag --do-not-cache-result                    Do not write test results to cache file
# @option --order-by <order>                     Run tests in order: default|defects|depends|duration|no-depends|random|reverse|size
# @option --random-order-seed <N>                Use the specified random seed when running tests in random order
# @option --colors <flag>                        Use colors in output ("never", "auto" or "always")
# @option --columns <max>                        Use maximum number of columns for progress output
# @flag --stderr                                 Write to STDERR instead of STDOUT
# @flag --no-progress                            Disable output of test execution progress
# @flag --no-results                             Disable output of test results
# @flag --no-output                              Disable all output
# @flag --display-incomplete                     Display details for incomplete tests
# @flag --display-skipped                        Display details for skipped tests
# @flag --display-deprecations                   Display details for deprecations triggered by tests
# @flag --display-errors                         Display details for errors triggered by tests
# @flag --display-notices                        Display details for notices triggered by tests
# @flag --display-warnings                       Display details for warnings triggered by tests
# @flag --reverse-list                           Print defects in reverse order
# @flag --teamcity                               Replace default progress and result output with TeamCity format
# @flag --testdox                                Replace default result output with TestDox format
# @option --log-junit <file>                     Write test results in JUnit XML format to file
# @option --log-teamcity <file>                  Write test results in TeamCity format to file
# @option --testdox-html <file>                  Write test results in TestDox format (HTML) to file
# @option --testdox-text <file>                  Write test results in TestDox format (plain text) to file
# @option --log-events-text <file>               Stream events as plain text to file
# @option --log-events-verbose-text <file>       Stream events as plain text with extended information to file
# @flag --no-logging                             Ignore logging configured in the XML configuration file
# @option --coverage-clover <file>               Write code coverage report in Clover XML format to file
# @option --coverage-cobertura <file>            Write code coverage report in Cobertura XML format to file
# @option --coverage-crap4j <file>               Write code coverage report in Crap4J XML format to file
# @option --coverage-html <dir>                  Write code coverage report in HTML format to directory
# @option --coverage-php <file>                  Write serialized code coverage data to file
# @option --coverage-text <file>                 Write code coverage report in text format to file [default: standard output]
# @option --coverage-xml <dir>                   Write code coverage report in XML format to directory
# @flag --warm-coverage-cache                    Warm static analysis cache
# @option --coverage-filter <dir>                Include <dir> in code coverage reporting
# @flag --path-coverage                          Report path coverage in addition to line coverage
# @flag --disable-coverage-ignore                Disable metadata for ignoring code coverage
# @flag --no-coverage                            Ignore code coverage reporting configured in the XML configuration file
# @option -h <|--help>                           Prints this usage information
# @flag --version                                Prints the version and exits
# @option --atleast-version <min>                Checks that version is greater than <min> and exits
# @flag --check-version                          Check whether PHPUnit is the latest version and exits
# @arg directory-file+ <directory|file>

_choice_suite() {
    phpunit --list-groups | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

_choice_group() {
    phpunit --list-suites | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

command eval "$(argc --argc-eval "$0" "$@")"