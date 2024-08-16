#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ wasm-tools parse
# @cmd Parse the WebAssembly text format
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -t --wat                           Output the text format of WebAssembly instead of the binary format
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
parse() {
    :;
}
# }} wasm-tools parse

# {{ wasm-tools validate
# @cmd Validate a WebAssembly binary
# @option -f --features                    Comma-separated list of WebAssembly features to enable during validation.
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
validate() {
    :;
}
# }} wasm-tools validate

# {{ wasm-tools print
# @cmd Print the textual form of a WebAssembly binary
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -p --print-offsets                 Whether or not to print binary offsets intermingled in the text format as comments for debugging
# @flag --skeleton                         Indicates that the "skeleton" of a module should be printed.
# @flag --name-unnamed                     Ensure all wasm items have `$`-based names, even if they don't have an entry in the `name` section.
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
print() {
    :;
}
# }} wasm-tools print

# {{ wasm-tools smith
# @cmd A WebAssembly test case generator
# @option -o --output <file>                       Where to place output.
# @flag -t --wat                                   Output the text format of WebAssembly instead of the binary format
# @flag --ensure-termination                       Ensure that execution of generated Wasm modules will always terminate.
# @option -f --fuel                                The default amount of fuel used with `--ensure-termination`.
# @option -c --config                              JSON configuration file with settings to control the wasm output
# @option --available-imports <AVAILABLE_IMPORTS>  The imports that may be used when generating the module.
# @option --exports                                If provided, the generated module will have exports with exactly the same names and types as those in the provided WebAssembly module.
# @option --allow-start-export[true|false] <ALLOW_START_EXPORT>  Determines whether a `start` export may be included.
# @option --allowed-instructions <ALLOWED_INSTRUCTIONS>  The kinds of instructions allowed in the generated wasm programs.
# @option --bulk-memory-enabled[true|false] <BULK_MEMORY_ENABLED>  Determines whether the bulk memory proposal is enabled for generating instructions.
# @option --canonicalize-nans[true|false] <CANONICALIZE_NANS>  Returns whether NaN values are canonicalized after all f32/f64 operation.
# @option --disallow-traps[true|false] <DISALLOW_TRAPS>  Returns whether we should avoid generating code that will possibly trap.
# @option --exceptions-enabled[true|false] <EXCEPTIONS_ENABLED>  Determines whether the exception-handling proposal is enabled for generating instructions.
# @option --export-everything[true|false] <EXPORT_EVERYTHING>  Export all WebAssembly objects in the module.
# @option --gc-enabled[true|false] <GC_ENABLED>    Determines whether the GC proposal is enabled when generating a Wasm module.
# @option --custom-page-sizes-enabled[true|false] <CUSTOM_PAGE_SIZES_ENABLED>  Determines whether the custom-page-sizes proposal is enabled when generating a Wasm module.
# @option --generate-custom-sections[true|false] <GENERATE_CUSTOM_SECTIONS>  Returns whether we should generate custom sections or not.
# @option --max-aliases <MAX_ALIASES>              Returns the maximal size of the `alias` section.
# @option --max-components <MAX_COMPONENTS>        The maximum number of components to use.
# @option --max-data-segments <MAX_DATA_SEGMENTS>  The maximum number of data segments to generate.
# @option --max-element-segments <MAX_ELEMENT_SEGMENTS>  The maximum number of element segments to generate.
# @option --max-elements <MAX_ELEMENTS>            The maximum number of elements within a segment to generate.
# @option --max-exports <MAX_EXPORTS>              The maximum number of exports to generate.
# @option --max-funcs <MAX_FUNCS>                  The maximum number of functions to generate.
# @option --max-globals <MAX_GLOBALS>              The maximum number of globals to generate.
# @option --max-imports <MAX_IMPORTS>              The maximum number of imports to generate.
# @option --max-instances <MAX_INSTANCES>          The maximum number of instances to use.
# @option --max-instructions <MAX_INSTRUCTIONS>    The maximum number of instructions to generate in a function body.
# @option --max-memories <MAX_MEMORIES>            The maximum number of memories to use.
# @option --max-memory32-bytes <MAX_MEMORY32_BYTES>  The maximum, in bytes, of any 32-bit memory's initial or maximum size.
# @option --max-memory64-bytes <MAX_MEMORY64_BYTES>  The maximum, in bytes, of any 64-bit memory's initial or maximum size.
# @option --max-modules <MAX_MODULES>              The maximum number of modules to use.
# @option --max-nesting-depth <MAX_NESTING_DEPTH>  Returns the maximal nesting depth of modules with the component model proposal.
# @option --max-table-elements <MAX_TABLE_ELEMENTS>  The maximum, elements, of any table's initial or maximum size.
# @option --max-tables <MAX_TABLES>                The maximum number of tables to use.
# @option --max-tags <MAX_TAGS>                    The maximum number of tags to generate.
# @option --max-type-size <MAX_TYPE_SIZE>          Returns the maximal effective size of any type generated by wasm-smith.
# @option --max-types <MAX_TYPES>                  The maximum number of types to generate.
# @option --max-values <MAX_VALUES>                The maximum number of values to use.
# @option --memory64-enabled[true|false] <MEMORY64_ENABLED>  Returns whether 64-bit memories are allowed.
# @option --memory-max-size-required[true|false] <MEMORY_MAX_SIZE_REQUIRED>  Whether every Wasm memory must have a maximum size specified.
# @option --memory-offset-choices <MEMORY_OFFSET_CHOICES>  Control the probability of generating memory offsets that are in bounds vs.
# @option --min-data-segments <MIN_DATA_SEGMENTS>  The minimum number of data segments to generate.
# @option --min-element-segments <MIN_ELEMENT_SEGMENTS>  The minimum number of element segments to generate.
# @option --min-elements <MIN_ELEMENTS>            The minimum number of elements within a segment to generate.
# @option --min-exports <MIN_EXPORTS>              The minimum number of exports to generate.
# @option --min-funcs <MIN_FUNCS>                  The minimum number of functions to generate.
# @option --min-globals <MIN_GLOBALS>              The minimum number of globals to generate.
# @option --min-imports[num_func_types|max_funcs] <MIN_IMPORTS>  The minimum number of imports to generate.
# @option --min-memories <MIN_MEMORIES>            The minimum number of memories to use.
# @option --min-tables <MIN_TABLES>                The minimum number of tables to use.
# @option --min-tags <MIN_TAGS>                    The minimum number of tags to generate.
# @option --min-types <MIN_TYPES>                  The minimum number of types to generate.
# @option --min-uleb-size <MIN_ULEB_SIZE>          The minimum size, in bytes, of all leb-encoded integers.
# @option --multi-value-enabled[true|false] <MULTI_VALUE_ENABLED>  Determines whether the multi-value results are enabled.
# @option --reference-types-enabled[true|false] <REFERENCE_TYPES_ENABLED>  Determines whether the reference types proposal is enabled for generating instructions.
# @option --relaxed-simd-enabled[true|false] <RELAXED_SIMD_ENABLED>  Determines whether the Relaxed SIMD proposal is enabled for generating instructions.
# @option --saturating-float-to-int-enabled[true|false] <SATURATING_FLOAT_TO_INT_ENABLED>  Determines whether the nontrapping-float-to-int-conversions propsal is enabled.
# @option --sign-extension-ops-enabled[true|false] <SIGN_EXTENSION_OPS_ENABLED>  Determines whether the sign-extension-ops propsal is enabled.
# @option --simd-enabled[true|false] <SIMD_ENABLED>  Determines whether the SIMD proposal is enabled for generating instructions.
# @option --tail-call-enabled[true|false] <TAIL_CALL_ENABLED>  Determines whether the tail calls proposal is enabled for generating instructions.
# @option --table-max-size-required[true|false] <TABLE_MAX_SIZE_REQUIRED>  Whether every Wasm table must have a maximum size specified.
# @option --threads-enabled[true|false] <THREADS_ENABLED>  Determines whether the threads proposal is enabled.
# @option --allow-invalid-funcs[true|false] <ALLOW_INVALID_FUNCS>  Indicates whether wasm-smith is allowed to generate invalid function bodies.
# @flag -v --verbose*                              Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                                  Use colors in output
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg input-file                                  The arbitrary input seed.
smith() {
    :;
}
# }} wasm-tools smith

