#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --coverage-clover <file>               Generate code coverage report in Clover XML format
# @option --coverage-cobertura <file>            Generate code coverage report in Cobertura XML format
# @option --coverage-crap4j <file>               Generate code coverage report in Crap4J XML format
# @option --coverage-html <dir>                  Generate code coverage report in HTML format
# @option --coverage-php <file>                  Export PHP_CodeCoverage object to file
# @option --coverage-text <file>                 Generate code coverage report in text format [default: standard output]
# @option --coverage-xml <dir>                   Generate code coverage report in PHPUnit XML format
# @option --coverage-cache <dir>                 Cache static analysis results
# @flag --warm-coverage-cache                    Warm static analysis cache
# @option --coverage-filter <dir>                Include <dir> in code coverage analysis
# @flag --path-coverage                          Perform path coverage analysis
# @flag --disable-coverage-ignore                Disable annotations for ignoring code coverage
# @flag --no-coverage                            Ignore code coverage configuration
# @option --log-junit <file>                     Log test execution in JUnit XML format to file
# @option --log-teamcity <file>                  Log test execution in TeamCity format to file
# @option --testdox-html <file>                  Write agile documentation in HTML format to file
# @option --testdox-text <file>                  Write agile documentation in Text format to file
# @option --testdox-xml <file>                   Write agile documentation in XML format to file
# @flag --reverse-list                           Print defects in reverse order
# @flag --no-logging                             Ignore logging configuration
# @flag --list-suites                            List available test suites
# @option --testsuite[`_choice_suite`] <name>    Filter which testsuite to run
# @flag --list-groups                            List available test groups
# @option --group[`_choice_group`] <name>        Only runs tests from the specified group(s)
# @option --exclude-group <name>                 Exclude tests from the specified group(s)
# @option --covers <name>                        Only runs tests annotated with "@covers <name>"
# @option --uses <name>                          Only runs tests annotated with "@uses <name>"
# @flag --list-tests                             List available tests
# @option --list-tests-xml <file>                List available tests in XML format
# @option --filter <pattern>                     Filter which tests to run
# @option --test-suffix <suffixes>               Only search for test in files with specified suffix(es).
# @flag --dont-report-useless-tests              Do not report tests that do not test anything
# @flag --strict-coverage                        Be strict about @covers annotation usage
# @flag --strict-global-state                    Be strict about changes to global state
# @flag --disallow-test-output                   Be strict about output during tests
# @flag --disallow-resource-usage                Be strict about resource usage during small tests
# @flag --enforce-time-limit                     Enforce time limit based on test size
# @option --default-time-limit <sec>             Timeout in seconds for tests without @small, @medium or @large
# @flag --disallow-todo-tests                    Disallow @todo-annotated tests
# @flag --process-isolation                      Run each test in a separate PHP process
# @flag --globals-backup                         Backup and restore $GLOBALS for each test
# @flag --static-backup                          Backup and restore static attributes for each test
# @option --colors <flag>                        Use colors in output ("never", "auto" or "always")
# @option --columns <max>                        Use maximum number of columns for progress output
# @flag --stderr                                 Write to STDERR instead of STDOUT
# @flag --stop-on-defect                         Stop execution upon first not-passed test
# @flag --stop-on-error                          Stop execution upon first error
# @flag --stop-on-failure                        Stop execution upon first error or failure
# @flag --stop-on-warning                        Stop execution upon first warning
# @flag --stop-on-risky                          Stop execution upon first risky test
# @flag --stop-on-skipped                        Stop execution upon first skipped test
# @flag --stop-on-incomplete                     Stop execution upon first incomplete test
# @flag --fail-on-incomplete                     Treat incomplete tests as failures
# @flag --fail-on-risky                          Treat risky tests as failures
# @flag --fail-on-skipped                        Treat skipped tests as failures
# @flag --fail-on-warning                        Treat tests with warnings as failures
# @option -v <|--verbose>                        Output more verbose information
# @flag --debug                                  Display debugging information
# @option --repeat <times>                       Runs the test(s) repeatedly
# @flag --teamcity                               Report test execution progress in TeamCity format
# @flag --testdox                                Report test execution progress in TestDox format
# @flag --testdox-group                          Only include tests from the specified group(s)
# @flag --testdox-exclude-group                  Exclude tests from the specified group(s)
# @flag --no-interaction                         Disable TestDox progress animation
# @option --printer <printer>                    TestListener implementation to use
# @option --order-by <order>                     Run tests in order: default|defects|duration|no-depends|random|reverse|size
# @option --random-order-seed <N>                Use a specific random seed <N> for random order
# @flag --cache-result                           Write test results to cache file
# @flag --do-not-cache-result                    Do not write test results to cache file
# @option --prepend <file>                       A PHP script that is included as early as possible
# @option --bootstrap <file>                     A PHP script that is included before the tests run
# @option -c <|--configuration> <file>           Read configuration from XML file
# @flag --no-configuration                       Ignore default configuration file (phpunit.xml)
# @option --extensions <extensions>              A comma separated list of PHPUnit extensions to load
# @flag --no-extensions                          Do not load PHPUnit extensions
# @option --include-path <path(s)>               Prepend PHP's include_path with given path(s)
# @option -d <key[=value]>                       Sets a php.ini value
# @option --cache-result-file <file>             Specify result cache path and filename
# @flag --generate-configuration                 Generate configuration file with suggested settings
# @flag --migrate-configuration                  Migrate configuration file to current format
# @option -h <|--help>                           Prints this usage information
# @flag --version                                Prints the version and exits
# @option --atleast-version <min>                Checks that version is greater than min and exits
# @flag --check-version                          Check whether PHPUnit is the latest version
# @arg unittest-php <UnitTest.php>

_choice_group() {
    phpunit --list-suites | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

_choice_suite() {
    phpunit --list-groups | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

command eval "$(argc --argc-eval "$0" "$@")"