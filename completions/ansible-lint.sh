#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                 show this help message and exit
# @flag -P --list-profiles                        List all profiles, no formatting options available.
# @flag -L --list-rules                           List all the rules.
# @flag -T --list-tags                            List all the tags and the rules they cover.
# @option -f --format[brief|full|md|json|codeclimate|quiet|pep8|sarif]  stdout formatting, json being an alias for codeclimate.
# @option --sarif-file <SARIF_FILE>               SARIF output file
# @flag -q                                        quieter, reduce verbosity, can be specified twice.
# @option --profile[min|basic|moderate|safety|shared|production]  Specify which rules profile to be used.
# @flag -p --parseable                            parseable output, same as '-f pep8'
# @option --project-dir <PROJECT_DIR>             Location of project/repository, autodetected based on location of configuration file.
# @option -r --rules-dir <RULESDIR>               Specify custom rule directories.
# @flag -R                                        Keep default rules when using -r
# @flag -s --strict                               Return non-zero exit code on warnings as well as errors
# @option --fix*,[`_choice_rule`] <WRITE_LIST>    Allow ansible-lint to perform auto-fixes, including YAML reformatting.
# @flag --show-relpath                            Display path relative to CWD
# @option -t --tags                               only check rules whose id/tags match these values
# @flag -v                                        Increase verbosity level (-vv for more)
# @option -x --skip-list*,[`_choice_rule`] <SKIP_LIST>  only check rules whose id/tags do not match these values.
# @flag --generate-ignore                         Generate a text file '.ansible-lint-ignore' that ignores all found violations.
# @option -w --warn-list*,[`_choice_rule`] <WARN_LIST>  only warn about these rules, unless overridden in config file.
# @option --enable-list*,[`_choice_rule`] <ENABLE_LIST>  activate optional rules by their tag name
# @flag --nocolor                                 disable colored output, same as NO_COLOR=1
# @flag --force-color                             Force colored output, same as FORCE_COLOR=1
# @option --exclude <EXCLUDE_PATHS+>              path to directories or files to skip.
# @option -c --config-file <CONFIG_FILE>          Specify configuration file to use.
# @option -i --ignore-file <IGNORE_FILE>          Specify ignore file to use.
# @flag --offline                                 Disable installation of requirements.yml and schema refreshing
# @flag --version
# @arg paths*

_choice_rule() {
    ansible-lint --list-rules  | \
    sed -n 's/^\s\+\x1b\S\+\x1b\\\(\S\+\)\x1b\]8;;\x1b\\\s\+\(.*\)\x1b\[2m.*/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"