# {{ wasm-tools shrink
# @cmd Shrink a Wasm file while maintaining a property of interest (such as triggering a compiler bug)
# @option -a --attempts                    The number of shrink attempts to try before considering a Wasm module as small as it will ever get
# @flag --allow-empty                      Allow shrinking the input down to an empty Wasm module.
# @option -s --seed                        The RNG seed for choosing which size-reducing mutation to attempt next
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -h --help                          Print help (see a summary with '-h')
# @arg predicate!                          The interestingness predicate script
# @arg input-file                          Input file to process.
shrink() {
    :;
}
# }} wasm-tools shrink

# {{ wasm-tools mutate
# @cmd A WebAssembly test case mutator
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -t --wat                           Output the text format of WebAssembly instead of the binary format
# @option -s --seed                        The RNG seed used to choose which transformation to apply.
# @flag --preserve-semantics               Only perform semantics-preserving transformations on the Wasm module
# @option -f --fuel                        Fuel to control the time of the mutation
# @flag --reduce                           Only perform size-reducing transformations on the Wasm module.
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
mutate() {
    :;
}
# }} wasm-tools mutate

# {{ wasm-tools dump
# @cmd Debugging utility to dump information about a wasm binary
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
dump() {
    :;
}
# }} wasm-tools dump

# {{ wasm-tools objdump
# @cmd Dumps information about sections in a WebAssembly file
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
objdump() {
    :;
}
# }} wasm-tools objdump

