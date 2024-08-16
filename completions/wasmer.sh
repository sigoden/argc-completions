#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                    Print version info and exit
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')

# {{ wasmer login
# @cmd Login into a wasmer.io-like registry
# @flag --no-browser                    Variable to login without opening a browser
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @flag -q --quiet                      Do not print progress messages
# @option --registry                    The registry to fetch packages from (inferred from the environment by default)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg token                            The API token to use when communicating with the registry (inferred from the environment by default)
login() {
    :;
}
# }} wasmer login

# {{ wasmer publish
# @cmd Publish a package to a registry [alias: package publish]
# @option --token                            The (optional) authorization token to pass to the registry
# @option --registry                         Change the current registry
# @flag -v --verbose*                        Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>          Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>            The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>          The format to use when generating logs
# @option --color[auto|always|never]         When to display colored output
# @flag --dry-run                            Run the publish logic without sending anything to the registry server
# @flag --quiet                              Run the publish command without any output
# @option --namespace <PACKAGE_NAMESPACE>    Override the namespace of the package to upload
# @option --name <PACKAGE_NAME>              Override the name of the package to upload
# @option --version <PACKAGE_VERSION>        Override the package version of the uploaded package in the wasmer.toml
# @flag --no-validate                        Skip validation of the uploaded package
# @option --wait[none|container|native-executables|bindings|all]  Wait for package to be available on the registry before exiting
# @option --timeout                          Timeout (in seconds) for the publish query to the registry.
# @flag --bump                               Whether or not the patch field of the version of the package - if any - should be bumped
# @flag --non-interactive                    Do not prompt for user input
# @flag -h --help                            Print help (see a summary with '-h')
# @arg path                                  Directory containing the `wasmer.toml`, or a custom *.toml manifest file.
publish() {
    :;
}
# }} wasmer publish

# {{ wasmer cache
# @cmd Manage the local Wasmer cache
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --registry                    The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
cache() {
    :;
}

# {{{ wasmer cache clean
# @cmd Clear the cache
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
cache::clean() {
    :;
}
# }}} wasmer cache clean

# {{{ wasmer cache dir
# @cmd Display the location of the cache
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
cache::dir() {
    :;
}
# }}} wasmer cache dir
# }} wasmer cache

# {{ wasmer validate
# @cmd Validate a WebAssembly binary
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @flag --llvm                                 Use LLVM compiler
# @flag -q --quiet                             Do not print progress messages
# @flag --enable-verifier                      Enable compiler internal verification.
# @option --log-format <LOG_FORMAT>            The format to use when generating logs
# @option --color[auto|always|never]           When to display colored output
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -h --help                              Print help (see a summary with '-h')
# @arg file!                                   File to validate as WebAssembly
validate() {
    :;
}
# }} wasmer validate

# {{ wasmer compile
# @cmd Compile a WebAssembly binary
# @option -o <OUTPUT PATH>                     Output file
# @option --target <TARGET_TRIPLE>             Compilation Target triple
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                             Do not print progress messages
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @option --log-format <LOG_FORMAT>            The format to use when generating logs
# @option --color[auto|always|never]           When to display colored output
# @flag --llvm                                 Use LLVM compiler
# @flag --enable-verifier                      Enable compiler internal verification.
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @option -m <CPU_FEATURES>
# @option --hash-algorithm <HASH_ALGORITHM>    Hashing algorithm to be used for module hash
# @flag -h --help                              Print help (see a summary with '-h')
# @arg file!                                   Input file
compile() {
    :;
}
# }} wasmer compile

# {{ wasmer create-exe
# @cmd Compile a WebAssembly binary into a native executable
# @option -o <OUTPUT PATH>                         Output file
# @option --debug-dir <DEBUG PATH>                 Optional directorey used for debugging: if present, will output the zig command for reproducing issues in a debug directory
# @flag -v --verbose*                              Generate verbose output (repeat for more verbosity)
# @option --precompiled-atom <FILE:PREFIX:PATH>    Prefix for every input file, e.g. "wat2wasm:sha256abc123" would prefix every function in the wat2wasm input object with the "sha256abc123" hash
# @flag -q --quiet                                 Do not print progress messages
# @option --log-format <LOG_FORMAT>                The format to use when generating logs
# @option --target <TARGET_TRIPLE>                 Compilation Target triple
# @option --color[auto|always|never]               When to display colored output
# @option --use-wasmer-release <URL_OR_RELEASE_VERSION>  Can specify either a release version (such as "3.0.1") or a URL to a tarball to use for linking.
# @option -m --cpu-features <CPU_FEATURES>
# @option -l --libraries                           Additional libraries to link against.
# @flag --use-system-linker                        Use the system linker instead of zig for linking
# @option --library-path <LIBRARY_PATH>            Cross-compilation library path (path to libwasmer.a / wasmer.lib)
# @option --tarball                                Cross-compilation tarball library path
# @option --zig-binary-path <ZIG_BINARY_PATH>      Specify `zig` binary path (defaults to `zig` in $PATH if not present)
# @flag --singlepass                               Use Singlepass compiler
# @flag --cranelift                                Use Cranelift compiler
# @flag --llvm                                     Use LLVM compiler
# @flag --enable-verifier                          Enable compiler internal verification.
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>        LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                              Enable support for the SIMD proposal
# @flag --disable-threads                          Disable support for the threads proposal
# @flag --enable-threads                           Deprecated, threads are enabled by default
# @flag --enable-reference-types                   Enable support for the reference types proposal
# @flag --enable-multi-value                       Enable support for the multi value proposal
# @flag --enable-bulk-memory                       Enable support for the bulk memory proposal
# @flag --enable-all                               Enable support for all pre-standard proposals
# @option --hash-algorithm <HASH_ALGORITHM>        Hashing algorithm to be used for module hash
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg file!                                       Input file
create-exe() {
    :;
}
# }} wasmer create-exe

