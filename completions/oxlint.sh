#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <file:.json>              Oxlint configuration file (experimental) * only `.json` extension is supported * tries to be compatible with the ESLint v8's format
# @option --tsconfig <file:.json>               TypeScript `tsconfig.json` path for reading path alias and project references for import plugin
# @option -A --allow*[`_choice_rule`] <NAME>    Allow the rule or category (suppress the lint)
# @option -W --warn*[`_choice_rule`] <NAME>     Deny the rule or category (emit a warning)
# @option -D --deny*[`_choice_rule`] <NAME>     Deny the rule or category (emit an error)
# @flag --disable-react-plugin                  Disable react plugin, which is turned on by default
# @flag --disable-unicorn-plugin                Disable unicorn plugin, which is turned on by default
# @flag --disable-oxc-plugin                    Disable oxc unique rules, which is turned on by default
# @flag --disable-typescript-plugin             Disable TypeScript plugin, which is turned on by default
# @flag --import-plugin                         Enable the experimental import plugin and detect ESM problems.
# @flag --jsdoc-plugin                          Enable the experimental jsdoc plugin and detect JSDoc problems
# @flag --jest-plugin                           Enable the Jest plugin and detect test problems
# @flag --vitest-plugin                         Enable the Vitest plugin and detect test problems
# @flag --jsx-a11y-plugin                       Enable the JSX-a11y plugin and detect accessibility problems
# @flag --nextjs-plugin                         Enable the Next.js plugin and detect Next.js problems
# @flag --react-perf-plugin                     Enable the React performance plugin and detect rendering performance problems
# @flag --promise-plugin                        Enable the promise plugin and detect promise usage problems
# @flag --fix                                   Fix as many issues as possible.
# @flag --fix-suggestions                       Apply auto-fixable suggestions.
# @flag --fix-dangerously                       Apply dangerous fixes and suggestions.
# @option --ignore-path <PATH>                  Specify the file to use as your .eslintignore
# @option --ignore-pattern <PAT>                Specify patterns of files to ignore (in addition to those in .eslintignore)
# @flag --no-ignore                             Disables excluding of files from .eslintignore files, --ignore-path flags and --ignore-pattern flags
# @flag --symlinks                              Follow symbolic links.
# @flag --quiet                                 Disable reporting on warnings, only errors are reported
# @flag --deny-warnings                         Ensure warnings produce a non-zero exit code
# @option --max-warnings <INT>                  Specify a warning threshold, which can be used to force exit with an error status if there are too many warning-level rule violations in your project
# @option -f --format[default|json|unix|checkstyle|github] <ARG>  Use a specific output format
# @flag --silent                                Do not display any diagnostics
# @option --threads <INT>                       Number of threads to use.
# @flag --rules                                 list all the rules that are currently registered
# @flag -h --help                               Prints help information
# @flag -V --version                            Prints version information
# @arg path*

_choice_rule() {
    data="$(oxlint --rules)"
    echo "$data" | sed -n 's/## \(\S\+\).*/\L\1/p'
    echo "$data" | sed -n 's/^| \([a-z][a-z0-9-]\+\).*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"