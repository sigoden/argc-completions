#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e --eval <code>                 Evaluate code
# @flag -p --print                         Print result of `--eval`
# @option -r --require <path>              Require a node module before execution
# @flag -i --interactive                   Opens the REPL even if stdin does not appear to be a terminal
# @flag --esm                              Bootstrap with the ESM loader, enabling full ESM support
# @flag --swc                              Use the faster swc transpiler
# @flag -h --help                          Print CLI usage
# @flag -v --version                       Print module version information.
# @flag --showConfig                       Print resolved configuration and exit
# @flag -T --transpileOnly                 Use TypeScript's faster `transpileModule` or a third-party transpiler
# @flag -H --compilerHost                  Use TypeScript's compiler host API
# @option -I --ignore <pattern>            Override the path patterns to skip compilation
# @option -P --project <path>              Path to TypeScript JSON project file
# @option -C --compiler <name>             Specify a custom TypeScript compiler
# @option --transpiler <name>              Specify a third-party, non-typechecking transpiler
# @option -D --ignoreDiagnostics <code>    Ignore TypeScript warnings by diagnostic code
# @option -O --compilerOptions <opts>      JSON object to merge with compiler options
# @flag --cwd                              Behave as if invoked within this working directory.
# @flag --files                            Load `files`, `include` and `exclude` from `tsconfig.json` on startup
# @flag --pretty                           Use pretty diagnostic formatter (usually enabled by default)
# @flag --cwdMode                          Use current directory instead of <script.ts> for config resolution
# @flag --skipProject                      Skip reading `tsconfig.json`
# @flag --skipIgnore                       Skip `--ignore` checks
# @flag --emit                             Emit output files into `.ts-node` directory
# @flag --scope                            Scope compiler to files within `scopeDir`.
# @flag --scopeDir                         Directory for `--scope`
# @flag --preferTsExts                     Prefer importing TypeScript files over JavaScript files
# @flag --logError                         Logs TypeScript errors to stderr instead of throwing exceptions
# @flag --noExperimentalReplAwait          Disable top-level await in REPL.
# @option --experimentalSpecifierResolution <node|explicit>  Equivalent to node's --experimental-specifier-resolution

command eval "$(argc --argc-eval "$0" "$@")"