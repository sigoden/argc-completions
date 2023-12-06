#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -access-notes-path <value>               Specify YAML file to override attributes on Swift declarations in this module
# @option -allowable-client <vers>                 Module names that are allowed to import this module
# @option -assert-config <value>                   Specify the assert_configuration replacement.
# @option -clang-build-session-file <value>        Use the last modification time of <file> as the underlying Clang build session timestamp
# @option -clang-target <value>                    Separately set the target we should use for internal Clang instance
# @flag -color-diagnostics                         Print diagnostics in color
# @flag -continue-building-after-errors            Continue building, even after errors are encountered
# @option -coverage-prefix-map <prefix=replacement>  Remap source paths in coverage info
# @option -cxx-interoperability-mode <value>       Enables C++ interoperability; pass 'default' to enable or 'off' to disable
# @option -debug-info-format <value>               Specify the debug info format type to either 'dwarf' or 'codeview'
# @flag -debug-info-store-invocation               Emit the compiler invocation in the debug info.
# @option -debug-prefix-map <prefix=replacement>   Remap source paths in debug info
# @option -diagnostic-style <style>                The formatting style used when printing diagnostics ('swift' or 'llvm')
# @flag -disable-actor-data-race-checks            Disable runtime checks for actor data races
# @flag -disable-autolinking-runtime-compatibility-concurrency  Do not use autolinking for the concurrency runtime compatibility library
# @flag -disable-autolinking-runtime-compatibility-dynamic-replacements  Do not use autolinking for the dynamic replacement runtime compatibility library
# @flag -disable-autolinking-runtime-compatibility  Do not use autolinking for runtime compatibility libraries
# @flag -disable-clang-target                      Disable a separately specified target triple for Clang instance to use
# @flag -disable-incremental-imports               Disable cross-module incremental build metadata and driver scheduling for Swift modules
# @flag -disable-only-one-dependency-file          Disables incremental build optimization that only produces one dependencies file
# @flag -disallow-use-new-driver                   Disable using new swift-driver
# @option -D <value>                               Marks a conditional compilation flag as true
# @option -embed-tbd-for-module <value>            Embed symbols from the module in the emitted tbd file
# @option -emit-module-dependencies-path <path>    Emit a discovered dependencies file for the emit-module task to <path>
# @option -emit-module-serialize-diagnostics-path <path>  Emit a serialized diagnostics file for the emit-module task to <path>
# @flag -enable-actor-data-race-checks             Emit runtime checks for actor data races
# @flag -enable-autolinking-runtime-compatibility-bytecode-layouts  Enable autolinking for the bytecode layouts runtime compatibility library
# @flag -enable-bare-slash-regex                   Enable the use of forward slash regular-expression literal syntax
# @flag -enable-builtin-module                     Enables the explicit import of the Builtin module
# @flag -enable-experimental-additive-arithmetic-derivation  Enable experimental 'AdditiveArithmetic' derived conformances
# @flag -enable-experimental-concise-pound-file    Enable experimental concise '#file' identifier
# @option -enable-experimental-feature <value>     Enable an experimental feature
# @flag -enable-experimental-forward-mode-differentiation  Enable experimental forward mode differentiation
# @flag -enable-incremental-imports                Enable cross-module incremental build metadata and driver scheduling for Swift modules
# @flag -enable-library-evolution                  Build the module to allow binary-compatible library evolution
# @flag -enable-only-one-dependency-file           Enables incremental build optimization that only produces one dependencies file
# @option -enable-upcoming-feature <value>         Enable a feature that will be introduced in an upcoming language version
# @option -enforce-exclusivity <enforcement>       Enforce law of exclusivity
# @option -explain-module-dependency <value>       Emit remark/notes describing why compilaiton may depend on a module with a given name.
# @option -export-as <value>                       Module name to use when referenced in clients module interfaces
# @option -external-plugin-path <<path>#<plugin-server-path>>  Add directory to the plugin search path with a plugin server executable
# @option -e <value>                               Executes a line of code provided on the command line
# @option -file-compilation-dir <path>             The compilation directory to embed in the debug info.
# @option -file-prefix-map <prefix=replacement>    Remap source paths in debug, coverage, and index info
# @option -framework <value>                       Specifies a framework which should be linked against
# @option -Fsystem <value>                         Add directory to system framework search path
# @option -F <value>                               Add directory to framework search path
# @flag -gdwarf-types                              Emit full DWARF type info.
# @flag -gline-tables-only                         Emit minimal debug info for backtraces only
# @flag -gnone                                     Don't emit debug info
# @flag -g                                         Emit debug info.
# @flag -help                                      Display available options
# @flag -index-ignore-clang-modules                Avoid indexing clang modules (pcms)
# @flag -index-include-locals                      Include local definitions/references in the produced index data.
# @option -index-store-path <path>                 Store indexing data to <path>
# @option -index-unit-output-path <path>           Use <path> as the output path in the produced index data.
# @option -I <value>                               Add directory to the import search path
# @option -j <n>                                   Number of commands to execute in parallel
# @option -libc <value>                            libc runtime library to use
# @flag -link-objc-runtime                         Deprecated
# @option -load-plugin-executable <<path>#<module-names>>  Path to an executable compiler plugins and providing module names such as macros
# @option -load-plugin-library <path>              Path to a dynamic library containing compiler plugins such as macros
# @option -locale <locale-code>                    Choose a language for diagnostic messages
# @option -localization-path <path>                Path to localized diagnostic messages directory
# @option -L <value>                               Add directory to library link search path
# @option -l <value>                               Specifies a library which should be linked against
# @option -module-abi-name <value>                 ABI name to use for the contents of this module
# @option -module-alias <alias_name=underlying_name>  If a source file imports or references module <alias_name>, the <underlying_name> is used for the contents of the file
# @option -module-cache-path <value>               Specifies the Clang module cache path
# @option -module-link-name <value>                Library to link against when using this module
# @option -module-name <value>                     Name of the module to build
# @flag -no-color-diagnostics                      Do not print diagnostics in color
# @flag -no-warnings-as-errors                     Don't treat warnings as errors
# @flag -nostdimport                               Don't search the standard library import path for modules
# @option -num-threads <n>                         Enable multi-threading and specify number of threads
# @flag -Onone                                     Compile without any optimization
# @flag -Osize                                     Compile with optimizations and target small code size
# @flag -Ounchecked                                Compile with optimizations and remove runtime safety checks
# @flag -O                                         Compile with optimizations
# @option -package-name <value>                    Name of the package the module belongs to
# @option -plugin-path <value>                     Add directory to the plugin search path
# @flag -prefix-serialized-debugging-options       Apply debug prefix mappings to serialized debug info in Swiftmodule files
# @flag -pretty-print                              Pretty-print the output JSON
# @flag -print-educational-notes                   Include educational notes in printed diagnostic output, if available
# @flag -print-target-info                         Print target information for the given target <triple>, such as x86_64-apple-macos10.9
# @flag -Rcross-import                             Emit a remark if a cross-import of a module is triggered.
# @flag -remove-runtime-asserts                    Remove runtime safety checks.
# @flag -Rindexing-system-module                   Emit a remark when indexing a system module
# @flag -Rmodule-loading                           Emit a remark and file path of each loaded module
# @option -Rpass-missed <value>                    Report missed transformations by optimization passes whose name matches the given POSIX regular expression
# @option -Rpass <value>                           Report performed transformations by optimization passes whose name matches the given POSIX regular expression
# @flag -Rskip-explicit-interface-build            Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date
# @option -runtime-compatibility-version <value>   Link compatibility library for Swift runtime version, or 'none'
# @option -save-optimization-record-passes <regex>  Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)
# @option -save-optimization-record-path <value>   Specify the file name of any generated optimization record
# @option -save-optimization-record <format>       Generate an optimization record file in a specific format (default: YAML)
# @option -sdk <sdk>                               Compile against <sdk>
# @option -serialize-diagnostics-path <path>       Emit a serialized diagnostics file to <path>
# @flag -static-executable                         Statically link the executable
# @flag -static-stdlib                             Statically link the Swift standard library
# @option -strict-concurrency <value>              Specify the how strict concurrency checking will be.
# @flag -suppress-remarks                          Suppress all remarks
# @flag -suppress-warnings                         Suppress all warnings
# @option -swift-isa-ptrauth-mode <mode>           Mode for staging isa/super signing.
# @option -swift-ptrauth-mode <mode>               Mode for staging pointer authentication.
# @option -swift-version <vers>                    Interpret input according to a specific Swift language version number
# @option -target-cpu <value>                      Generate code for a particular CPU variant
# @option -target-min-inlining-version <value>     Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS
# @option -target-variant <value>                  Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple
# @option -target <triple>                         Generate code for the given target <triple>, such as x86_64-apple-macos10.9
# @option -use-ld <value>                          Specifies the linker to be used
# @option -user-module-version <vers>              Module version specified from Swift module authors
# @flag -validate-clang-modules-once               Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session
# @flag -version                                   Print version information and exit
# @option -vfsoverlay <value>                      Add directory to VFS overlay file
# @option -visualc-tools-root <root>               VisualC++ Tools Root
# @option -visualc-tools-version <version>         VisualC++ ToolSet Version
# @flag -v                                         Show commands to run and use verbose output
# @flag -warn-concurrency                          Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version
# @flag -warn-implicit-overrides                   Warn about implicit overrides of protocol members
# @flag -warn-swift3-objc-inference-complete       Warn about deprecated @objc inference in Swift 3 for every declaration that will no longer be inferred as @objc in Swift 4
# @flag -warn-swift3-objc-inference-minimal        Warn about deprecated @objc inference in Swift 3 based on direct uses of the Objective-C entrypoint
# @flag -warnings-as-errors                        Treat warnings as errors
# @option -windows-sdk-root <root>                 Windows SDK Root
# @option -windows-sdk-version <version>           Windows SDK Version
# @option -working-directory <path>                Resolve file paths relative to the specified directory
# @option -Xcc <arg>                               Pass <arg> to the C/C++/Objective-C compiler
# @option -Xlinker <value>                         Specifies an option which should be passed to the linker