# {{ wasmer create-obj
# @cmd Compile a WebAssembly binary into an object file
# @option -o <OUTPUT_PATH>                     Output file or directory if the input is a pirita file
# @option --debug-dir <DEBUG PATH>             Optional directorey used for debugging: if present, will output the files to a debug instead of a temp directory
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @option --prefix                             Prefix for the function names in the input file in the compiled object file.
# @flag -q --quiet                             Do not print progress messages
# @option --atom                               Atom name to compile when compiling multi-atom pirita files
# @option --log-format <LOG_FORMAT>            The format to use when generating logs
# @option --color[auto|always|never]           When to display colored output
# @option --target <TARGET_TRIPLE>             Compilation Target triple
# @option -m --cpu-features <CPU_FEATURES>
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag --llvm                                 Use LLVM compiler
# @flag --enable-verifier                      Enable compiler internal verification.
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -h --help                              Print help (see a summary with '-h')
# @arg file!                                   Input file
create-obj() {
    :;
}
# }} wasmer create-obj

# {{ wasmer gen-c-header
# @cmd Generate the C static_defs.h header file for the input .wasm module
# @option --prefix                      Prefix hash (default: SHA256 of input .wasm file)
# @option --atom                        For pirita files: optional atom name to compile
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -o <OUTPUT PATH>              Output file
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --target <TARGET_TRIPLE>      Compilation Target triple
# @option --color[auto|always|never]    When to display colored output
# @option -m --cpu-features <CPU_FEATURES>
# @flag -h --help                       Print help (see a summary with '-h')
# @arg file!                            Input file
gen-c-header() {
    :;
}
# }} wasmer gen-c-header

# {{ wasmer config
# @cmd Get various configuration information needed to compile programs which use Wasmer
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --registry                    The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]    When to display colored output
# @flag --prefix                        Print the installation prefix
# @flag --bindir                        Directory containing Wasmer executables
# @flag --includedir                    Directory containing Wasmer headers
# @flag --libdir                        Directory containing Wasmer libraries
# @flag --libs                          Libraries needed to link against Wasmer components
# @flag --cflags                        C compiler flags for files that include Wasmer headers
# @flag --config-path                   Print the path to the wasmer configuration file where all settings are stored
# @flag --pkg-config                    Outputs the necessary details for compiling and linking a program to Wasmer, using the `pkg-config` format
# @flag -h --help                       Print help (see a summary with '-h')
config() {
    :;
}

# {{{ wasmer config get
# @cmd `wasmer config get $KEY`
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get() {
    :;
}

# {{{{ wasmer config get registry.url
# @cmd Print the registry URL of the currently active registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get::registry.url() {
    :;
}
# }}}} wasmer config get registry.url

# {{{{ wasmer config get registry.token
# @cmd Print the token for the currently active registry or nothing if not logged in
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get::registry.token() {
    :;
}
# }}}} wasmer config get registry.token

# {{{{ wasmer config get telemetry.enabled
# @cmd Print whether telemetry is currently enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get::telemetry.enabled() {
    :;
}
# }}}} wasmer config get telemetry.enabled

# {{{{ wasmer config get update-notifications.enabled
# @cmd Print whether update notifications are enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get::update-notifications.enabled() {
    :;
}
# }}}} wasmer config get update-notifications.enabled

# {{{{ wasmer config get proxy.url
# @cmd Print the proxy URL
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::get::proxy.url() {
    :;
}
# }}}} wasmer config get proxy.url
# }}} wasmer config get

# {{{ wasmer config set
# @cmd `wasmer config set $KEY $VALUE`
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
config::set() {
    :;
}

# {{{{ wasmer config set registry.url
# @cmd Set the registry URL of the currently active registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg url!                             Url of the registry
config::set::registry.url() {
    :;
}
# }}}} wasmer config set registry.url

# {{{{ wasmer config set registry.token
# @cmd Set the token for the currently active registry or nothing if not logged in
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg token!                           Token to set
config::set::registry.token() {
    :;
}
# }}}} wasmer config set registry.token

# {{{{ wasmer config set telemetry.enabled
# @cmd Set whether telemetry is currently enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg enabled![true|false]             Whether to enable telemetry
config::set::telemetry.enabled() {
    :;
}
# }}}} wasmer config set telemetry.enabled

# {{{{ wasmer config set update-notifications.enabled
# @cmd Set whether update notifications are enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg enabled![true|false]             Whether to enable update notifications
config::set::update-notifications.enabled() {
    :;
}
# }}}} wasmer config set update-notifications.enabled