# {{ wasm-tools strip
# @cmd Removes custom sections from an input WebAssembly file
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -a --all                           Remove all custom sections, regardless of name
# @option -d --delete <REGEX>              Remove custom sections matching the specified regex
# @flag -t --wat                           Output the text format of WebAssembly instead of the binary format
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
strip() {
    :;
}
# }} wasm-tools strip

# {{ wasm-tools compose
# @cmd WebAssembly component composer
# @flag -v --verbose*                Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                    Use colors in output
# @option -o --output <file>         Where to place output.
# @option -c --config                The path to the configuration file to use
# @option -d --definitions <DEFS>    Definition components whose exports define import dependencies to fulfill from
# @option -p --search-path <PATH>    A path to search for imports
# @flag --skip-validation            Skip validation of the composed output component
# @flag --no-imports                 Do not allow instance imports in the composed output component
# @flag -t --wat                     Output the text format of WebAssembly instead of the binary format
# @flag -h --help                    Print help (see a summary with '-h')
# @flag -V --version                 Print version
# @arg component!                    The path to the root component to compose
compose() {
    :;
}
# }} wasm-tools compose

# {{ wasm-tools demangle
# @cmd Demangle Rust and C++ symbol names in the `name` section
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag -t --wat                           Output the text format of WebAssembly instead of the binary format
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
demangle() {
    :;
}
# }} wasm-tools demangle

# {{ wasm-tools component
# @cmd WebAssembly wit-based component tooling
# @flag -h --help    Print help
component() {
    :;
}

# {{{ wasm-tools component new
# @cmd WebAssembly component encoder from an input core wasm binary
# @option --adapt <[NAME=]MODULE>          The path to an adapter module to satisfy imports not otherwise bound to WIT interfaces.
# @option --import-name <[OLD]=NEW>        Rename an instance import in the output component.
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag --skip-validation                  Skip validation of the output component
# @flag -t --wat                           Print the output in the WebAssembly text format instead of binary
# @flag --realloc-via-memory-grow          Use memory.grow to realloc memory and stack allocation
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
component::new() {
    :;
}
# }}} wasm-tools component new