# {{ swift build
# @cmd Build Swift packages
# @option --package-path <package-path>           Specify the package path to operate on (default current directory).
# @option --cache-path <cache-path>               Specify the shared cache directory path
# @option --config-path <config-path>             Specify the shared configuration directory path
# @option --security-path <security-path>         Specify the shared security directory path
# @option --scratch-path <scratch-path>           Specify a custom scratch directory path (default .build)
# @option --pkg-config-path <pkg-config-path>     Specify alternative path to search for pkg-config `.pc` files.
# @option --enable-dependency-cache </--disable-dependency-cache>  Use a shared cache when fetching dependencies (default: --enable-dependency-cache)
# @option --enable-build-manifest-caching </--disable-build-manifest-caching>  (default: --enable-build-manifest-caching)
# @option --manifest-cache <manifest-cache>       Caching mode of Package.swift manifests (shared: shared cache, local: package's build directory, none: disabled (default: shared)
# @flag -v --verbose                              Increase verbosity to include informational output
# @flag --very-verbose                            Increase verbosity to include debug output
# @flag --vv                                      Increase verbosity to include debug output
# @flag -q --quiet                                Decrease verbosity to only include error output.
# @flag --disable-sandbox                         Disable using the sandbox when executing subprocesses
# @flag --netrc                                   Use netrc file even in cases where other credential stores are preferred
# @option --enable-netrc </--disable-netrc>       Load credentials from a netrc file (default: --enable-netrc)
# @option --netrc-file <netrc-file>               Specify the netrc file path
# @option --enable-keychain </--disable-keychain>  Search credentials in macOS keychain (default: --enable-keychain)
# @option --resolver-fingerprint-checking <resolver-fingerprint-checking>  (default: strict)
# @option --resolver-signing-entity-checking <resolver-signing-entity-checking>  (default: warn)
# @option --enable-signature-validation </--disable-signature-validation>  Validate signature of a signed package release downloaded from registry (default: --enable-signature-validation)
# @option --enable-prefetching </--disable-prefetching>  (default: --enable-prefetching)
# @flag --force-resolved-versions                 Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --disable-automatic-resolution            Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --only-use-versions-from-resolved-file    Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --skip-update                             Skip updating dependencies from their remote during a resolution
# @flag --disable-scm-to-registry-transformation  disable source control to registry transformation (default: --disable-scm-to-registry-transformation)
# @flag --use-registry-identity-for-scm           look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins
# @flag --replace-scm-with-registry               look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible
# @option --default-registry-url <default-registry-url>  Default registry URL to use, instead of the registries.json configuration file
# @option -c --configuration <configuration>      Build with configuration (default: debug)
# @option -Xcc <Xcc>                              Pass flag through to all C compiler invocations
# @option -Xswiftc <Xswiftc>                      Pass flag through to all Swift compiler invocations
# @option -Xlinker <Xlinker>                      Pass flag through to all linker invocations
# @option -Xcxx <Xcxx>                            Pass flag through to all C++ compiler invocations
# @option --triple <triple>
# @option --sdk <sdk>
# @option --toolchain <toolchain>
# @option --sanitize[address|thread|undefined|scudo] <sanitize>  Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo
# @option --auto-index-store </--enable-index-store/--disable-index-store>  Enable or disable indexing-while-building feature (default: --auto-index-store)
# @flag --enable-parseable-module-interfaces
# @option -j --jobs <jobs>                        The number of jobs to spawn in parallel during the build process
# @flag --emit-swift-module-separately
# @flag --use-integrated-swift-driver
# @option --explicit-target-dependency-import-check <explicit-target-dependency-import-check>  (default: none)
# @flag --experimental-explicit-module-build
# @option --build-system <build-system>           (default: native)
# @option --enable-dead-strip </--disable-dead-strip>  Disable/enable dead code stripping by the linker (default: --enable-dead-strip)
# @option --static-swift-stdlib </--no-static-swift-stdlib>  Link Swift stdlib statically (default: --no-static-swift-stdlib)
# @flag --build-tests                             Build both source and test targets
# @flag --show-bin-path                           Print the binary output path
# @flag --print-manifest-job-graph                Write the command graph for the build manifest as a graphviz file
# @option --target <target>                       Build the specified target
# @option --product <product>                     Build the specified product
# @flag --version                                 Show the version.
# @flag -h                                        Show help information.
# @flag -help                                     Show help information.
# @flag --help                                    Show help information.
build() {
    :;
}
# }} swift build