# {{{{ wasmer config set proxy.url
# @cmd Set the active proxy URL
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg url!                             Set if a proxy URL should be used (empty = unset proxy)
config::set::proxy.url() {
    :;
}
# }}}} wasmer config set proxy.url
# }}} wasmer config set
# }} wasmer config

# {{ wasmer self-update
# @cmd Update wasmer to the latest version
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
self-update() {
    :;
}
# }} wasmer self-update

# {{ wasmer inspect
# @cmd Inspect a WebAssembly file
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @flag --llvm                                 Use LLVM compiler
# @flag -q --quiet                             Do not print progress messages
# @flag --enable-verifier                      Enable compiler internal verification.
# @option --log-format <LOG_FORMAT>            The format to use when generating logs
# @option --color[auto|always|never]           When to display colored output
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -h --help                              Print help (see a summary with '-h')
# @arg file!                                   File to validate as WebAssembly
inspect() {
    :;
}
# }} wasmer inspect

# {{ wasmer init
# @cmd Initializes a new wasmer.toml file
# @option --wasmer-dir <WASMER_DIR>          Set Wasmer's home directory
# @option --registry                         The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                        Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>            The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>          The format to use when generating logs
# @option --token                            The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]         When to display colored output
# @flag --lib                                Initialize wasmer.toml for a library package
# @flag --bin                                Initialize wasmer.toml for a binary package
# @flag --empty                              Initialize an empty wasmer.toml
# @flag --overwrite                          Force overwriting the wasmer.toml, even if it already exists
# @flag --quiet                              Don't display debug output
# @option --namespace                        Namespace to init with, default = current logged in user or _
# @option --package-name <PACKAGE_NAME>      Package name to init with, default = Cargo.toml name or current directory name
# @option --version                          Version of the initialized package
# @option --manifest-path <MANIFEST_PATH>    If the `manifest-path` is a Cargo.toml, use that file to initialize the wasmer.toml
# @option --template                         Add default dependencies for common packages
# @option --include                          Include file paths into the target container filesystem
# @flag -h --help                            Print help (see a summary with '-h')
# @arg package_path                          Directory of the output file name.
init() {
    :;
}
# }} wasmer init

# {{ wasmer wast
# @cmd Run spec testsuite
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @flag --llvm                                 Use LLVM compiler
# @flag -q --quiet                             Do not print progress messages
# @flag --enable-verifier                      Enable compiler internal verification.
# @option --log-format <LOG_FORMAT>            The format to use when generating logs
# @option --color[auto|always|never]           When to display colored output
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -f --fail-fast                         A flag to indicate wast stop at the first error or continue
# @option --hash-algorithm <HASH_ALGORITHM>    Hashing algorithm to be used for module hash
# @flag -h --help                              Print help (see a summary with '-h')
# @arg file!                                   Wast file to run
wast() {
    :;
}
# }} wasmer wast

# {{ wasmer binfmt
# @cmd Unregister and/or register wasmer as binfmt interpreter
# @option --binfmt-misc <BINFMT_MISC>    Mount point of binfmt_misc fs
# @flag -v --verbose*                    Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                       Do not print progress messages
# @option --log-format <LOG_FORMAT>      The format to use when generating logs
# @option --color[auto|always|never]     When to display colored output
# @flag -h --help                        Print help (see a summary with '-h')
binfmt() {
    :;
}

# {{{ wasmer binfmt register
# @cmd Register wasmer as binfmt interpreter
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
binfmt::register() {
    :;
}
# }}} wasmer binfmt register

# {{{ wasmer binfmt unregister
# @cmd Unregister a binfmt interpreter for wasm32
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
binfmt::unregister() {
    :;
}
# }}} wasmer binfmt unregister

# {{{ wasmer binfmt reregister
# @cmd Soft unregister, and register
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
binfmt::reregister() {
    :;
}
# }}} wasmer binfmt reregister
# }} wasmer binfmt

# {{ wasmer whoami
# @cmd Shows the current logged in user for the current active registry
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --registry                    The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
whoami() {
    :;
}
# }} wasmer whoami

# {{ wasmer add
# @cmd Add a Wasmer package's bindings to your application
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --registry                    The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]    When to display colored output
# @flag --npm                           Add the JavaScript bindings using "npm install"
# @flag --yarn                          Add the JavaScript bindings using "yarn add"
# @flag --pnpm                          Add the JavaScript bindings using "pnpm add"
# @flag --dev                           Add the package as a dev-dependency
# @flag --pip                           Add the Python bindings using "pip install"
# @flag -h --help                       Print help (see a summary with '-h')
# @arg packages*                        The packages to add (e.g. "wasmer/wasmer-pack@0.5.0" or "python/python")
add() {
    :;
}
# }} wasmer add

