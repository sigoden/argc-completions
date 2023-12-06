#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                    Print version info and exit
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help

# {{ wasmer login
# @cmd Login into a wasmer.io-like registry
# @flag --no-browser                    Variable to login without opening a browser
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @flag -q --quiet                      Do not print progress messages
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
# @arg token                            The API token to use when communicating with the registry (inferred from the environment by default)
login() {
    :;
}
# }} wasmer login

# {{ wasmer publish
# @cmd Login into a wasmer.io-like registry
# @option --wasmer-dir <WASMER_DIR>        Set Wasmer's home directory
# @option --registry                       The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                      Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>          The directory cached artefacts are saved to
# @option --color[auto|always|never]       When to display colored output
# @option --token                          The API token to use when communicating with the registry (inferred from the environment by default)
# @flag --dry-run                          Run the publish logic without sending anything to the registry server
# @flag --quiet                            Run the publish command without any output
# @option --package-name <PACKAGE_NAME>    Override the package of the uploaded package in the wasmer.toml
# @option --version                        Override the package version of the uploaded package in the wasmer.toml
# @flag --no-validate                      Skip validation of the uploaded package
# @flag --wait                             Wait for package to be available on the registry before exiting
# @option --timeout                        Timeout (in seconds) for the publish query to the registry.
# @flag -h --help                          Print help (see a summary with '-h')
# @arg package_path                        Directory containing the `wasmer.toml`, or a custom *.toml manifest file.
publish() {
    :;
}
# }} wasmer publish

# {{ wasmer cache
# @cmd Wasmer cache
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default) [env: WASMER_TOKEN=]
# @flag -h --help                       Print help
cache() {
    :;
}

# {{{ wasmer cache clean
# @cmd Clear the cache
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
cache::clean() {
    :;
}
# }}} wasmer cache clean

# {{{ wasmer cache dir
# @cmd Display the location of the cache
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
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
# @option --color[auto|always|never]           When to display colored output [default: auto]
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -h --help                              Print help
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
# @option --color[auto|always|never]           When to display colored output [default: auto]
# @flag --cranelift                            Use Cranelift compiler
# @flag --llvm                                 Use LLVM compiler
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @option -m <CPU_FEATURES>
# @flag -h --help                              Print help
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
# @option --color[auto|always|never]               When to display colored output
# @option --target <TARGET_TRIPLE>                 Compilation Target triple
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
# @flag --enable-verifier                          Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>        LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                              Enable support for the SIMD proposal
# @flag --disable-threads                          Disable support for the threads proposal
# @flag --enable-threads                           Deprecated, threads are enabled by default
# @flag --enable-reference-types                   Enable support for the reference types proposal
# @flag --enable-multi-value                       Enable support for the multi value proposal
# @flag --enable-bulk-memory                       Enable support for the bulk memory proposal
# @flag --enable-all                               Enable support for all pre-standard proposals
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
# @option --color[auto|always|never]           When to display colored output
# @option --target <TARGET_TRIPLE>             Compilation Target triple
# @option -m --cpu-features <CPU_FEATURES>
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag --llvm                                 Use LLVM compiler
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
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
# @option --color[auto|always|never]    When to display colored output
# @option --target <TARGET_TRIPLE>      Compilation Target triple
# @option -m --cpu-features <CPU_FEATURES>
# @flag -h --help                       Print help (see a summary with '-h')
# @arg file!                            Input file
gen-c-header() {
    :;
}
# }} wasmer gen-c-header

# {{ wasmer config
# @cmd Get various configuration information needed to compile programs which use Wasmer
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default) [env: WASMER_TOKEN=]
# @flag --prefix                        Print the installation prefix
# @flag --bindir                        Directory containing Wasmer executables
# @flag --includedir                    Directory containing Wasmer headers
# @flag --libdir                        Directory containing Wasmer libraries
# @flag --libs                          Libraries needed to link against Wasmer components
# @flag --cflags                        C compiler flags for files that include Wasmer headers
# @flag --config-path                   Print the path to the wasmer configuration file where all settings are stored
# @flag --pkg-config                    Outputs the necessary details for compiling and linking a program to Wasmer, using the `pkg-config` format
# @flag -h --help                       Print help
config() {
    :;
}

# {{{ wasmer config get
# @cmd `wasmer config get $KEY`
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get() {
    :;
}

# {{{{ wasmer config get registry.url
# @cmd Print the registry URL of the currently active registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get::registry.url() {
    :;
}
# }}}} wasmer config get registry.url