# {{ swift package
# @cmd Create and work on packages
# @option --package-path <package-path>           Specify the package path to operate on (default current directory).
# @option --cache-path <cache-path>               Specify the shared cache directory path
# @option --config-path <config-path>             Specify the shared configuration directory path
# @option --security-path <security-path>         Specify the shared security directory path
# @option --scratch-path <scratch-path>           Specify a custom scratch directory path (default .build)
# @option --pkg-config-path <pkg-config-path>     Specify alternative path to search for pkg-config `.pc` files.
# @option --enable-dependency-cache </--disable-dependency-cache>  Use a shared cache when fetching dependencies (default: --enable-dependency-cache)
# @option --enable-build-manifest-caching </--disable-build-manifest-caching>  (default: --enable-build-manifest-caching)
# @option --manifest-cache <manifest-cache>       Caching mode of Package.swift manifests (shared: shared cache, local: package's build directory, none: disabled (default: shared)
# @flag -v --verbose                              Increase verbosity to include informational output
# @flag --very-verbose                            Increase verbosity to include debug output
# @flag --vv                                      Increase verbosity to include debug output
# @flag -q --quiet                                Decrease verbosity to only include error output.
# @flag --disable-sandbox                         Disable using the sandbox when executing subprocesses
# @flag --netrc                                   Use netrc file even in cases where other credential stores are preferred
# @option --enable-netrc </--disable-netrc>       Load credentials from a netrc file (default: --enable-netrc)
# @option --netrc-file <netrc-file>               Specify the netrc file path
# @option --enable-keychain </--disable-keychain>  Search credentials in macOS keychain (default: --enable-keychain)
# @option --resolver-fingerprint-checking <resolver-fingerprint-checking>  (default: strict)
# @option --resolver-signing-entity-checking <resolver-signing-entity-checking>  (default: warn)
# @option --enable-signature-validation </--disable-signature-validation>  Validate signature of a signed package release downloaded from registry (default: --enable-signature-validation)
# @option --enable-prefetching </--disable-prefetching>  (default: --enable-prefetching)
# @flag --force-resolved-versions                 Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --disable-automatic-resolution            Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --only-use-versions-from-resolved-file    Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --skip-update                             Skip updating dependencies from their remote during a resolution
# @flag --disable-scm-to-registry-transformation  disable source control to registry transformation (default: --disable-scm-to-registry-transformation)
# @flag --use-registry-identity-for-scm           look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins
# @flag --replace-scm-with-registry               look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible
# @option --default-registry-url <default-registry-url>  Default registry URL to use, instead of the registries.json configuration file
# @option -c --configuration <configuration>      Build with configuration (default: debug)
# @option -Xcc <Xcc>                              Pass flag through to all C compiler invocations
# @option -Xswiftc <Xswiftc>                      Pass flag through to all Swift compiler invocations
# @option -Xlinker <Xlinker>                      Pass flag through to all linker invocations
# @option -Xcxx <Xcxx>                            Pass flag through to all C++ compiler invocations
# @option --triple <triple>
# @option --sdk <sdk>
# @option --toolchain <toolchain>
# @option --sanitize[address|thread|undefined|scudo] <sanitize>  Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo
# @option --auto-index-store </--enable-index-store/--disable-index-store>  Enable or disable indexing-while-building feature (default: --auto-index-store)
# @flag --enable-parseable-module-interfaces
# @option -j --jobs <jobs>                        The number of jobs to spawn in parallel during the build process
# @flag --emit-swift-module-separately
# @flag --use-integrated-swift-driver
# @option --explicit-target-dependency-import-check <explicit-target-dependency-import-check>  (default: none)
# @flag --experimental-explicit-module-build
# @option --build-system <build-system>           (default: native)
# @option --enable-dead-strip </--disable-dead-strip>  Disable/enable dead code stripping by the linker (default: --enable-dead-strip)
# @option --static-swift-stdlib </--no-static-swift-stdlib>  Link Swift stdlib statically (default: --no-static-swift-stdlib)
# @flag --version                                 Show the version.
# @flag -h                                        Show help information.
# @flag -help                                     Show help information.
# @flag --help                                    Show help information.
package() {
    :;
}