# {{ wasmer run
# @cmd Run a WebAssembly file or Wasmer container
# @option --wasmer-dir <WASMER_DIR>                Set Wasmer's home directory
# @option --registry                               The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                              Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>                  The directory cached artefacts are saved to
# @flag -q --quiet                                 Do not print progress messages
# @option --log-format <LOG_FORMAT>                The format to use when generating logs
# @option --token                                  The API token to use when communicating with the registry (inferred from the environment by default)
# @option --color[auto|always|never]               When to display colored output
# @flag --singlepass                               Use Singlepass compiler
# @flag --cranelift                                Use Cranelift compiler
# @flag --llvm                                     Use LLVM compiler
# @flag --enable-verifier                          Enable compiler internal verification.
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>        LLVM debug directory, where IR and object files will be written to.
# @flag --enable-simd                              Enable support for the SIMD proposal
# @flag --disable-threads                          Disable support for the threads proposal
# @flag --enable-threads                           Deprecated, threads are enabled by default
# @flag --enable-reference-types                   Enable support for the reference types proposal
# @flag --enable-multi-value                       Enable support for the multi value proposal
# @flag --enable-bulk-memory                       Enable support for the bulk memory proposal
# @flag --enable-all                               Enable support for all pre-standard proposals
# @option --dir                                    WASI pre-opened directory
# @option --mapdir <GUEST_DIR:HOST_DIR>            Map a host directory to a different location for the Wasm module
# @option --env <KEY=VALUE>                        Pass custom environment variables
# @flag --forward-host-env                         Forward all host env variables to guest
# @option --use                                    List of other containers this module depends on
# @option --include-webc <WEBC>                    List of webc packages that are explicitly included for execution Note: these packages will be used instead of those in the registry
# @option --map-command <MAPCMD>                   List of injected atoms
# @flag --net                                      Enable networking with the host network.
# @flag --no-tty                                   Disables the TTY bridge
# @flag --enable-async-threads                     Enables asynchronous threading
# @option --enable-cpu-backoff <ENABLE_CPU_BACKOFF>  Enables an exponential backoff (measured in milli-seconds) of the process CPU usage when there are no active run tokens (when set holds the maximum amount of time that it will pause the CPU) (default = off)
# @option --journal <JOURNALS>                     Specifies one or more journal files that Wasmer will use to restore and save the state of the WASM process as it executes.
# @flag --enable-compaction                        Flag that indicates if the journal will be automatically compacted as it fills up and when the process exits
# @flag --without-compact-on-drop                  Tells the compactor not to compact when the journal log file is closed
# @option --with-compact-on-growth <WITH_COMPACT_ON_GROWTH>  Tells the compactor to compact when it grows by a certain factor of its original size.
# @option --snapshot-on <SNAPSHOT_ON>              Indicates what events will cause a snapshot to be taken and written to the journal file.
# @option --snapshot-period <SNAPSHOT_INTERVAL>    Adds a periodic interval (measured in milli-seconds) that the runtime will automatically take snapshots of the running process and write them to the journal.
# @flag --http-client                              Allow instances to send http requests.
# @flag --deny-multiple-wasi-versions              Require WASI modules to only import 1 version of WASI
# @option -a --addr                                The address to serve on
# @option --stack-size <STACK_SIZE>                Set the default stack size (default is 1048576)
# @option -e --entrypoint                          The function or command to invoke
# @option --COREDUMP_PATH                          Generate a coredump at this path if a WebAssembly trap occurs
# @option --hash-algorithm <HASH_ALGORITHM>        Hashing algorithm to be used for module hash
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg input!                                      The file, URL, or package to run
# @arg args*                                       Command-line arguments passed to the package
run() {
    :;
}
# }} wasmer run

# {{ wasmer journal
# @cmd Manage journals (compacting, inspecting, filtering, ...)
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
journal() {
    :;
}

# {{{ wasmer journal compact
# @cmd Compacts a journal into a smaller size by removed redundant or duplicate events
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg journal_path!                    Path to the journal that will be compacted
journal::compact() {
    :;
}
# }}} wasmer journal compact

# {{{ wasmer journal export
# @cmd Exports the contents of a journal to stdout as JSON objects
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg journal_path!                    Path to the journal that will be printed
journal::export() {
    :;
}
# }}} wasmer journal export

# {{{ wasmer journal import
# @cmd Imports the events into a journal as JSON objects
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg journal_path!                    Path to the journal that will be printed
journal::import() {
    :;
}
# }}} wasmer journal import

# {{{ wasmer journal inspect
# @cmd Inspects the contents of a journal and summarizes it to `stdout`
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg journal_path!                    Path to the journal that will be printed
journal::inspect() {
    :;
}
# }}} wasmer journal inspect

# {{{ wasmer journal filter
# @cmd Filters out certain events from a journal
# @option -f --filter <FILTERS>         Filters to be applied to the output journal, filter options are - 'mem' | 'memory' -> removes all WASM memory related events - 'thread' | 'threads' -> removes all events related to the state of the threads - 'fs' | 'file' -> removes file system mutation events - 'core' -> removes core operating system operations such as TTY - 'snap' | 'snapshot' -> removes the snapshots from the journal - 'net' | 'network' -> removes network socket and interface events
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg source_path!                     Path to the journal that will be read
# @arg target_path!                     Path to the journal that will be the output of the filter
journal::filter() {
    :;
}
# }}} wasmer journal filter