# {{{ wasm-tools component wit
# @cmd Tool for working with the WIT text format for components
# @flag -v --verbose*            Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                Use colors in output
# @option -o --output <file>     Where to place output.
# @flag -w --wasm                Emit a WebAssembly binary representation instead of the WIT text format
# @flag -t --wat                 Emit a WebAssembly textual representation instead of the WIT text format
# @flag --no-docs                Do not include doc comments when emitting WIT text
# @option --out-dir <OUT_DIR>    Emit the entire WIT resolution graph instead of just the "top level" package to the output directory specified.
# @flag --skip-validation        Skips the validation performed when using the `--wasm` and `--wat` options
# @flag -j --json                Emit the WIT document as JSON instead of text
# @option --features             Features to enable when parsing the `wit` option.
# @flag --all-features           Enable all features when parsing the `wit` option.
# @flag -h --help                Print help (see a summary with '-h')
# @arg input-file                Input file or directory to process.
component::wit() {
    :;
}
# }}} wasm-tools component wit

# {{{ wasm-tools component embed
# @cmd Embeds metadata for a component inside of a core wasm module
# @option --features                       Features to enable when parsing the `wit` option.
# @flag --all-features                     Enable all features when parsing the `wit` option.
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @option --encoding                       The expected string encoding format for the component.
# @option -w --world                       The world that the component uses.
# @flag --dummy                            Don't read a core wasm module as input, instead generating a "dummy" module as a placeholder.
# @flag -t --wat                           Print the output in the WebAssembly text format instead of binary
# @flag -h --help                          Print help (see a summary with '-h')
# @arg wit!                                Path to WIT files to load.
# @arg input-file                          Input file to process.
component::embed() {
    :;
}
# }}} wasm-tools component embed

# {{{ wasm-tools component targets
# @cmd Tool for verifying whether a component conforms to a world
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @option --features                       Features to enable when parsing the `wit` option.
# @flag --all-features                     Enable all features when parsing the `wit` option.
# @option -w --world                       The world used to test whether a component conforms to its signature.
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @flag -h --help                          Print help (see a summary with '-h')
# @arg wit!                                Path to WIT files to load.
# @arg input-file                          Input file to process.
component::targets() {
    :;
}
# }}} wasm-tools component targets

# {{{ wasm-tools component link
# @cmd Link one or more dynamic library modules, producing a component
# @option --dl-openable <[NAME=]MODULE>    Input library to link and make available for dynamic resolution via `dlopen` (may be repeated)
# @option --adapt <[NAME=]MODULE>          The path to an adapter module to satisfy imports not otherwise bound to WIT interfaces.
# @option --stack-size <STACK_SIZE>        Size of stack (in bytes) to allocate in the synthesized main module
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag --skip-validation                  Skip validation of the output component
# @flag -t --wat                           Print the output in the WebAssembly text format instead of binary
# @flag --stub-missing-functions           Generate trapping stubs for any missing functions
# @flag --use-built-in-libdl               Use built-in implementations of `dlopen`/`dlsym`
# @flag -h --help                          Print help (see a summary with '-h')
# @arg name-module* <[NAME=]MODULE>        Input libraries to link
component::link() {
    :;
}
# }}} wasm-tools component link

# {{{ wasm-tools component semver-check
# @cmd Tool for verifying whether one world is a semver compatible evolution of another
# @flag -v --verbose*     Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color         Use colors in output
# @option --features      Features to enable when parsing the `wit` option.
# @flag --all-features    Enable all features when parsing the `wit` option.
# @option --prev          The "previous" world, or older version, of what's being tested.
# @option --new           The "new" world which is the "prev" world but modified.
# @flag -h --help         Print help (see a summary with '-h')
# @arg wit!               Path to WIT files to load.
component::semver-check() {
    :;
}
# }}} wasm-tools component semver-check
# }} wasm-tools component

# {{ wasm-tools metadata
# @cmd Manipulate metadata (module name, producers) to a WebAssembly file
# @flag -h --help    Print help
metadata() {
    :;
}

# {{{ wasm-tools metadata show
# @cmd Read metadata (module name, producers) from a WebAssembly file
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag --json                             Output in JSON encoding
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
metadata::show() {
    :;
}
# }}} wasm-tools metadata show