# {{{ swift package clean
# @cmd Delete build artifacts
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
package::clean() {
    :;
}
# }}} swift package clean

# {{{ swift package purge-cache
# @cmd Purge the global repository cache.
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
package::purge-cache() {
    :;
}
# }}} swift package purge-cache

# {{{ swift package reset
# @cmd Reset the complete cache/build directory
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
package::reset() {
    :;
}
# }}} swift package reset

# {{{ swift package update
# @cmd Update package dependencies
# @flag -n --dry-run    Display the list of dependencies that can be updated
# @flag --version       Show the version.
# @flag -h              Show help information.
# @flag -help           Show help information.
# @flag --help          Show help information.
# @arg packages+        The packages to update
package::update() {
    :;
}
# }}} swift package update

# {{{ swift package describe
# @cmd Describe the current package
# @option --type <type>    json | text (default: text)
# @flag --version          Show the version.
# @flag -h                 Show help information.
# @flag -help              Show help information.
# @flag --help             Show help information.
package::describe() {
    :;
}
# }}} swift package describe

# {{{ swift package init
# @cmd Initialize a new package
# @option --type <type>    Package type: (default: library) library  - A package with a library.
# @option --name <name>    Provide custom package name
# @flag --version          Show the version.
# @flag -h                 Show help information.
# @flag -help              Show help information.
# @flag --help             Show help information.
package::init() {
    :;
}
# }}} swift package init