# {{{ wasmer journal extract
# @cmd Extracts an element of a journal
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg journal_path!                    Path to the journal that will be compacted
journal::extract() {
    :;
}

# {{{{ wasmer journal extract memory
# @cmd
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg memory_file_path!                Path to the memory file that will be updated using this journal
journal::extract::memory() {
    :;
}
# }}}} wasmer journal extract memory
# }}} wasmer journal extract
# }} wasmer journal

# {{ wasmer package
# @cmd Package related commands
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
package() {
    :;
}

# {{{ wasmer package download
# @cmd Download a package from the registry
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --validate                      Verify that the downloaded file is a valid package
# @option -o --out-path <OUT_PATH>      Path where the package file should be written to.
# @flag --quiet                         Run the download command without any output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg package!                         The package to download
package::download() {
    :;
}
# }}} wasmer package download

# {{{ wasmer package build
# @cmd Build a container from a package manifest
# @option -o --out                      Output path for the package file.
# @flag --quiet                         Run the publish command without any output
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag --check                         Only checks whether the package could be built successfully
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg package                          Path of the package or wasmer.toml manifest.
package::build() {
    :;
}
# }}} wasmer package build

# {{{ wasmer package tag
# @cmd Tag an existing package
# @option --token                            The (optional) authorization token to pass to the registry
# @option --registry                         Change the current registry
# @flag -v --verbose*                        Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>          Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>            The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>          The format to use when generating logs
# @option --color[auto|always|never]         When to display colored output
# @flag --dry-run                            Run the publish logic without sending anything to the registry server
# @flag --quiet                              Run the publish command without any output
# @option --namespace <PACKAGE_NAMESPACE>    Override the namespace of the package to upload
# @option --name <PACKAGE_NAME>              Override the name of the package to upload
# @option --version <PACKAGE_VERSION>        Override the package version of the uploaded package in the wasmer.toml
# @option --timeout                          Timeout (in seconds) for the publish query to the registry.
# @flag --bump                               Whether or not the patch field of the version of the package - if any - should be bumped
# @flag --non-interactive                    Do not prompt for user input
# @option --path <PACKAGE_PATH>              Directory containing the `wasmer.toml`, or a custom *.toml manifest file.
# @option --wait[none|container|native-executables|bindings|all]  Wait for package to be available on the registry before exiting
# @flag -h --help                            Print help (see a summary with '-h')
# @arg hash!                                 The hash of the package to tag
# @arg package_ident                         The package to tag
package::tag() {
    :;
}
# }}} wasmer package tag

# {{{ wasmer package push
# @cmd Push a package to the registry
# @option --token                            The (optional) authorization token to pass to the registry
# @option --registry                         Change the current registry
# @flag -v --verbose*                        Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>          Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>            The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>          The format to use when generating logs
# @option --color[auto|always|never]         When to display colored output
# @flag --dry-run                            Run the publish logic without sending anything to the registry server
# @flag --quiet                              Run the publish command without any output
# @option --namespace <PACKAGE_NAMESPACE>    Override the namespace of the package to upload
# @option --name <PACKAGE_NAME>              Override the name of the package to upload.
# @option --timeout                          Timeout (in seconds) for the publish query to the registry.
# @flag --non-interactive                    Do not prompt for user input
# @flag -h --help                            Print help (see a summary with '-h')
# @arg path                                  Directory containing the `wasmer.toml`, or a custom *.toml manifest file.
package::push() {
    :;
}
# }}} wasmer package push

# {{{ wasmer package publish
# @cmd Publish (push and tag) a package to the registry
# @option --token                            The (optional) authorization token to pass to the registry
# @option --registry                         Change the current registry
# @flag -v --verbose*                        Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>          Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>            The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>          The format to use when generating logs
# @option --color[auto|always|never]         When to display colored output
# @flag --dry-run                            Run the publish logic without sending anything to the registry server
# @flag --quiet                              Run the publish command without any output
# @option --namespace <PACKAGE_NAMESPACE>    Override the namespace of the package to upload
# @option --name <PACKAGE_NAME>              Override the name of the package to upload
# @option --version <PACKAGE_VERSION>        Override the package version of the uploaded package in the wasmer.toml
# @flag --no-validate                        Skip validation of the uploaded package
# @option --wait[none|container|native-executables|bindings|all]  Wait for package to be available on the registry before exiting
# @option --timeout                          Timeout (in seconds) for the publish query to the registry.
# @flag --bump                               Whether or not the patch field of the version of the package - if any - should be bumped
# @flag --non-interactive                    Do not prompt for user input
# @flag -h --help                            Print help (see a summary with '-h')
# @arg path                                  Directory containing the `wasmer.toml`, or a custom *.toml manifest file.
package::publish() {
    :;
}
# }}} wasmer package publish
# }} wasmer package

# {{ wasmer container
# @cmd Container related commands.
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
container() {
    :;
}

# {{{ wasmer container unpack
# @cmd Extract contents of a container to a directory
# @option -o --out-dir <OUT_DIR>        The output directory
# @flag --overwrite                     Overwrite existing directories/files
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag --quiet                         Run the unpack command without any output
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg package_path!                    Path to the package
container::unpack() {
    :;
}
# }}} wasmer container unpack
# }} wasmer container