# {{{{ wasmer config get registry.token
# @cmd Print the token for the currently active registry or nothing if not logged in
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get::registry.token() {
    :;
}
# }}}} wasmer config get registry.token

# {{{{ wasmer config get telemetry.enabled
# @cmd Print whether telemetry is currently enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get::telemetry.enabled() {
    :;
}
# }}}} wasmer config get telemetry.enabled

# {{{{ wasmer config get update-notifications.enabled
# @cmd Print whether update notifications are enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get::update-notifications.enabled() {
    :;
}
# }}}} wasmer config get update-notifications.enabled

# {{{{ wasmer config get proxy.url
# @cmd Print the proxy URL
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::get::proxy.url() {
    :;
}
# }}}} wasmer config get proxy.url
# }}} wasmer config get

# {{{ wasmer config set
# @cmd `wasmer config set $KEY $VALUE`
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
config::set() {
    :;
}

# {{{{ wasmer config set registry.url
# @cmd Set the registry URL of the currently active registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
# @arg url!                             Url of the registry
config::set::registry.url() {
    :;
}
# }}}} wasmer config set registry.url

# {{{{ wasmer config set registry.token
# @cmd Set the token for the currently active registry or nothing if not logged in
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
# @arg token!                           Token to set
config::set::registry.token() {
    :;
}
# }}}} wasmer config set registry.token

# {{{{ wasmer config set telemetry.enabled
# @cmd Set whether telemetry is currently enabled
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
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
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
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
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
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
# @option --color[auto|always|never]           When to display colored output [default: auto]
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -h --help                              Print help
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
# @option --color[auto|always|never]         When to display colored output
# @option --token                            The API token to use when communicating with the registry (inferred from the environment by default)
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
# @option --color[auto|always|never]           When to display colored output [default: auto]
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @flag -f --fail-fast                         A flag to indicate wast stop at the first error or continue
# @flag -h --help                              Print help
# @arg file!                                   Wast file to run
wast() {
    :;
}
# }} wasmer wast

# {{ wasmer binfmt
# @cmd Unregister and/or register wasmer as binfmt interpreter
# @option --binfmt-misc <BINFMT_MISC>    Mount point of binfmt_misc fs [default: /proc/sys/fs/binfmt_misc/]
# @flag -v --verbose*                    Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                       Do not print progress messages
# @option --color[auto|always|never]     When to display colored output [default: auto]
# @flag -h --help                        Print help
binfmt() {
    :;
}

# {{{ wasmer binfmt register
# @cmd Register wasmer as binfmt interpreter
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
binfmt::register() {
    :;
}
# }}} wasmer binfmt register

# {{{ wasmer binfmt unregister
# @cmd Unregister a binfmt interpreter for wasm32
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
binfmt::unregister() {
    :;
}
# }}} wasmer binfmt unregister

# {{{ wasmer binfmt reregister
# @cmd Soft unregister, and register
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
binfmt::reregister() {
    :;
}
# }}} wasmer binfmt reregister
# }} wasmer binfmt

# {{ wasmer whoami
# @cmd Shows the current logged in user for the current active registry
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default) [env: WASMER_TOKEN=]
# @flag -h --help                       Print help
whoami() {
    :;
}
# }} wasmer whoami

# {{ wasmer add
# @cmd Add a Wasmer package's bindings to your application
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default) [env: WASMER_TOKEN=]
# @flag --npm                           Add the JavaScript bindings using "npm install"
# @flag --yarn                          Add the JavaScript bindings using "yarn add"
# @flag --pnpm                          Add the JavaScript bindings using "pnpm add"
# @flag --dev                           Add the package as a dev-dependency
# @flag --pip                           Add the Python bindings using "pip install"
# @flag -h --help                       Print help
# @arg packages*                        The packages to add (e.g. "wasmer/wasmer-pack@0.5.0" or "python/python")
add() {
    :;
}
# }} wasmer add

