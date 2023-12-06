#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <filename>                   Use this config file (if argument is used but value is unspecified, defaults to rollup.config.js)
# @option -d --dir <dirname>                       Directory for chunks (if absent, prints to stdout)
# @option -e --external <ids>                      Comma-separate list of module IDs to exclude
# @option -f --format[amd|cjs|es|iife|umd|system] <format>  Type of output
# @option -g --globals <pairs>                     Comma-separate list of `moduleID:Global` pairs
# @flag -h --help                                  Show this help message
# @option -i --input <filename>                    Input (alternative to <entry file>)
# @flag -m --sourcemap                             Generate sourcemap (`-m inline` for inline map)
# @option -n --name <name>                         Name for UMD export
# @option -o --file <output>                       Single output file (if absent, prints to stdout)
# @option -p --plugin <plugin>                     Use the plugin specified (may be repeated)
# @flag -v --version                               Show version number
# @flag -w --watch                                 Watch files in bundle and rebuild on changes
# @flag --amd.autoId                               Generate the AMD ID based off the chunk name
# @option --amd.basePath <prefix>                  Path to prepend to auto generated AMD ID
# @option --amd.define <name>                      Function to use in place of `define`
# @flag --amd.forceJsExtensionForImports           Use `.js` extension in AMD imports
# @option --amd.id <id>                            ID for AMD module (default is anonymous)
# @option --assetFileNames <pattern>               Name pattern for emitted assets
# @option --banner <text>                          Code to insert at top of bundle (outside wrapper)
# @option --chunkFileNames <pattern>               Name pattern for emitted secondary chunks
# @flag --compact                                  Minify wrapper code
# @option --context <variable>                     Specify top-level `this` value
# @flag --no-dynamicImportInCjs                    Write external dynamic CommonJS imports as require
# @option --entryFileNames <pattern>               Name pattern for emitted entry chunks
# @option --environment <values>                   Settings passed to config file (see example)
# @flag --no-esModule                              Do not add __esModule property
# @option --exports[auto|default|named|none] <mode>  Specify export mode
# @flag --extend                                   Extend global variable defined by --name
# @flag --no-externalImportAttributes              Omit import attributes in "es" output
# @flag --no-externalLiveBindings                  Do not generate code to support live bindings
# @flag --failAfterWarnings                        Exit with an error if the build produced warnings
# @option --filterLogs <filter>                    Filter log messages
# @option --footer <text>                          Code to insert at end of bundle (outside wrapper)
# @flag --forceExit                                Force exit the process when done
# @flag --no-freeze                                Do not freeze namespace objects
# @option --generatedCode <preset>                 Which code features to use (es5/es2015)
# @flag --generatedCode.arrowFunctions             Use arrow functions in generated code
# @flag --generatedCode.constBindings              Use "const" in generated code
# @flag --generatedCode.objectShorthand            Use shorthand properties in generated code
# @flag --no-generatedCode.reservedNamesAsProps    Always quote reserved names as props
# @flag --generatedCode.symbols                    Use symbols in generated code
# @flag --no-hoistTransitiveImports                Do not hoist transitive imports into entry chunks
# @flag --no-indent                                Don't indent result
# @flag --inlineDynamicImports                     Create single bundle when using dynamic imports
# @flag --no-interop                               Do not include interop block
# @option --intro <text>                           Code to insert at top of bundle (inside wrapper)
# @option --logLevel <level>                       Which kind of logs to display
# @flag --no-makeAbsoluteExternalsRelative         Prevent normalization of external imports
# @option --maxParallelFileOps <value>             How many files to read in parallel
# @flag --minifyInternalExports                    Force or disable minification of internal exports
# @flag --noConflict                               Generate a noConflict method for UMD globals
# @option --outro <text>                           Code to insert at end of bundle (inside wrapper)
# @flag --perf                                     Display performance timings
# @flag --no-preserveEntrySignatures               Avoid facade chunks for entry points
# @flag --preserveModules                          Preserve module structure
# @flag --preserveModulesRoot                      Put preserved modules under this path at root level
# @flag --preserveSymlinks                         Do not follow symlinks when resolving files
# @flag --no-sanitizeFileName                      Do not replace invalid characters in file names
# @flag --shimMissingExports                       Create shim variables for missing exports
# @flag --silent                                   Don't print warnings
# @option --sourcemapBaseUrl <url>                 Emit absolute sourcemap URLs with given base
# @flag --sourcemapExcludeSources                  Do not include source code in source maps
# @option --sourcemapFile <file>                   Specify bundle position for source maps
# @option --sourcemapFileNames <pattern>           Name pattern for emitted sourcemaps
# @option --stdin <ext>                            Specify file extension used for stdin input
# @flag --no-stdin                                 Do not read "-" from stdin
# @flag --no-strict                                Don't emit `"use strict";` in the generated modules
# @flag --strictDeprecations                       Throw errors for deprecated features
# @flag --no-systemNullSetters                     Do not replace empty SystemJS setters with `null`
# @flag --no-treeshake                             Disable tree-shaking optimisations
# @flag --no-treeshake.annotations                 Ignore pure call annotations
# @flag --treeshake.correctVarValueBeforeDeclaration  Deoptimize variables until declared
# @option --treeshake.manualPureFunctions <names>  Manually declare functions as pure
# @flag --no-treeshake.moduleSideEffects           Assume modules have no side effects
# @flag --no-treeshake.propertyReadSideEffects     Ignore property access side effects
# @flag --no-treeshake.tryCatchDeoptimization      Do not turn off try-catch-tree-shaking
# @flag --no-treeshake.unknownGlobalSideEffects    Assume unknown globals do not throw
# @flag --validate                                 Validate output
# @flag --waitForBundleInput                       Wait for bundle input files
# @option --watch.buildDelay <number>              Throttle watch rebuilds
# @flag --no-watch.clearScreen                     Do not clear the screen when rebuilding
# @option --watch.exclude <files>                  Exclude files from being watched
# @option --watch.include <files>                  Limit watching to specified files
# @option --watch.onBundleEnd <cmd>                Shell command to run on `"BUNDLE_END"` event
# @option --watch.onBundleStart <cmd>              Shell command to run on `"BUNDLE_START"` event
# @option --watch.onEnd <cmd>                      Shell command to run on `"END"` event
# @option --watch.onError <cmd>                    Shell command to run on `"ERROR"` event
# @option --watch.onStart <cmd>                    Shell command to run on `"START"` event
# @flag --watch.skipWrite                          Do not write files to disk when watching
# @arg entry-file! <entry file>

command eval "$(argc --argc-eval "$0" "$@")"