# {{ wasmer deploy
# @cmd Deploy apps to Wasmer Edge [alias: app deploy]
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>       Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>         The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @option -f --format[yaml|json|table]    Output format.
# @flag --no-validate                     Skip local schema validation
# @flag --non-interactive                 Do not prompt for user input
# @flag --publish-package                 Automatically publish the package referenced by this app.
# @option --dir                           The path to the directory containing the `app.yaml` file
# @option --path                          The path to the `app.yaml` file
# @flag --no-wait                         Do not wait for the app to become reachable
# @flag --no-default                      Do not make the new app version the default (active) version.
# @flag --no-persist-id                   Do not persist the app version ID in the app.yaml
# @option --owner                         Specify the owner (user or namespace) of the app.
# @option --app-name <name>               Specify the name (user or namespace) of the app to be deployed.
# @flag --bump                            Whether or not to automatically bump the package version if publishing
# @flag --quiet                           Don't print any message.
# @option --template                      A reference to the template to use when creating an app to deploy.
# @option --package                       Name of the package to use when creating an app to deploy
# @flag --use-local-manifest              Whether or not to search (and use) a local manifest when creating an app to deploy
# @flag -h --help                         Print help (see a summary with '-h')
deploy() {
    :;
}
# }} wasmer deploy

# {{ wasmer app
# @cmd Create and manage Wasmer Edge apps
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
app() {
    :;
}

# {{{ wasmer app deploy
# @cmd Deploy an app to Wasmer Edge
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>       Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>         The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @option -f --format[yaml|json|table]    Output format.
# @flag --no-validate                     Skip local schema validation
# @flag --non-interactive                 Do not prompt for user input
# @flag --publish-package                 Automatically publish the package referenced by this app.
# @option --dir                           The path to the directory containing the `app.yaml` file
# @option --path                          The path to the `app.yaml` file
# @flag --no-wait                         Do not wait for the app to become reachable
# @flag --no-default                      Do not make the new app version the default (active) version.
# @flag --no-persist-id                   Do not persist the app version ID in the app.yaml
# @option --owner                         Specify the owner (user or namespace) of the app.
# @option --app-name <name>               Specify the name (user or namespace) of the app to be deployed.
# @flag --bump                            Whether or not to automatically bump the package version if publishing
# @flag --quiet                           Don't print any message.
# @option --template                      A reference to the template to use when creating an app to deploy.
# @option --package                       Name of the package to use when creating an app to deploy
# @flag --use-local-manifest              Whether or not to search (and use) a local manifest when creating an app to deploy
# @flag -h --help                         Print help (see a summary with '-h')
app::deploy() {
    :;
}
# }}} wasmer app deploy

# {{{ wasmer app create
# @cmd Create a new Edge app
# @option --template                               A reference to the template to use.
# @option --package                                Name of the package to use
# @flag -v --verbose*                              Generate verbose output (repeat for more verbosity)
# @flag --use-local-manifest                       Whether or not to search (and use) a local manifest
# @flag --deploy                                   Whether or not to deploy the application once it is created.
# @option --log-format <LOG_FORMAT>                The format to use when generating logs
# @option --color[auto|always|never]               When to display colored output
# @flag --no-validate                              Skip local schema validation
# @flag --non-interactive                          Do not prompt for user input
# @flag --offline                                  Do not interact with any APIs
# @option --owner                                  The owner of the app
# @option --name <APP_NAME>                        The name of the app (can be changed later)
# @option --dir <APP_DIR_PATH>                     The path to the directory where the config file for the application will be written to
# @flag --no-wait                                  Do not wait for the app to become reachable if deployed
# @option --token                                  The (optional) authorization token to pass to the registry
# @option --registry                               Change the current registry
# @option --wasmer-dir <WASMER_DIR>                Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>                  The directory cached artefacts are saved to
# @option -f --format[yaml|json|table]             Output format.
# @option --new-package-name <NEW_PACKAGE_NAME>    Name to use when creating a new package from a template
# @flag --quiet                                    Don't print any message
# @flag -h --help                                  Print help (see a summary with '-h')
app::create() {
    :;
}
# }}} wasmer app create

# {{{ wasmer app get
# @cmd Retrieve detailed informations about an app
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table]    Output format.
# @flag -q --quiet                        Do not print progress messages
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg app                                Identifier of the application.
app::get() {
    :;
}
# }}} wasmer app get

# {{{ wasmer app info
# @cmd Show short information about an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg app                              Identifier of the application.
app::info() {
    :;
}
# }}} wasmer app info

# {{{ wasmer app list
# @cmd List apps belonging to a namespace
# @option -f --format[yaml|json|table|item-table]  Output format.
# @option --token                       The (optional) authorization token to pass to the registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry                    Change the current registry
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option -n --namespace                Get apps in a specific namespace.
# @flag -a --all                        Get all apps that are accessible by the current user, including apps directly owned by the user and apps in namespaces the user can access
# @option --color[auto|always|never]    When to display colored output
# @option --max                         Maximum number of apps to display
# @flag --paging-mode                   Asks whether to display the next page or not
# @flag -h --help                       Print help (see a summary with '-h')
app::list() {
    :;
}
# }}} wasmer app list