# {{ wasmer run
# @cmd Run a WebAssembly file or Wasmer container
# @option --wasmer-dir <WASMER_DIR>            Set Wasmer's home directory
# @option --registry                           The registry to fetch packages from (inferred from the environment by default)
# @flag -v --verbose*                          Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>              The directory cached artefacts are saved to
# @flag -q --quiet                             Do not print progress messages
# @option --color[auto|always|never]           When to display colored output
# @option --token                              The API token to use when communicating with the registry (inferred from the environment by default)
# @flag --singlepass                           Use Singlepass compiler
# @flag --cranelift                            Use Cranelift compiler
# @flag --llvm                                 Use LLVM compiler
# @flag --enable-verifier                      Enable compiler internal verification
# @option --llvm-debug-dir <LLVM_DEBUG_DIR>    LLVM debug directory, where IR and object files will be written to
# @flag --enable-simd                          Enable support for the SIMD proposal
# @flag --disable-threads                      Disable support for the threads proposal
# @flag --enable-threads                       Deprecated, threads are enabled by default
# @flag --enable-reference-types               Enable support for the reference types proposal
# @flag --enable-multi-value                   Enable support for the multi value proposal
# @flag --enable-bulk-memory                   Enable support for the bulk memory proposal
# @flag --enable-all                           Enable support for all pre-standard proposals
# @option --dir                                WASI pre-opened directory
# @option --mapdir <GUEST_DIR:HOST_DIR>        Map a host directory to a different location for the Wasm module
# @option --env <KEY=VALUE>                    Pass custom environment variables
# @flag --forward-host-env                     Forward all host env variables to guest
# @option --use                                List of other containers this module depends on
# @option --include-webc <WEBC>                List of webc packages that are explicitly included for execution Note: these packages will be used instead of those in the registry
# @option --map-command <MAPCMD>               List of injected atoms
# @flag --net                                  Enable networking with the host network.
# @flag --no-tty                               Disables the TTY bridge
# @flag --enable-async-threads                 Enables asynchronous threading
# @flag --http-client                          Allow instances to send http requests.
# @flag --deny-multiple-wasi-versions          Require WASI modules to only import 1 version of WASI
# @option -a --addr                            The address to serve on
# @option --stack-size <STACK_SIZE>            Set the default stack size (default is 1048576)
# @option -e --entrypoint                      The function or command to invoke
# @flag --COREDUMP                             PATH <COREDUMP PATH> Generate a coredump at this path if a WebAssembly trap occurs
# @flag -h --help                              Print help (see a summary with '-h')
# @arg input!                                  The file, URL, or package to run
# @arg args*                                   Command-line arguments passed to the package
run() {
    :;
}
# }} wasmer run

# {{ wasmer package
# @cmd Package related commands
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
package() {
    :;
}

# {{{ wasmer package download
# @cmd Download a package from the registry
# @option --wasmer-dir <WASMER_DIR>     Set Wasmer's home directory [env: WASMER_DIR=] [default: /home/sigo/.wasmer]
# @option --registry                    The registry to fetch packages from (inferred from the environment by default) [env: WASMER_REGISTRY=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --cache-dir <CACHE_DIR>       The directory cached artefacts are saved to [env: WASMER_CACHE_DIR=]
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --token                       The API token to use when communicating with the registry (inferred from the environment by default) [env: WASMER_TOKEN=]
# @flag --validate                      Verify that the downloaded file is a valid package
# @option -o --out-path <OUT_PATH>      Path where the package file should be written to.
# @flag --quiet                         Run the download command without any output
# @flag -h --help                       Print help
# @arg package!                         The package to download.
package::download() {
    :;
}
# }}} wasmer package download

# {{{ wasmer package build
# @cmd Build a container from a package manifest
# @option -o --out                      Output path for the package file.
# @flag --quiet                         Run the publish command without any output
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg package                          Path of the package or wasmer.toml manifest.
package::build() {
    :;
}
# }}} wasmer package build
# }} wasmer package

# {{ wasmer container
# @cmd Container related commands.
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
container() {
    :;
}

# {{{ wasmer container unpack
# @cmd Extract contents of a container to a directory
# @option -o --out-dir <OUT_DIR>        The output directory
# @flag --overwrite                     Overwrite existing directories/files
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag --quiet                         Run the unpack command without any output
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
# @arg package_path!                    Path to the package
container::unpack() {
    :;
}
# }}} wasmer container unpack
# }} wasmer container

# {{ wasmer deploy
# @cmd Deploy apps to Wasmer Edge
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[json|text]        Output format.
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output
# @flag --no-validate                   Skip local schema validation
# @flag --non-interactive               Do not prompt for user input
# @flag --publish-package               Automatically publish the package referenced by this app.
# @option --path                        The path to the app.yaml file
# @flag --no-wait                       Do not wait for the app to become reachable
# @flag --no-default                    Do not make the new app version the default (active) version.
# @flag --no-persist-id                 Do not persist the app version ID in the app.yaml
# @option --owner                       Specify the owner (user or namespace) of the app.
# @flag -h --help                       Print help (see a summary with '-h')
deploy() {
    :;
}
# }} wasmer deploy

