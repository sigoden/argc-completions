#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help (see a summary with '-h')
# @flag -V --version    Print version

# {{ sg run
# @cmd Run one time search or rewrite in command line.
# @option -p --pattern               AST pattern to match
# @option -r --rewrite <FIX>         String to replace the matched AST node
# @option -l --lang                  The language of the pattern.
# @flag --debug-query                Print query pattern's tree-sitter AST.
# @option --no-ignore <FILE_TYPE>    Do not respect hidden file system or ignore files (.gitignore, .ignore, etc.).
# @flag --stdin                      Enable search code from StdIn.
# @flag -i --interactive             Start interactive edit session.
# @flag -U --update-all              Apply all rewrite without confirmation if true
# @option --json <style>             Output matches in structured JSON .
# @option --color <WHEN>             Controls output color.
# @option --heading <WHEN>           Controls whether to print the file name as heading.
# @option -A --after <NUM>           Show NUM lines after each match.
# @option -B --before <NUM>          Show NUM lines before each match.
# @option -C --context <NUM>         Show NUM lines around each match.
# @flag -h --help                    Print help (see a summary with '-h')
# @arg paths*                        The paths to search.
run() {
    :;
}
# }} sg run

# {{ sg scan
# @cmd Scan and rewrite code by configuration
# @option -c --config <CONFIG_FILE>        Path to ast-grep root config, default is sgconfig.yml
# @option -r --rule <RULE_FILE>            Scan the codebase with the single rule located at the path RULE_FILE.
# @option --filter <REGEX>                 Scan the codebase with rules with ids matching REGEX.
# @option --format[github]                 Output warning/error messages in GitHub Action format.
# @option --report-style <REPORT_STYLE>    [default: rich]
# @option --no-ignore <FILE_TYPE>          Do not respect hidden file system or ignore files (.gitignore, .ignore, etc.).
# @flag --stdin                            Enable search code from StdIn.
# @flag -i --interactive                   Start interactive edit session.
# @flag -U --update-all                    Apply all rewrite without confirmation if true
# @option --json <style>                   Output matches in structured JSON .
# @option --color <WHEN>                   Controls output color.
# @flag -h --help                          Print help (see a summary with '-h')
# @arg paths*                              The paths to search.
scan() {
    :;
}
# }} sg scan

# {{ sg test
# @cmd Test ast-grep rules
# @option -c --config                      Path to the root ast-grep config YAML
# @option -t --test-dir <TEST_DIR>         the directories to search test YAML files
# @option --snapshot-dir <SNAPSHOT_DIR>    Specify the directory name storing snapshots.
# @flag --skip-snapshot-tests              Only check if the test code is valid, without checking rule output.
# @flag -U --update-all                    Update the content of all snapshots that have changed in test.
# @flag -i --interactive                   Start an interactive review to update snapshots selectively
# @option -f --filter <REGEX>              Only run rule test cases that matches REGEX
# @flag -h --help                          Print help
test() {
    :;
}
# }} sg test

# {{ sg new
# @cmd Create new ast-grep project or items like rules/tests
# @option -l --lang                   The language of the item to create.
# @flag -y --yes                      Accept all default options without interactive input during creation.
# @option -b --base-dir <BASE_DIR>    Create new project/items in the folder specified by this argument
# @flag -h --help                     Print help (see a summary with '-h')
# @arg name                           The id of the item to create
new() {
    :;
}

# {{{ sg new project
# @cmd Create an new project by scaffolding
# @option -l --lang                   The language of the item to create.
# @flag -y --yes                      Accept all default options without interactive input during creation.
# @option -b --base-dir <BASE_DIR>    Create new project/items in the folder specified by this argument
# @flag -h --help                     Print help (see a summary with '-h')
# @arg name                           The id of the item to create
new::project() {
    :;
}
# }}} sg new project

# {{{ sg new rule
# @cmd Create a new rule
# @option -l --lang                   The language of the item to create.
# @flag -y --yes                      Accept all default options without interactive input during creation.
# @option -b --base-dir <BASE_DIR>    Create new project/items in the folder specified by this argument
# @flag -h --help                     Print help (see a summary with '-h')
# @arg name                           The id of the item to create
new::rule() {
    :;
}
# }}} sg new rule

# {{{ sg new test
# @cmd Create a new test case
# @option -l --lang                   The language of the item to create.
# @flag -y --yes                      Accept all default options without interactive input during creation.
# @option -b --base-dir <BASE_DIR>    Create new project/items in the folder specified by this argument
# @flag -h --help                     Print help (see a summary with '-h')
# @arg name                           The id of the item to create
new::test() {
    :;
}
# }}} sg new test

# {{{ sg new util
# @cmd Create a new global utility rule
# @option -l --lang                   The language of the item to create.
# @flag -y --yes                      Accept all default options without interactive input during creation.
# @option -b --base-dir <BASE_DIR>    Create new project/items in the folder specified by this argument
# @flag -h --help                     Print help (see a summary with '-h')
# @arg name                           The id of the item to create
new::util() {
    :;
}
# }}} sg new util
# }} sg new

# {{ sg lsp
# @cmd Start language server
# @flag -h --help    Print help
lsp() {
    :;
}
# }} sg lsp

# {{ sg completions
# @cmd Generate shell completion script
# @flag -h --help                                Print help
# @arg shell[bash|elvish|fish|powershell|zsh]    Output the completion file for given shell.
completions() {
    :;
}
# }} sg completions

# {{ sg docs
# @cmd Generate rule docs for current configuration.
# @flag -h --help    Print help
docs() {
    :;
}
# }} sg docs

command eval "$(argc --argc-eval "$0" "$@")"