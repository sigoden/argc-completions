#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -k <EXPRESSION>                        Only run tests which match the given substring expression.
# @option -m <MARKEXPR>                          Only run tests matching given mark expression.
# @flag --markers                                show markers (builtin, plugin and per-project ones).
# @flag -x --exitfirst                           Exit instantly on first error or failed test
# @flag --fixtures                               Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
# @flag --funcargs                               Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
# @flag --fixtures-per-test                      Show fixtures per test
# @flag --pdb                                    Start the interactive Python debugger on errors or KeyboardInterrupt
# @option --pdbcls <modulename:classname>        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb
# @flag --trace                                  Immediately break when running each test
# @option --capture <method>                     Per-test capturing method: one of fd|sys|no|tee-sys
# @flag -s                                       Shortcut for --capture=no
# @flag --runxfail                               Report the results of xfail tests as if they were not marked
# @flag --lf                                     Rerun only the tests that failed at the last run (or all if none failed)
# @flag --last-failed                            Rerun only the tests that failed at the last run (or all if none failed)
# @flag --ff                                     Run all tests, but run the last failures first.
# @flag --failed-first                           Run all tests, but run the last failures first.
# @flag --nf                                     Run tests from new files first, then the rest of the tests sorted by file mtime
# @flag --new-first                              Run tests from new files first, then the rest of the tests sorted by file mtime
# @option --cache-show <CACHESHOW>               Show cache contents, don't perform collection or tests.
# @flag --cache-clear                            Remove all cache contents at start of test run
# @option --lfnf[all|none]                       With ``--lf``, determines whether to execute tests when there are no previously (known) failures or when no cached ``lastfailed`` data was found.
# @option --last-failed-no-failures[all|none]    With ``--lf``, determines whether to execute tests when there are no previously (known) failures or when no cached ``lastfailed`` data was found.
# @flag --sw                                     Exit on test failure and continue from last failing test next time
# @flag --stepwise                               Exit on test failure and continue from last failing test next time
# @flag --sw-skip                                Ignore the first failing test but stop on the next failing test.
# @flag --stepwise-skip                          Ignore the first failing test but stop on the next failing test.
# @option --durations <N>                        Show N slowest setup/test durations (N=0 for all)
# @option --durations-min <N>                    Minimal duration in seconds for inclusion in slowest list.
# @flag -v --verbose                             Increase verbosity
# @flag --no-header                              Disable header
# @flag --no-summary                             Disable summary
# @flag -q --quiet                               Decrease verbosity
# @option --verbosity <VERBOSE>                  Set verbosity.
# @option -r <chars>                             Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.
# @flag --disable-warnings                       Disable warnings summary
# @flag --disable-pytest-warnings                Disable warnings summary
# @flag -l --showlocals                          Show locals in tracebacks (disabled by default)
# @flag --no-showlocals                          Hide locals in tracebacks (negate --showlocals passed through addopts)
# @option --tb <style>                           Traceback print mode (auto/long/short/line/native/no)
# @option --show-capture[no|stdout|stderr|log|all]  Controls how captured stdout/stderr/log is shown on failed tests.
# @flag --full-trace                             Don't cut any tracebacks (default is to cut)
# @option --color <color>                        Color terminal output (yes/no/auto)
# @option --code-highlight[yes|no]               Whether code should be highlighted (only if --color is also enabled).
# @option --pastebin <mode>                      Send failed|all info to bpaste.net pastebin service
# @option --junit-xml <path>                     Create junit-xml style report file at given path
# @option --junit-prefix <str>                   Prepend prefix to classnames in junit-xml output
# @option -W --pythonwarnings                    Set which warnings to report, see -W option of Python itself
# @option --maxfail <num>                        Exit after first num failures or errors
# @flag --strict-config                          Any warnings encountered while parsing the `pytest` section of the configuration file raise errors
# @flag --strict-markers                         Markers not registered in the `markers` section of the configuration file raise errors
# @flag --strict                                 (Deprecated) alias to --strict-markers
# @option -c --config-file <FILE>                Load configuration from `FILE` instead of trying to locate one of the implicit configuration files.
# @flag --continue-on-collection-errors          Force test execution even if collection errors occur
# @option --rootdir                              Define root directory for tests.
# @flag --collect-only                           Only collect tests, don't execute them
# @flag --co                                     Only collect tests, don't execute them
# @flag --pyargs                                 Try to interpret all arguments as Python packages
# @option --ignore <path>                        Ignore path during collection (multi-allowed)
# @option --ignore-glob <path>                   Ignore path pattern during collection (multi-allowed)
# @option --deselect <nodeid_prefix>             Deselect item (via node id prefix) during collection (multi-allowed)
# @option --confcutdir <dir>                     Only load conftest.py's relative to specified dir
# @flag --noconftest                             Don't load any conftest.py files
# @flag --keep-duplicates                        Keep duplicate tests
# @flag --collect-in-virtualenv                  Don't ignore tests in a local virtualenv directory
# @option --import-mode[prepend|append|importlib]  Prepend/append to sys.path when importing test modules and conftest files.
# @flag --doctest-modules                        Run doctests in all .py modules
# @option --doctest-report[none|cdiff|ndiff|udiff|only_first_failure]  Choose another output format for diffs on doctest failure
# @option --doctest-glob <pat>                   Doctests file matching pattern, default: test*.txt
# @flag --doctest-ignore-import-errors           Ignore doctest ImportErrors
# @flag --doctest-continue-on-failure            For a given doctest, continue to run after the first failure
# @option --basetemp <dir>                       Base temporary directory for this test run.
# @flag -V --version                             Display pytest version and information about plugins.
# @flag -h --help                                Show help message and configuration info
# @option -p <name>                              Early-load given plugin module name or entry point (multi-allowed).
# @flag --trace-config                           Trace considerations of conftest.py files
# @option --debug <DEBUG_FILE_NAME>              Store internal tracing debug information in this log file.
# @option -o --override-ini <OVERRIDE_INI>       Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.
# @option --assert <MODE>                        Control assertion debugging tools.
# @flag --setup-only                             Only setup fixtures, do not execute tests
# @flag --setup-show                             Show setup of fixtures while executing tests
# @flag --setup-plan                             Show what fixtures and tests would be executed but don't execute anything
# @option --log-level <LEVEL>                    Level of messages to catch/display.
# @option --log-format <LOG_FORMAT>              Log format used by the logging module
# @option --log-date-format <LOG_DATE_FORMAT>    Log date format used by the logging module
# @option --log-cli-level <LOG_CLI_LEVEL>        CLI logging level
# @option --log-cli-format <LOG_CLI_FORMAT>      Log format used by the logging module
# @option --log-cli-date-format <LOG_CLI_DATE_FORMAT>  Log date format used by the logging module
# @option --log-file <LOG_FILE>                  Path to a file when logging will be written to
# @option --log-file-level <LOG_FILE_LEVEL>      Log file logging level
# @option --log-file-format <LOG_FILE_FORMAT>    Log format used by the logging module
# @option --log-file-date-format <LOG_FILE_DATE_FORMAT>  Log date format used by the logging module
# @option --log-auto-indent <LOG_AUTO_INDENT>    Auto-indent multiline messages passed to the logging module.
# @option --log-disable <LOGGER_DISABLE>         Disable a logger by name.
# @arg file_or_dir

command eval "$(argc --argc-eval "$0" "$@")"