# {{{ wasm-tools metadata add
# @cmd Add metadata (module name, producers) to a WebAssembly file
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @option --name                           Add a module or component name to the names section
# @option --language <NAME>                Add a programming language to the producers section
# @option --processed-by <NAME=VERSION>    Add a tool and its version to the producers section
# @option --sdk <NAME=VERSION>             Add an SDK and its version to the producers section
# @option --registry-metadata <PATH>       Add an registry metadata to the registry-metadata section
# @flag -t --wat                           Output the text format of WebAssembly instead of the binary format
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
metadata::add() {
    :;
}
# }}} wasm-tools metadata add
# }} wasm-tools metadata

# {{ wasm-tools wit-smith
# @cmd A WIT test case generator
# @option -o --output <file>                     Where to place output.
# @flag -t --wat                                 Output the text format of WebAssembly instead of the binary format
# @option --max-packages <MAX_PACKAGES>          [default: 10]
# @option --max-type-size <MAX_TYPE_SIZE>        [default: 100]
# @option --max-interface-items <MAX_INTERFACE_ITEMS>  [default: 10]
# @option --max-world-items <MAX_WORLD_ITEMS>    [default: 10]
# @option --max-pkg-items <MAX_PKG_ITEMS>        [default: 10]
# @option --max-type-parts <MAX_TYPE_PARTS>      [default: 10]
# @option --max-files-per-package <MAX_FILES_PER_PACKAGE>  [default: 10]
# @option --max-resource-items <MAX_RESOURCE_ITEMS>  [default: 10]
# @flag --arbitrary-config                       Indicates that "arbitrary configuration" should be used meaning that the input seed is first used to generate the configuration and then afterwards the rest of the seed is used to generate the document
# @flag -v --verbose*                            Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                                Use colors in output
# @flag -h --help                                Print help (see a summary with '-h')
# @arg input-file                                The arbitrary input seed.
wit-smith() {
    :;
}
# }} wasm-tools wit-smith

# {{ wasm-tools addr2line
# @cmd Translate a WebAssembly address to a filename and line number using DWARF debugging information
# @option --generate-dwarf <lines|full>    Optionally generate DWARF debugging information from WebAssembly text files.
# @flag -g                                 Shorthand for `--generate-dwarf full`
# @option -o --output <file>               Where to place output.
# @flag -v --verbose*                      Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                          Use colors in output
# @flag --code-section-relative            Indicates that addresses are code-section-relative instead of offsets from the beginning of the module
# @flag -h --help                          Print help (see a summary with '-h')
# @arg input-file                          Input file to process.
# @arg addresses*                          Addresses to convert to filenames and line numbers.
addr2line() {
    :;
}
# }} wasm-tools addr2line

# {{ wasm-tools completion
# @cmd Generate shell completion scripts for this CLI
# @flag -v --verbose*                             Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                                 Use colors in output
# @flag -h --help                                 Print help (see a summary with '-h')
# @arg shell![bash|elvish|fish|powershell|zsh]    The shell to generate completions for
completion() {
    :;
}
# }} wasm-tools completion

# {{ wasm-tools json-from-wast
# @cmd Convert a `*.wast` WebAssembly spec test into a `*.json` file and `*.wasm` files
# @flag -v --verbose*              Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                  Use colors in output
# @option -o --output <file>       Where to place output.
# @option --wasm-dir <WASM_DIR>    Where to place binary and text WebAssembly files referenced by tests.
# @flag --pretty                   Output pretty-printed JSON instead of compact json
# @option --allow-confusing-unicode[true|false] <ALLOW_CONFUSING_UNICODE>  Controls the "allow confusing unicode" option which will reject parsing files that have unusual characters.
# @flag -h --help                  Print help (see a summary with '-h')
# @arg wast!                       Input `*.wast` file that will be parsed and converted to JSON
json-from-wast() {
    :;
}
# }} wasm-tools json-from-wast

command eval "$(argc --argc-eval "$0" "$@")"