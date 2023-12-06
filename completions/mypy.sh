#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --enable-incomplete-feature <FEATURE>    Enable support of incomplete/experimental features for early preview
# @flag -h --help                                  Show this help message and exit
# @flag -v --verbose                               More verbose messages
# @flag -V --version                               Show program's version number and exit
# @option --config-file <CONFIG_FILE>              Configuration file, must have a [mypy] section (defaults to mypy.ini, .mypy.ini, pyproject.toml, setup.cfg, ~/.config/mypy/config, ~/.mypy.ini)
# @flag --warn-unused-configs                      Warn about unused '[mypy-<pattern>]' or '[[tool.mypy.overrides]]' config sections (inverse: --no-warn-unused-configs)
# @flag --no-namespace-packages                    Support namespace packages (PEP 420, __init__.py-less) (inverse: --namespace-packages)
# @flag --ignore-missing-imports                   Silently ignore imports of missing modules
# @option --follow-imports[normal|silent|skip|error]  How to treat imports (default normal)
# @option --python-executable <EXECUTABLE>         Python executable used for finding PEP 561 compliant installed packages and stubs
# @flag --no-site-packages                         Do not search for installed PEP 561 compliant packages
# @flag --no-silence-site-packages                 Do not silence errors in PEP 561 compliant installed packages
# @option --python-version <x.y>                   Type check code assuming it will be running on Python x.y
# @option --platform                               Type check special-cased code for the given OS platform (defaults to sys.platform)
# @option --always-true <NAME>                     Additional variable to be considered True (may be repeated)
# @option --always-false <NAME>                    Additional variable to be considered False (may be repeated)
# @flag --disallow-any-unimported                  Disallow Any types resulting from unfollowed imports
# @flag --disallow-any-expr                        Disallow all expressions that have type Any
# @flag --disallow-any-decorated                   Disallow functions that have Any in their signature after decorator transformation
# @flag --disallow-any-explicit                    Disallow explicit Any in type positions
# @flag --disallow-any-generics                    Disallow usage of generic types that do not specify explicit type parameters (inverse: --allow-any-generics)
# @flag --disallow-subclassing-any                 Disallow subclassing values of type 'Any' when defining classes (inverse: --allow-subclassing-any)
# @flag --disallow-untyped-calls                   Disallow calling functions without type annotations from functions with type annotations (inverse: --allow-untyped-calls)
# @option --untyped-calls-exclude <MODULE>         Disable --disallow-untyped-calls for functions/methods coming from specific package, module, or class
# @flag --disallow-untyped-defs                    Disallow defining functions without type annotations or with incomplete type annotations (inverse: --allow-untyped-defs)
# @flag --disallow-incomplete-defs                 Disallow defining functions with incomplete type annotations (while still allowing entirely unannotated definitions) (inverse: --allow-incomplete-defs)
# @flag --check-untyped-defs                       Type check the interior of functions without type annotations (inverse: --no-check-untyped-defs)
# @flag --disallow-untyped-decorators              Disallow decorating typed functions with untyped decorators (inverse: --allow-untyped-decorators)
# @flag --implicit-optional                        Assume arguments with default values of None are Optional (inverse: --no-implicit-optional)
# @flag --no-strict-optional                       Disable strict Optional checks (inverse: --strict-optional)
# @flag --warn-redundant-casts                     Warn about casting an expression to its inferred type (inverse: --no-warn-redundant-casts)
# @flag --warn-unused-ignores                      Warn about unneeded '# type: ignore' comments (inverse: --no-warn-unused-ignores)
# @flag --no-warn-no-return                        Do not warn about functions that end without returning (inverse: --warn-no-return)
# @flag --warn-return-any                          Warn about returning values of type Any from non-Any typed functions (inverse: --no-warn-return-any)
# @flag --warn-unreachable                         Warn about statements or expressions inferred to be unreachable (inverse: --no-warn-unreachable)
# @flag --allow-untyped-globals                    Suppress toplevel errors caused by missing annotations (inverse: --disallow-untyped-globals)
# @flag --allow-redefinition                       Allow unconditional variable redefinition with a new type (inverse: --disallow-redefinition)
# @flag --no-implicit-reexport                     Treat imports as private unless aliased (inverse: --implicit-reexport)
# @flag --strict-equality                          Prohibit equality, identity, and container checks for non-overlapping types (inverse: --no-strict-equality)
# @flag --extra-checks                             Enable additional checks that are technically correct but may be impractical in real code.
# @flag --strict                                   Strict mode; enables the following flags: --warn-unused-configs, --disallow-any-generics, --disallow-subclassing-any, --disallow-untyped-calls, --disallow-untyped-defs, --disallow-incomplete-defs, --check-untyped-defs, --disallow-untyped-decorators, --warn-redundant-casts, --warn-unused-ignores, --warn-return-any, --no-implicit-reexport, --strict-equality, --extra-checks
# @option --disable-error-code <NAME>              Disable a specific error code
# @option --enable-error-code <NAME>               Enable a specific error code
# @flag --show-error-context                       Precede errors with "note:" messages explaining context (inverse: --hide-error-context)
# @flag --show-column-numbers                      Show column numbers in error messages (inverse: --hide-column-numbers)
# @flag --show-error-end                           Show end line/end column numbers in error messages.
# @flag --hide-error-codes                         Hide error codes in error messages (inverse: --show-error-codes)
# @flag --show-error-code-links                    Show links to error code documentation (inverse: --hide-error-code-links)
# @flag --pretty                                   Use visually nicer output in error messages: Use soft word wrap, show source code snippets, and show error location markers (inverse: --no-pretty)
# @flag --no-color-output                          Do not colorize error messages (inverse: --color-output)
# @flag --no-error-summary                         Do not show error stats summary (inverse: --error-summary)
# @flag --show-absolute-path                       Show absolute paths to files (inverse: --hide-absolute-path)
# @flag --no-incremental                           Disable module cache (inverse: --incremental)
# @option --cache-dir <DIR>                        Store module cache info in the given folder in incremental mode (defaults to '.mypy_cache')
# @flag --sqlite-cache                             Use a sqlite database to store the cache (inverse: --no-sqlite-cache)
# @flag --cache-fine-grained                       Include fine-grained dependency information in the cache for the mypy daemon
# @flag --skip-version-check                       Allow using cache written by older mypy version
# @flag --skip-cache-mtime-checks                  Skip cache internal consistency checks based on mtime
# @flag --pdb                                      Invoke pdb on fatal error
# @flag --show-traceback                           Show traceback on fatal error
# @flag --tb                                       Show traceback on fatal error
# @flag --raise-exceptions                         Raise exception on fatal error
# @option --custom-typing-module <MODULE>          Use a custom typing module
# @flag --old-type-inference                       Disable new experimental type inference algorithm
# @option --custom-typeshed-dir <DIR>              Use the custom typeshed in DIR
# @flag --warn-incomplete-stub                     Warn if missing type annotation in typeshed, only relevant with --disallow-untyped-defs or --disallow-incomplete-defs enabled (inverse: --no-warn-incomplete-stub)
# @flag --shadow-file                              SOURCE_FILE SHADOW_FILE When encountering SOURCE_FILE, read and type check the contents of SHADOW_FILE instead.
# @option --any-exprs-report <DIR>
# @option --cobertura-xml-report <DIR>
# @option --html-report <DIR>
# @option --linecount-report <DIR>
# @option --linecoverage-report <DIR>
# @option --lineprecision-report <DIR>
# @option --txt-report <DIR>
# @option --xml-report <DIR>
# @option --xslt-html-report <DIR>
# @option --xslt-txt-report <DIR>
# @option --junit-xml <JUNIT_XML>                  Write junit.xml to the given file
# @option --find-occurrences <CLASS.MEMBER>        Print out all usages of a class member (experimental)
# @flag --scripts-are-modules                      Script x becomes module x instead of __main__
# @flag --install-types                            Install detected missing library stub packages using pip (inverse: --no-install-types)
# @flag --non-interactive                          Install stubs without asking for confirmation and hide errors, with --install-types (inverse: --interactive)
# @flag --explicit-package-bases                   Use current directory and MYPYPATH to determine module names of files passed (inverse: --no-explicit-package-bases)
# @option --exclude <PATTERN>                      Regular expression to match file names, directory names or paths which mypy should ignore while recursively discovering files to check, e.g. --exclude '/setup\.py$'.
# @option -m --module                              Type-check module; can repeat for more modules
# @option -p --package                             Type-check package recursively; can be repeated
# @option -c --command <PROGRAM_TEXT>              Type-check program passed in as string
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"