# {{{ wasmer app logs
# @cmd Retrieve the logs of an app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table|item-table]  Output format.
# @flag -q --quiet                      Do not print progress messages
# @option --from                        The date of the earliest log entry.
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @option --until                       The date of the latest log entry.
# @option --max                         Maximum log lines to fetch.
# @flag --watch
# @option --streams[stdout|stderr]      Streams of logs to display
# @flag -h --help                       Print help (see a summary with '-h')
# @arg app                              Identifier of the application.
app::logs() {
    :;
}
# }}} wasmer app logs

# {{{ wasmer app purge-cache
# @cmd Purge caches for applications
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table]    Output format.
# @flag -q --quiet                        Do not print progress messages
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg app                                Identifier of the application.
app::purge-cache() {
    :;
}
# }}} wasmer app purge-cache

# {{{ wasmer app delete
# @cmd Delete an existing Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag --non-interactive
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg app                              Identifier of the application.
app::delete() {
    :;
}
# }}} wasmer app delete

# {{{ wasmer app version
# @cmd Manage app versions
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
app::version() {
    :;
}

# {{{{ wasmer app version get
# @cmd Show information for a specific app version
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table]    Output format.
# @flag -q --quiet                        Do not print progress messages
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --name                          *Name* of the version - NOT the unique version id!
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg app                                Identifier of the application.
app::version::get() {
    :;
}
# }}}} wasmer app version get

# {{{{ wasmer app version list
# @cmd List versions of an app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table|item-table]  Output format.
# @flag -q --quiet                      Do not print progress messages
# @flag -a --all                        Get all versions of the app.
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @option --offset                      Pagination offset - get versions after this offset.
# @option --max                         Maximum number of items to return.
# @option --before                      Pagination cursor - get versions before this version.
# @option --after                       Pagination cursor - get versions after this version.
# @option --sort[newest|oldest]
# @flag -h --help                       Print help (see a summary with '-h')
# @arg app                              Identifier of the application.
app::version::list() {
    :;
}
# }}}} wasmer app version list

# {{{{ wasmer app version activate
# @cmd Switch the active version of an app.
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @option -f --format[yaml|json|table]    Output format.
# @flag -q --quiet                        Do not print progress messages
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg version!                           App version ID to activate.
app::version::activate() {
    :;
}
# }}}} wasmer app version activate
# }}} wasmer app version

# {{{ wasmer app secret
# @cmd Manage and reveal secrets related to Edge apps
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
app::secret() {
    :;
}

# {{{{ wasmer app secret create
# @cmd Create a new secret related to an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --quiet                         Don't print any message
# @flag --non-interactive               Do not prompt for user input
# @option --app-dir <APP_DIR_PATH>      The path to the directory where the config file for the application will be written to
# @option --app                         Identifier of the application.
# @option --from-file <from-file>       Path to a file with secrets stored in JSON format to create secrets from
# @flag -h --help                       Print help (see a summary with '-h')
# @arg name                             The name of the secret to create
# @arg value                            The value of the secret to create
app::secret::create() {
    :;
}
# }}}} wasmer app secret create

# {{{{ wasmer app secret delete
# @cmd Delete an existing secret related to an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --quiet                         Don't print any message
# @flag --non-interactive               Do not prompt for user input
# @option --app                         Identifier of the application.
# @option --app-dir <APP_DIR_PATH>      The path to the directory where the config file for the application will be written to
# @option --from-file <from-file>       Path to a file with secrets stored in JSON format to delete secrets from
# @flag --all                           Delete all the secrets related to an app
# @flag --force                         Delete the secret(s) without asking for confirmation
# @flag -h --help                       Print help (see a summary with '-h')
# @arg name                             The name of the secret to delete
app::secret::delete() {
    :;
}
# }}}} wasmer app secret delete

# {{{{ wasmer app secret reveal
# @cmd Reveal the value of an existing secret related to an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --quiet                         Don't print any message
# @flag --non-interactive               Do not prompt for user input
# @option -f --format[yaml|json|table|item-table]  Output format.
# @option --app                         Identifier of the application.
# @option --app-dir <APP_DIR_PATH>      The path to the directory where the config file for the application will be written to
# @flag --all                           Reveal all the secrets related to an app
# @flag -h --help                       Print help (see a summary with '-h')
# @arg name                             The name of the secret to get the value of
app::secret::reveal() {
    :;
}
# }}}} wasmer app secret reveal

# {{{{ wasmer app secret list
# @cmd Retrieve the value of an existing secret related to an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --quiet                         Don't print any message
# @flag --non-interactive               Do not prompt for user input
# @option -f --format[yaml|json|table|item-table]  Output format.
# @option --app                         Identifier of the application.
# @option --app-dir <APP_DIR_PATH>      The path to the directory where the config file for the application will be written to
# @flag -h --help                       Print help (see a summary with '-h')
app::secret::list() {
    :;
}
# }}}} wasmer app secret list

