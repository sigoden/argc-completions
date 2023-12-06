#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --bundle                                   Bundle all dependencies into the output files
# @option --define-* <:K=V>                        Substitute K with V while parsing
# @option --external-* <:M>                        Exclude module M from the bundle (can use * wildcards)
# @option --format[iife|cjs|esm] <string>          Output format (iife | cjs | esm, no default when not bundling, otherwise default is iife when platform is browser and cjs when platform is node)
# @option --loader-* <:X=L>                        Use loader L to load file extension X, where L is one of: base64 | binary | copy | css | dataurl | empty | file | global-css | js | json | jsx | local-css | text | ts | tsx
# @flag --minify                                   Minify the output (sets all --minify-* flags)
# @option --outdir <dir>                           The output directory (for multiple entry points)
# @option --outfile <file>                         The output file (for one entry point)
# @option --packages <string>                      Set to "external" to avoid bundling any package
# @option --platform <string>                      Platform target (browser | node | neutral, default browser)
# @option --serve <string>                         Start a local HTTP server on this host-... :port for outputs
# @flag --splitting                                Enable code splitting (currently only for esm)
# @option --target <string>                        Environment target (e.g. es2017, chrome58, firefox57, safari11, edge16, node10, ie9, opera45, default esnext)
# @flag --watch                                    Watch mode-... : rebuild on file system changes (stops when stdin is closed, use "--watch=forever" to ignore stdin)
# @flag --allow-overwrite                          Allow output files to overwrite input files
# @flag --analyze                                  Print a report about the contents of the bundle (use "--analyze=verbose" for a detailed report)
# @option --asset-names <file>                     Path template to use for "file" loader files (default "[name]-[hash]")
# @option --banner-* <file>                        Text to be prepended to each output file of type T where T is one of: css | js
# @option --certfile <file>                        Certificate for serving HTTPS (see also "--keyfile")
# @option --charset <utf8>                         Do not escape UTF-8 code points
# @option --chunk-names <path>                     Path template to use for code splitting chunks (default "[name]-[hash]")
# @option --color[true|false] <string>             Force use of color terminal escapes
# @option --drop-*[console|debugger] <:>           Remove certain constructs
# @option --drop-labels <string>                   Remove labeled statements with these label names
# @option --entry-names <dir>                      Path template to use for entry point output paths (default "[dir]/[name]", can also use "[hash]")
# @option --footer-* <file>                        Text to be appended to each output file of type T where T is one of: css | js
# @option --global-name <string>                   The name of the global for the IIFE format
# @flag --ignore-annotations                       Enable this to work with packages that have incorrect tree-shaking annotations
# @option --inject-* <:F>                          Import the file F into all input files and automatically replace matching globals with imports
# @flag --jsx-dev                                  Use React's automatic runtime in development mode
# @option --jsx-factory <string>                   What to use for JSX instead of React.createElement
# @option --jsx-fragment <string>                  What to use for JSX instead of React.Fragment
# @option --jsx-import-source <string>             Override the package name for the automatic runtime (default "react")
# @flag --jsx-side-effects                         Do not remove unused JSX expressions
# @option --jsx <string>                           Set to "automatic" to use React's automatic runtime or to "preserve" to disable transforming JSX to JS
# @flag --keep-names                               Preserve "name" on functions and classes
# @option --keyfile <file>                         Key for serving HTTPS (see also "--certfile")
# @option --legal-comments <string>                Where to place legal comments (none | inline | eof | linked | external, default eof when bundling and inline otherwise)
# @option --line-limit <string>                    Lines longer than this will be wrap onto a new line
# @option --log-level <string>                     Disable logging (verbose | debug | info | warning | error | silent, default info)
# @option --log-limit <string>                     Maximum message count or 0 to disable (default 6)
# @option --log-override-* <:X=Y>                  Use log level Y for log messages with identifier X
# @option --main-fields <file>                     Override the main file order in package.json (default "browser,module,main" when platform is browser and "main,module" when platform is node)
# @option --mangle-cache <file>                    Save "mangle props" decisions to a JSON file
# @option --mangle-props <string>                  Rename all properties matching a regular expression
# @option --mangle-quoted[true|false] <string>     Enable renaming of quoted properties
# @option --metafile <file>                        Write metadata about the build to a JSON file (see also: https://esbuild.github.io/analyze/)
# @flag --minify-whitespace                        Remove whitespace in output files
# @flag --minify-identifiers                       Shorten identifiers in output files
# @flag --minify-syntax                            Use equivalent but shorter syntax in output files
# @option --out-extension-* <:.js=.mjs>            Use a custom output extension instead of ".js"
# @option --outbase <path>                         The base path used to determine entry point output paths (for multiple entry points)
# @flag --preserve-symlinks                        Disable symlink resolution for module lookup
# @option --public-path <file>                     Set the base URL for the "file" loader
# @option --pure-* <:N>                            Mark the name N as a pure function for tree shaking
# @option --reserve-props <string>                 Do not mangle these properties
# @option --resolve-extensions <string>            A comma-separated list of implicit extensions (default ".tsx,.ts,.jsx,.js,.css,.json")
# @option --serve-fallback <string>                Serve this HTML page when the request doesn't match
# @option --servedir <path>                        What to serve in addition to generated output files
# @option --source-root <string>                   Sets the "sourceRoot" field in generated source maps
# @option --sourcefile <file>                      Set the source file for the source map (for stdin)
# @option --sourcemap[external|inline] <inline>    Set sourcemap option
# @option --sources-content <false>                Omit "sourcesContent" in generated source maps
# @option --supported-* <:F=string>                Consider syntax F to be supported
# @option --tree-shaking[false|true] <string>      Force tree shaking on or off
# @option --tsconfig <file>                        Use this tsconfig.json file instead of other ones
# @flag --version                                  Print the current version (0.19.8) and exit
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"