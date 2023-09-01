#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --rpa                                      Turn on the generic automation mode.
# @option --language* <lang>                       Activate localization.
# @option -F --extension <value>                   Parse only files with this extension when executing a directory.
# @option -I --parseinclude* <pattern>             Parse only files matching `pattern`.
# @option -N --name <name>                         Set the name of the top level suite.
# @option -D --doc <documentation>                 Set the documentation of the top level suite.
# @option -M --metadata* <name:value>              Set metadata of the top level suite.
# @option -G --settag* <tag>                       Sets given tag(s) to all executed tests.
# @option -t --test*[`_choice_testcase`] <name>    Select tests by name or by long name containing also parent suite name like `Parent.Test`.
# @option --task*[`_choice_testcase`] <name>       Alias to --test.
# @option -s --suite* <name>                       Select suites by name.
# @option -i --include*[`_choice_tag`] <tag>       Select tests by tag.
# @option -e --exclude*[`_choice_tag`] <tag>       Select test cases not to run by tag.
# @option -R --rerunfailed <output>                Select failed tests from an earlier output file to be re-executed.
# @option -S --rerunfailedsuites <output>          Select failed suites from an earlier output file to be re-executed.
# @flag --runemptysuite                            Executes suite even if it contains no tests.
# @option --skip*[`_choice_tag`] <tag>             Tests having given tag will be skipped.
# @option --skiponfailure*[`_choice_tag`] <tag>    Tests having given tag will be skipped if they fail.
# @option -v --variable* <name:value>              Set variables in the test data.
# @option -V --variablefile* <path>                Python or YAML file file to read variables from.
# @option -d --outputdir <dir>                     Where to create output files.
# @option -o --output <file>                       XML output file.
# @option -l --log <file>                          HTML log file.
# @option -r --report <file>                       HTML report file.
# @option -x --xunit <file>                        xUnit compatible result file.
# @option -b --debugfile <file>                    Debug file written during execution.
# @flag -T --timestampoutputs                      When this option is used, timestamp in a format `YYYYMMDD-hhmmss` is added to all generated output files between their basename and extension.
# @flag --splitlog                                 Split the log file into smaller pieces that open in browsers transparently.
# @option --logtitle <title>                       Title for the generated log file.
# @option --reporttitle <title>                    Title for the generated report file.
# @option --reportbackground <colors>              Background colors to use in the report file.
# @option --maxerrorlines <lines>                  Maximum number of error message lines to show in report when tests fail.
# @option --maxassignlength <characters>           Maximum number of characters to show in log when variables are assigned.
# @option -L --loglevel <level>                    Threshold level for logging.
# @option --suitestatlevel <level>                 How many levels to show in `Statistics by Suite` in log and report.
# @option --tagstatinclude*[`_choice_tag`] <tag>   Include only matching tags in `Statistics by Tag` in log and report.
# @option --tagstatexclude*[`_choice_tag`] <tag>   Exclude matching tags from `Statistics by Tag`.
# @option --tagstatcombine*[`_choice_tag`] <tags:name>  Create combined statistics based on tags.
# @option --tagdoc* <pattern:doc>                  Add documentation to tags matching the given pattern.
# @option --tagstatlink* <pattern:link:title>      Add external links into `Statistics by Tag`.
# @option --expandkeywords* <name:<pattern>|tag:<pattern>>  Matching keywords will be automatically expanded in the log file.
# @option --removekeywords* <all|passed|for|wuks|name:<pattern>|tag:<pattern>>  Remove keyword data from the generated log file.
# @option --flattenkeywords* <for|while|iteration|name:<pattern>|tag:<pattern>>  Flattens matching keywords in the generated log file.
# @flag --nostatusrc                               Sets the return code to zero regardless of failures in test cases.
# @flag --dryrun                                   Verifies test data and runs tests so that library keywords are not executed.
# @flag -X --exitonfailure                         Stops test execution if any test fails.
# @flag --exitonerror                              Stops test execution if any error occurs when parsing test data, importing libraries, and so on.
# @flag --skipteardownonexit                       Causes teardowns to be skipped if test execution is stopped prematurely.
# @option --randomize[all|suites|tests|none]       Randomizes the test execution order.
# @option --listener* <listener>                   Class or module for monitoring test execution.
# @option --prerunmodifier* <modifier>             Class to programmatically modify the suite structure before execution.
# @option --prerebotmodifier* <modifier>           Class to programmatically modify the result model before creating reports and logs.
# @option --parser* <parser>                       Custom parser class or module.
# @option --console <type>                         How to report execution on the console.
# @flag -. --dotted                                Shortcut for `--console dotted`.
# @flag --quiet                                    Shortcut for `--console quiet`.
# @option -W --consolewidth <chars>                Width of the console output.
# @option -C --consolecolors[auto|on|ansi|off]     Use colors on console output or not.
# @option -K --consolemarkers[auto|on|off]         Show markers on the console when top level keywords in a test case end.
# @option -P --pythonpath*[directories|ZIPs] <path>  Additional locations where to search libraries and other extensions when they are imported.
# @option -A --argumentfile* <path>                Text file to read more arguments from.
# @flag -h --help                                  Print usage instructions.
# @flag --version                                  Print version information.
# @arg file-robot+ <file:.robot>

_choice_testcase() {
    { for i in $(find . -name '*.robot' -type f); do cat -s $i ; done } |
    sed -n '/^\*\*\* Test Cases \*\*\*/,/^\*\*\* / {//d; /^\S/ p}' 
}

_choice_tag() {
    { for i in $(find . -name '*.robot' -type f); do cat -s $i ; done } |
    sed -n 's/^\s\+\[Tags\]\s\+\(.*\)\s*$/\1/p' | \
    sed 's/\s\s\+/\n/g'
}

command eval "$(argc --argc-eval "$0" "$@")"