# {{{ swift package diagnose-api-breaking-changes
# @cmd Diagnose API-breaking changes to Swift modules in a package
# @option --breakage-allowlist-path <breakage-allowlist-path>  The path to a text file containing breaking changes which should be ignored by the API comparison.
# @option --products <products>            One or more products to include in the API comparison.
# @option --targets <targets>              One or more targets to include in the API comparison.
# @option --baseline-dir <baseline-dir>    The path to a directory used to store API baseline files.
# @flag --regenerate-baseline              Regenerate the API baseline, even if an existing one is available.
# @flag --version                          Show the version.
# @flag -h                                 Show help information.
# @flag -help                              Show help information.
# @flag --help                             Show help information.
# @arg treeish!                            The baseline treeish to compare to (e.g. a commit hash, branch name, tag, etc.)
package::diagnose-api-breaking-changes() {
    :;
}
# }}} swift package diagnose-api-breaking-changes

# {{{ swift package dump-symbol-graph
# @cmd Dump Symbol Graph
# @flag --pretty-print                Pretty-print the output JSON.
# @flag --skip-synthesized-members    Skip members inherited through classes or default implementations.
# @option --minimum-access-level <minimum-access-level>  Include symbols with this access level or more.
# @flag --skip-inherited-docs         Skip emitting doc comments for members inherited through classes or default implementations.
# @flag --include-spi-symbols         Add symbols with SPI information to the symbol graph.
# @option --emit-extension-block-symbols </--omit-extension-block-symbols>  Emit extension block symbols for extensions to external types or directly associate members and conformances with the extended nominal.
# @flag --version                     Show the version.
# @flag -h                            Show help information.
# @flag -help                         Show help information.
# @flag --help                        Show help information.
package::dump-symbol-graph() {
    :;
}
# }}} swift package dump-symbol-graph

# {{{ swift package dump-package
# @cmd Print parsed Package.swift as JSON
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
package::dump-package() {
    :;
}
# }}} swift package dump-package

# {{{ swift package edit
# @cmd Put a package in editable mode
# @option --revision <revision>    The revision to edit
# @option --branch <branch>        The branch to create
# @option --path <path>            Create or use the checkout at this path
# @flag --version                  Show the version.
# @flag -h                         Show help information.
# @flag -help                      Show help information.
# @flag --help                     Show help information.
# @arg package-name!               The name of the package to edit
package::edit() {
    :;
}
# }}} swift package edit

# {{{ swift package unedit
# @cmd Remove a package from editable mode
# @flag --force         Unedit the package even if it has uncommited and unpushed changes
# @flag --version       Show the version.
# @flag -h              Show help information.
# @flag -help           Show help information.
# @flag --help          Show help information.
# @arg package-name!    The name of the package to unedit
package::unedit() {
    :;
}
# }}} swift package unedit

# {{{ swift package config
# @cmd Manipulate configuration of the package
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
package::config() {
    :;
}

# {{{{ swift package config set-mirror
# @cmd Set a mirror for a dependency
# @option --original <original>    The original url or identity
# @option --mirror <mirror>        The mirror url or identity
# @flag --version                  Show the version.
# @flag -h                         Show help information.
# @flag -help                      Show help information.
# @flag --help                     Show help information.
package::config::set-mirror() {
    :;
}
# }}}} swift package config set-mirror

