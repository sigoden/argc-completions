#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                   Show this help text
# @flag -v --version                Show version
# @option -c --config <FILENAME>    Path to the configuration file
# @option --file-path-in-report <FILEPATHINREPORT>  The file path referenced in the generated report.
# @flag --no-fail                   Don't exit with a failure status code when any rule is violated
# @flag --no-color                  Don't colorize output
# @flag -V --verbose                Enables verbose logging of hadolint's output to stderr
# @option -f --format[tty|json|checkstyle|codeclimate|gitlab_codeclimate|gnu|codacy|sonarqube|sarif] <ARG>  The output format for the results (default: tty)
# @option --error <RULECODE>        Make the rule `RULECODE` have the level `error`
# @option --warning <RULECODE>      Make the rule `RULECODE` have the level `warning`
# @option --info <RULECODE>         Make the rule `RULECODE` have the level `info`
# @option --style <RULECODE>        Make the rule `RULECODE` have the level `style`
# @option --ignore <RULECODE>       A rule to ignore.
# @flag --trusted-registry          REGISTRY (e.g. docker.io) A docker registry to allow to appear in FROM instructions
# @flag --require-label             LABELSCHEMA (e.g. maintainer:text) The option --require-label=label:format makes Hadolint check that the label `label` conforms to format requirement `format`
# @flag --strict-labels             Do not permit labels other than specified in `label-schema`
# @flag --disable-ignore-pragma     Disable inline ignore pragmas `# hadolint ignore=DLxxxx`
# @option -t --failure-threshold[error|warning|info|style|ignore|none] <THRESHOLD>  Exit with failure code only when rules with a severity equal to or above THRESHOLD are violated.
# @arg dockerfile*

command eval "$(argc --argc-eval "$0" "$@")"