# {{{{ wasmer app secret update
# @cmd Update an existing secret related to an Edge app
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag --quiet                         Don't print any message
# @flag --non-interactive               Do not prompt for user input
# @option --app-dir <APP_DIR_PATH>      The path to the directory where the config file for the application will be written to
# @option --app                         Identifier of the application.
# @option --from-file <from-file>       Path to a file with secrets stored in JSON format to update secrets from
# @flag -h --help                       Print help (see a summary with '-h')
# @arg name                             The name of the secret to update
# @arg value                            The value of the secret to update
app::secret::update() {
    :;
}
# }}}} wasmer app secret update
# }}} wasmer app secret
# }} wasmer app

# {{ wasmer ssh
# @cmd Run commands/packages on Wasmer Edge in an interactive shell session
# @option --token                       The (optional) authorization token to pass to the registry
# @option --registry                    Change the current registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --ssh-port <SSH_PORT>         SSH port to use
# @option --host                        SSH Host
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @option --map-port <MAP_PORT>         Local port mapping to the package that's running, this allows for instance a HTTP server to be tested remotely while giving instant logs over stderr channelled via SSH
# @flag -p --print                      Prints the SSH command rather than executing it
# @flag -h --help                       Print help (see a summary with '-h')
# @arg run                              Package to run on the Deploy servers
# @arg run_args*                        Arguments to pass the package running on Deploy
ssh() {
    :;
}
# }} wasmer ssh

# {{ wasmer namespace
# @cmd Manage Wasmer namespaces
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
namespace() {
    :;
}

# {{{ wasmer namespace get
# @cmd Show a namespace
# @option -f --format[yaml|json|table]    Output format.
# @option --token                         The (optional) authorization token to pass to the registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                        Do not print progress messages
# @option --registry                      Change the current registry
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg name!                              Name of the namespace
namespace::get() {
    :;
}
# }}} wasmer namespace get

# {{{ wasmer namespace list
# @cmd List namespaces
# @option -f --format[yaml|json|table|item-table]  Output format.
# @option --token                       The (optional) authorization token to pass to the registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry                    Change the current registry
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
namespace::list() {
    :;
}
# }}} wasmer namespace list
# }} wasmer namespace

# {{ wasmer domain
# @cmd Manage DNS records
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
domain() {
    :;
}

# {{{ wasmer domain list
# @cmd List domains
# @option -f --format[yaml|json|table|item-table]  Output format.
# @option --token                       The (optional) authorization token to pass to the registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry                    Change the current registry
# @option --log-format <LOG_FORMAT>     The format to use when generating logs
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg namespace                        Name of the namespace
domain::list() {
    :;
}
# }}} wasmer domain list

# {{{ wasmer domain get
# @cmd Get a domain
# @option -f --format[yaml|json|table]    Output format.
# @option --token                         The (optional) authorization token to pass to the registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                        Do not print progress messages
# @option --registry                      Change the current registry
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg name!                              Name of the domain
domain::get() {
    :;
}
# }}} wasmer domain get

# {{{ wasmer domain get-zone-file
# @cmd Get zone file for a domain
# @option -f --format[yaml|json|table]    Output format.
# @option --token                         The (optional) authorization token to pass to the registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                        Do not print progress messages
# @option --registry                      Change the current registry
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option -o --output <ZONE_FILE_PATH>    output file name to store zone file
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg domain_name!                       Name of the domain
domain::get-zone-file() {
    :;
}
# }}} wasmer domain get-zone-file

# {{{ wasmer domain sync-zone-file
# @cmd Sync local zone file with remotex
# @option --token                         The (optional) authorization token to pass to the registry
# @option --registry                      Change the current registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @flag -n --no-delete-missing-records    Do not delete records that are not present in the zone file
# @flag -q --quiet                        Do not print progress messages
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option --color[auto|always|never]      When to display colored output
# @flag -h --help                         Print help (see a summary with '-h')
# @arg zone_file_path!                    filename of  zone-file to sync
domain::sync-zone-file() {
    :;
}
# }}} wasmer domain sync-zone-file

# {{{ wasmer domain register
# @cmd Register new domain
# @option -f --format[yaml|json|table]    Output format.
# @option --token                         The (optional) authorization token to pass to the registry
# @flag -v --verbose*                     Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                        Do not print progress messages
# @option --registry                      Change the current registry
# @option --log-format <LOG_FORMAT>       The format to use when generating logs
# @option -n --namespace                  owner under which the domain will live
# @option --color[auto|always|never]      When to display colored output
# @flag -i --import-records               auto update DNS records for this domain
# @flag -h --help                         Print help (see a summary with '-h')
# @arg name!                              Name of the domain
domain::register() {
    :;
}
# }}} wasmer domain register
# }} wasmer domain

# {{ wasmer gen-completions
# @cmd Generate autocompletion for different shells
# @option --out                                   Where to store the generated file(s) to.
# @flag -v --verbose*                             Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                                Do not print progress messages
# @option --log-format <LOG_FORMAT>               The format to use when generating logs
# @option --color[auto|always|never]              When to display colored output
# @flag -h --help                                 Print help (see a summary with '-h')
# @arg shell![bash|elvish|fish|powershell|zsh]    The shell to generate the autocompletions script for
gen-completions() {
    :;
}
# }} wasmer gen-completions

command eval "$(argc --argc-eval "$0" "$@")"