# {{{{ swift package config unset-mirror
# @cmd Remove an existing mirror
# @option --original <original>    The original url or identity
# @option --mirror <mirror>        The mirror url or identity
# @flag --version                  Show the version.
# @flag -h                         Show help information.
# @flag -help                      Show help information.
# @flag --help                     Show help information.
package::config::unset-mirror() {
    :;
}
# }}}} swift package config unset-mirror

# {{{{ swift package config get-mirror
# @cmd Print mirror configuration for the given package dependency
# @option --original <original>    The original url or identity
# @flag --version                  Show the version.
# @flag -h                         Show help information.
# @flag -help                      Show help information.
# @flag --help                     Show help information.
package::config::get-mirror() {
    :;
}
# }}}} swift package config get-mirror
# }}} swift package config

# {{{ swift package resolve
# @cmd Resolve package dependencies
# @option --version <version>      The version to resolve at
# @option --branch <branch>        The branch to resolve at
# @option --revision <revision>    The revision to resolve at
# @flag -h                         Show help information.
# @flag -help                      Show help information.
# @flag --help                     Show help information.
# @arg package-name!               The name of the package to resolve
package::resolve() {
    :;
}
# }}} swift package resolve

# {{{ swift package show-dependencies
# @cmd Print the resolved dependency graph
# @option --format <format>                 text | dot | json | flatlist (default: text)
# @option -o --output-path <output-path>    The absolute or relative path to output the resolved dependency graph.
# @flag --version                           Show the version.
# @flag -h                                  Show help information.
# @flag -help                               Show help information.
# @flag --help                              Show help information.
package::show-dependencies() {
    :;
}
# }}} swift package show-dependencies

# {{{ swift package tools-version
# @cmd Manipulate tools version of the current package
# @flag --set-current    Set tools version of package to the current tools version in use
# @option --set <set>    Set tools version of package to the given value
# @flag --version        Show the version.
# @flag -h               Show help information.
# @flag -help            Show help information.
# @flag --help           Show help information.
package::tools-version() {
    :;
}
# }}} swift package tools-version

# {{{ swift package compute-checksum
# @cmd Compute the checksum for a binary artifact.
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
# @arg path!         The absolute or relative path to the binary artifact
package::compute-checksum() {
    :;
}
# }}} swift package compute-checksum

# {{{ swift package archive-source
# @cmd Create a source archive for the package
# @option -o --output <output>    The absolute or relative path for the generated source archive
# @flag --version                 Show the version.
# @flag -h                        Show help information.
# @flag -help                     Show help information.
# @flag --help                    Show help information.
package::archive-source() {
    :;
}
# }}} swift package archive-source

# {{{ swift package completion-tool
# @cmd Completion tool (for shell completions)
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
# @arg mode!         generate-bash-script | generate-zsh-script | generate-fish-script | list-dependencies | list-executables
package::completion-tool() {
    :;
}
# }}} swift package completion-tool

# {{{ swift package plugin
# @cmd Invoke a command plugin or perform other actions on command plugins
# @flag --list                                  List the available command plugins
# @flag --allow-writing-to-package-directory    Allow the plugin to write to the package directory
# @option --allow-writing-to-directory <allow-writing-to-directory>  Allow the plugin to write to an additional directory
# @option --allow-network-connections <allow-network-connections>  (default: none)
# @flag --version                               Show the version.
# @flag -h                                      Show help information.
# @flag -help                                   Show help information.
# @flag --help                                  Show help information.
# @arg command!                                 Verb of the command plugin to invoke
# @arg arguments+                               Arguments to pass to the command plugin
package::plugin() {
    :;
}
# }}} swift package plugin
# }} swift package