# {{ wasmer app
# @cmd Manage deployed Edge apps
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
app() {
    :;
}

# {{{ wasmer app get
# @cmd Show an app
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[json|text]        Output format.
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg ident                            Identifier of the app.
app::get() {
    :;
}
# }}} wasmer app get

# {{{ wasmer app info
# @cmd Formatting options for a single item
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[json|text]        Output format.
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg ident                            Identifier of the app.
app::info() {
    :;
}
# }}} wasmer app info

# {{{ wasmer app list
# @cmd List apps
# @option -f --format[json|text]        Output format.
# @option --token                       [env: WASMER_TOKEN=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry
# @option --color[auto|always|never]    When to display colored output
# @option -n --namespace                Get apps in a specific namespace.
# @flag -a --all                        Get all apps that are accessible by the current user, including apps directly owned by the user and apps in namespaces the user can access
# @flag -h --help                       Print help (see a summary with '-h')
app::list() {
    :;
}
# }}} wasmer app list

# {{{ wasmer app logs
# @cmd Show an app
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @option -f --format[json|text]        Output format.
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output
# @option --from                        The date of the earliest log entry.
# @option --until                       The date of the latest log entry.
# @option --max                         Maximum log lines to fetch.
# @flag -h --help                       Print help (see a summary with '-h')
# @arg ident!                           The name of the app.
app::logs() {
    :;
}
# }}} wasmer app logs

# {{{ wasmer app create
# @cmd Formatting options for a single item
# @option -t --type <type>                         Possible values:
# @flag --publish-package
# @flag -v --verbose*                              Generate verbose output (repeat for more verbosity)
# @flag --no-validate                              Skip local schema validation
# @flag -q --quiet                                 Do not print progress messages
# @option --color[auto|always|never]               When to display colored output
# @flag --non-interactive                          Do not prompt for user input
# @flag --offline                                  Do not interact with any APIs
# @option --owner                                  The owner of the app
# @option --new-package-name <NEW_PACKAGE_NAME>    Name to use when creating a new package
# @option --name                                   The name of the app (can be changed later)
# @option --path                                   The path to a YAML file the app config
# @flag --no-wait                                  Do not wait for the app to become reachable
# @option --token                                  [env: WASMER_TOKEN=]
# @option --registry
# @option -f --format[json|text]                   Output format.
# @option -p --package                             Name of the package to use
# @flag -h --help                                  Print help (see a summary with '-h')
app::create() {
    :;
}
# }}} wasmer app create

# {{{ wasmer app delete
# @cmd Show an app
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag --non-interactive
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output
# @flag -h --help                       Print help (see a summary with '-h')
# @arg ident!                           Identifier of the app.
app::delete() {
    :;
}
# }}} wasmer app delete
# }} wasmer app

# {{ wasmer ssh
# @cmd Run commands/packages on Wasmer Edge in an interactive shell session
# @option --token                       [env: WASMER_TOKEN=]
# @option --registry
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --ssh-port <SSH_PORT>         SSH port to use [default: 22]
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @option --host                        SSH Host [default: root.wasmer.network]
# @option --map-port <MAP_PORT>         Local port mapping to the package that's running, this allows for instance a HTTP server to be tested remotely while giving instant logs over stderr channelled via SSH
# @flag -p --print                      Prints the SSH command rather than executing it
# @flag -h --help                       Print help
# @arg run                              Package to run on the Deploy servers [default: sharrattj/bash]
# @arg run_args*                        Arguments to pass the package running on Deploy
ssh() {
    :;
}
# }} wasmer ssh

# {{ wasmer namespace
# @cmd Manage Wasmer namespaces
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
namespace() {
    :;
}

# {{{ wasmer namespace get
# @cmd Show a namespace
# @option -f --format[json|text]        Output format.
# @option --token                       [env: WASMER_TOKEN=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
# @arg name!                            Name of the namespace
namespace::get() {
    :;
}
# }}} wasmer namespace get

# {{{ wasmer namespace list
# @cmd List namespaces
# @option -f --format[json|text]        Output format.
# @option --token                       [env: WASMER_TOKEN=]
# @flag -v --verbose*                   Generate verbose output (repeat for more verbosity)
# @flag -q --quiet                      Do not print progress messages
# @option --registry
# @option --color[auto|always|never]    When to display colored output [default: auto]
# @flag -h --help                       Print help
namespace::list() {
    :;
}
# }}} wasmer namespace list
# }} wasmer namespace

command eval "$(argc --argc-eval "$0" "$@")"