# {{ swift run
# @cmd Run a program from a package
# @option --package-path <package-path>           Specify the package path to operate on (default current directory).
# @option --cache-path <cache-path>               Specify the shared cache directory path
# @option --config-path <config-path>             Specify the shared configuration directory path
# @option --security-path <security-path>         Specify the shared security directory path
# @option --scratch-path <scratch-path>           Specify a custom scratch directory path (default .build)
# @option --pkg-config-path <pkg-config-path>     Specify alternative path to search for pkg-config `.pc` files.
# @option --enable-dependency-cache </--disable-dependency-cache>  Use a shared cache when fetching dependencies (default: --enable-dependency-cache)
# @option --enable-build-manifest-caching </--disable-build-manifest-caching>  (default: --enable-build-manifest-caching)
# @option --manifest-cache <manifest-cache>       Caching mode of Package.swift manifests (shared: shared cache, local: package's build directory, none: disabled (default: shared)
# @flag -v --verbose                              Increase verbosity to include informational output
# @flag --very-verbose                            Increase verbosity to include debug output
# @flag --vv                                      Increase verbosity to include debug output
# @flag -q --quiet                                Decrease verbosity to only include error output.
# @flag --disable-sandbox                         Disable using the sandbox when executing subprocesses
# @flag --netrc                                   Use netrc file even in cases where other credential stores are preferred
# @option --enable-netrc </--disable-netrc>       Load credentials from a netrc file (default: --enable-netrc)
# @option --netrc-file <netrc-file>               Specify the netrc file path
# @option --enable-keychain </--disable-keychain>  Search credentials in macOS keychain (default: --enable-keychain)
# @option --resolver-fingerprint-checking <resolver-fingerprint-checking>  (default: strict)
# @option --resolver-signing-entity-checking <resolver-signing-entity-checking>  (default: warn)
# @option --enable-signature-validation </--disable-signature-validation>  Validate signature of a signed package release downloaded from registry (default: --enable-signature-validation)
# @option --enable-prefetching </--disable-prefetching>  (default: --enable-prefetching)
# @flag --force-resolved-versions                 Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --disable-automatic-resolution            Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --only-use-versions-from-resolved-file    Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --skip-update                             Skip updating dependencies from their remote during a resolution
# @flag --disable-scm-to-registry-transformation  disable source control to registry transformation (default: --disable-scm-to-registry-transformation)
# @flag --use-registry-identity-for-scm           look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins
# @flag --replace-scm-with-registry               look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible
# @option --default-registry-url <default-registry-url>  Default registry URL to use, instead of the registries.json configuration file
# @option -c --configuration <configuration>      Build with configuration (default: debug)
# @option -Xcc <Xcc>                              Pass flag through to all C compiler invocations
# @option -Xswiftc <Xswiftc>                      Pass flag through to all Swift compiler invocations
# @option -Xlinker <Xlinker>                      Pass flag through to all linker invocations
# @option -Xcxx <Xcxx>                            Pass flag through to all C++ compiler invocations
# @option --triple <triple>
# @option --sdk <sdk>
# @option --toolchain <toolchain>
# @option --sanitize[address|thread|undefined|scudo] <sanitize>  Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo
# @option --auto-index-store </--enable-index-store/--disable-index-store>  Enable or disable indexing-while-building feature (default: --auto-index-store)
# @flag --enable-parseable-module-interfaces
# @option -j --jobs <jobs>                        The number of jobs to spawn in parallel during the build process
# @flag --emit-swift-module-separately
# @flag --use-integrated-swift-driver
# @option --explicit-target-dependency-import-check <explicit-target-dependency-import-check>  (default: none)
# @flag --experimental-explicit-module-build
# @option --build-system <build-system>           (default: native)
# @option --enable-dead-strip </--disable-dead-strip>  Disable/enable dead code stripping by the linker (default: --enable-dead-strip)
# @option --static-swift-stdlib </--no-static-swift-stdlib>  Link Swift stdlib statically (default: --no-static-swift-stdlib)
# @flag --repl                                    Launch Swift REPL for the package
# @flag --debugger                                Launch the executable in a debugger session
# @flag --run                                     Launch the executable with the provided arguments (default: --run)
# @flag --skip-build                              Skip building the executable product
# @flag --build-tests                             Build both source and test targets
# @flag --version                                 Show the version.
# @flag -h                                        Show help information.
# @flag -help                                     Show help information.
# @flag --help                                    Show help information.
# @arg executable!                                The executable to run
# @arg arguments+                                 The arguments to pass to the executable
run() {
    :;
}
# }} swift run

# {{ swift test
# @cmd Run package tests
# @option --package-path <package-path>           Specify the package path to operate on (default current directory).
# @option --cache-path <cache-path>               Specify the shared cache directory path
# @option --config-path <config-path>             Specify the shared configuration directory path
# @option --security-path <security-path>         Specify the shared security directory path
# @option --scratch-path <scratch-path>           Specify a custom scratch directory path (default .build)
# @option --pkg-config-path <pkg-config-path>     Specify alternative path to search for pkg-config `.pc` files.
# @option --enable-dependency-cache </--disable-dependency-cache>  Use a shared cache when fetching dependencies (default: --enable-dependency-cache)
# @option --enable-build-manifest-caching </--disable-build-manifest-caching>  (default: --enable-build-manifest-caching)
# @option --manifest-cache <manifest-cache>       Caching mode of Package.swift manifests (shared: shared cache, local: package's build directory, none: disabled (default: shared)
# @flag -v --verbose                              Increase verbosity to include informational output
# @flag --very-verbose                            Increase verbosity to include debug output
# @flag --vv                                      Increase verbosity to include debug output
# @flag -q --quiet                                Decrease verbosity to only include error output.
# @flag --disable-sandbox                         Disable using the sandbox when executing subprocesses
# @flag --netrc                                   Use netrc file even in cases where other credential stores are preferred
# @option --enable-netrc </--disable-netrc>       Load credentials from a netrc file (default: --enable-netrc)
# @option --netrc-file <netrc-file>               Specify the netrc file path
# @option --enable-keychain </--disable-keychain>  Search credentials in macOS keychain (default: --enable-keychain)
# @option --resolver-fingerprint-checking <resolver-fingerprint-checking>  (default: strict)
# @option --resolver-signing-entity-checking <resolver-signing-entity-checking>  (default: warn)
# @option --enable-signature-validation </--disable-signature-validation>  Validate signature of a signed package release downloaded from registry (default: --enable-signature-validation)
# @option --enable-prefetching </--disable-prefetching>  (default: --enable-prefetching)
# @flag --force-resolved-versions                 Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --disable-automatic-resolution            Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --only-use-versions-from-resolved-file    Only use versions from the Package.resolved file and fail resolution if it is out-of-date
# @flag --skip-update                             Skip updating dependencies from their remote during a resolution
# @flag --disable-scm-to-registry-transformation  disable source control to registry transformation (default: --disable-scm-to-registry-transformation)
# @flag --use-registry-identity-for-scm           look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins
# @flag --replace-scm-with-registry               look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible
# @option --default-registry-url <default-registry-url>  Default registry URL to use, instead of the registries.json configuration file
# @option -c --configuration <configuration>      Build with configuration (default: debug)
# @option -Xcc <Xcc>                              Pass flag through to all C compiler invocations
# @option -Xswiftc <Xswiftc>                      Pass flag through to all Swift compiler invocations
# @option -Xlinker <Xlinker>                      Pass flag through to all linker invocations
# @option -Xcxx <Xcxx>                            Pass flag through to all C++ compiler invocations
# @option --triple <triple>
# @option --sdk <sdk>
# @option --toolchain <toolchain>
# @option --sanitize[address|thread|undefined|scudo] <sanitize>  Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo
# @option --auto-index-store </--enable-index-store/--disable-index-store>  Enable or disable indexing-while-building feature (default: --auto-index-store)
# @flag --enable-parseable-module-interfaces
# @option -j --jobs <jobs>                        The number of jobs to spawn in parallel during the build process
# @flag --emit-swift-module-separately
# @flag --use-integrated-swift-driver
# @option --explicit-target-dependency-import-check <explicit-target-dependency-import-check>  (default: none)
# @flag --experimental-explicit-module-build
# @option --build-system <build-system>           (default: native)
# @option --enable-dead-strip </--disable-dead-strip>  Disable/enable dead code stripping by the linker (default: --enable-dead-strip)
# @option --static-swift-stdlib </--no-static-swift-stdlib>  Link Swift stdlib statically (default: --no-static-swift-stdlib)
# @flag --skip-build                              Skip building the test target
# @option --test-product <test-product>           Test the specified product.
# @flag --parallel                                Run the tests in parallel.
# @option --num-workers <num-workers>             Number of tests to execute in parallel.
# @flag -l --list-tests                           Lists test methods in specifier format
# @flag --show-codecov-path                       Print the path of the exported code coverage JSON file
# @flag --show-code-coverage-path                 Print the path of the exported code coverage JSON file
# @flag --show-coverage-path                      Print the path of the exported code coverage JSON file
# @option -s --specifier <specifier>
# @option --filter <filter>                       Run test cases matching regular expression, Format: <test-target>.<test-case> or <test-target>.<test-case>/<test>
# @option --skip <skip>                           Skip test cases matching regular expression, Example: --skip PerformanceTests
# @option --xunit-output <xunit-output>           Path where the xUnit xml file should be generated.
# @option --enable-testable-imports </--disable-testable-imports>  Enable or disable testable imports.
# @option --enable-code-coverage </--disable-code-coverage>  Enable code coverage (default: --disable-code-coverage)
# @flag --version                                 Show the version.
# @flag -h                                        Show help information.
# @flag -help                                     Show help information.
# @flag --help                                    Show help information.
test() {
    :;
}

# {{{ swift test list
# @cmd Lists test methods in specifier format
# @flag --skip-build                       Skip building the test target
# @option --test-product <test-product>    Test the specified product.
# @flag --version                          Show the version.
# @flag -h                                 Show help information.
# @flag -help                              Show help information.
# @flag --help                             Show help information.
test::list() {
    :;
}
# }}} swift test list

# {{{ swift test generate-linuxmain
# @cmd Generate LinuxMain.swift (deprecated)
# @flag --version    Show the version.
# @flag -h           Show help information.
# @flag -help        Show help information.
# @flag --help       Show help information.
test::generate-linuxmain() {
    :;
}
# }}} swift test generate-linuxmain
# }} swift test

# {{ swift repl
# @cmd Experiment with Swift code interactively
repl() {
    :;
}
# }} swift repl

command eval "$(argc --argc-eval "$0" "$@")"