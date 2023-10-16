#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ wasm-tools parse
# @cmd Parse the WebAssembly text format
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -t --wat                Output the text format of WebAssembly instead of the binary format
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
parse() {
    :;
}
# }} wasm-tools parse

# {{ wasm-tools validate
# @cmd Validate a WebAssembly binary
# @option -f --features         Comma-separated list of WebAssembly features to enable during validation.
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
validate() {
    :;
}
# }} wasm-tools validate

# {{ wasm-tools print
# @cmd Print the textual form of a WebAssembly binary
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -p --print-offsets      Whether or not to print binary offsets intermingled in the text format as comments for debugging
# @flag --skeleton              Indicates that the "skeleton" of a module should be printed where items such as function bodies, data segments, and element segments are replaced with "..." instead of printing their actual contents
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
print() {
    :;
}
# }} wasm-tools print

# {{ wasm-tools smith
# @cmd A WebAssembly test case generator
# @option -o --output <file>    Where to place output.
# @flag -t --wat                Output the text format of WebAssembly instead of the binary format
# @flag --ensure-termination    Ensure that execution of generated Wasm modules will always terminate.
# @flag --maybe-invalid         Indicates that the generated module may contain invalid wasm functions, taken raw from the input DNA
# @option -f --fuel             The default amount of fuel used with `--ensure-termination`.
# @option -c --config           JSON configuration file with settings to control the wasm output
# @option --min-types <MIN_TYPES>
# @option --max-types <MAX_TYPES>
# @option --min-imports <MIN_IMPORTS>
# @option --max-imports <MAX_IMPORTS>
# @option --min-tags <MIN_TAGS>
# @option --max-tags <MAX_TAGS>
# @option --min-funcs <MIN_FUNCS>
# @option --max-funcs <MAX_FUNCS>
# @option --min-globals <MIN_GLOBALS>
# @option --max-globals <MAX_GLOBALS>
# @option --min-exports <MIN_EXPORTS>
# @option --max-exports <MAX_EXPORTS>
# @option --export-everything[true|false] <EXPORT_EVERYTHING>
# @option --min-element-segments <MIN_ELEMENT_SEGMENTS>
# @option --max-element-segments <MAX_ELEMENT_SEGMENTS>
# @option --min-data-segments <MIN_DATA_SEGMENTS>
# @option --max-data-segments <MAX_DATA_SEGMENTS>
# @option --max-instructions <MAX_INSTRUCTIONS>
# @option --min-memories <MIN_MEMORIES>
# @option --max-memories <MAX_MEMORIES>
# @option --min-tables <MIN_TABLES>
# @option --max-tables <MAX_TABLES>
# @option --max-memory-pages <MAX_MEMORY_PAGES>
# @option --memory-max-size-required[true|false] <MEMORY_MAX_SIZE_REQUIRED>
# @option --max-table-elements <MAX_TABLE_ELEMENTS>
# @option --table-max-size-required[true|false] <TABLE_MAX_SIZE_REQUIRED>
# @option --max-instances <MAX_INSTANCES>
# @option --max-modules <MAX_MODULES>
# @option --min-uleb-size <MIN_ULEB_SIZE>
# @option --bulk-memory[true|false] <BULK_MEMORY_ENABLED>
# @option --reference-types[true|false] <REFERENCE_TYPES_ENABLED>
# @option --tail-call[true|false] <TAIL_CALL_ENABLED>
# @option --simd[true|false] <SIMD_ENABLED>
# @option --relaxed-simd[true|false] <RELAXED_SIMD_ENABLED>
# @option --exception-handling[true|false] <EXCEPTIONS_ENABLED>
# @option --allow-start[true|false] <ALLOW_START_EXPORT>
# @option --max-aliases <MAX_ALIASES>
# @option --max-nesting-depth <MAX_NESTING_DEPTH>
# @option --max-type-size <MAX_TYPE_SIZE>
# @option --memory64[true|false] <MEMORY64_ENABLED>
# @option --canonicalize-nans[true|false] <CANONICALIZE_NANS>
# @option --multi-value[true|false] <MULTI_VALUE_ENABLED>
# @option --sign-extension-ops[true|false] <SIGN_EXTENSION_OPS_ENABLED>
# @option --saturating-float-to-int[true|false] <SATURATING_FLOAT_TO_INT_ENABLED>
# @option --generate-custom-sections[true|false] <GENERATE_CUSTOM_SECTIONS>
# @option --available-imports <AVAILABLE_IMPORTS>
# @option --allowed-instructions[numeric|vector|reference|parametric|variable|table|memory|control] <ALLOWED_INSTRUCTIONS>  Limit what kinds of instructions are allowed.
# @option --threads[true|false] <THREADS_ENABLED>
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               The arbitrary input seed.
smith() {
    :;
}
# }} wasm-tools smith

# {{ wasm-tools shrink
# @cmd Shrink a Wasm file while maintaining a property of interest (such as triggering a compiler bug)
# @option -a --attempts         The number of shrink attempts to try before considering a Wasm module as small as it will ever get
# @flag --allow-empty           Allow shrinking the input down to an empty Wasm module.
# @option -s --seed             The RNG seed for choosing which size-reducing mutation to attempt next
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -h --help               Print help (see a summary with '-h')
# @arg predicate!               The interestingness predicate script
# @arg input-file               Input file to process.
shrink() {
    :;
}
# }} wasm-tools shrink

# {{ wasm-tools mutate
# @cmd A WebAssembly test case mutator
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -t --wat                Output the text format of WebAssembly instead of the binary format
# @option -s --seed             The RNG seed used to choose which transformation to apply.
# @flag --preserve-semantics    Only perform semantics-preserving transformations on the Wasm module
# @option -f --fuel             Fuel to control the time of the mutation
# @flag --reduce                Only perform size-reducing transformations on the Wasm module.
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
mutate() {
    :;
}
# }} wasm-tools mutate

# {{ wasm-tools dump
# @cmd Debugging utility to dump information about a wasm binary
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
dump() {
    :;
}
# }} wasm-tools dump

# {{ wasm-tools objdump
# @cmd Dumps information about sections in a WebAssembly file
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
objdump() {
    :;
}
# }} wasm-tools objdump

# {{ wasm-tools strip
# @cmd Removes custom sections from an input WebAssembly file
# @option -o --output <file>     Where to place output.
# @flag -v --verbose*            Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                Use colors in output
# @flag -a --all                 Remove all custom sections, regardless of name
# @option -d --delete <REGEX>    Remove custom sections matching the specified regex
# @flag -t --wat                 Output the text format of WebAssembly instead of the binary format
# @flag -h --help                Print help (see a summary with '-h')
# @arg input-file                Input file to process.
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
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag -t --wat                Output the text format of WebAssembly instead of the binary format
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
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
# @option --adapt <[NAME=]MODULE>    The path to an adapter module to satisfy imports not otherwise bound to WIT interfaces.
# @option -o --output <file>         Where to place output.
# @flag -v --verbose*                Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                    Use colors in output
# @flag --skip-validation            Skip validation of the output component
# @flag -t --wat                     Print the output in the WebAssembly text format instead of binary
# @flag --realloc-via-memory-grow    Use memory.grow to realloc memory and stack allocation
# @flag -h --help                    Print help (see a summary with '-h')
# @arg input-file                    Input file to process.
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
# @flag -h --help                Print help (see a summary with '-h')
# @arg input-file                Input file or directory to process.
component::wit() {
    :;
}
# }}} wasm-tools component wit

# {{{ wasm-tools component embed
# @cmd Embeds metadata for a component inside of a core wasm module
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @option --encoding            The expected string encoding format for the component.
# @option -w --world            The world that the component uses.
# @flag --dummy                 Don't read a core wasm module as input, instead generating a "dummy" module as a placeholder.
# @flag -t --wat                Print the output in the WebAssembly text format instead of binary
# @flag -h --help               Print help (see a summary with '-h')
# @arg wit!                     The WIT package where the `world` that the core wasm module implements lives.
# @arg input-file               Input file to process.
component::embed() {
    :;
}
# }}} wasm-tools component embed

# {{{ wasm-tools component targets
# @cmd Tool for verifying whether a component conforms to a world
# @flag -v --verbose*    Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color        Use colors in output
# @option -w --world     The world used to test whether a component conforms to its signature
# @flag -h --help        Print help (see a summary with '-h')
# @arg wit!              The WIT package containing the `world` used to test a component for conformance.
# @arg input-file        Input file to process.
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
# @flag -h --help                          Print help (see a summary with '-h')
# @arg name-module* <[NAME=]MODULE>        Input libraries to link
component::link() {
    :;
}
# }}} wasm-tools component link
# }} wasm-tools component

# {{ wasm-tools metadata
# @cmd Manipulate metadata (module name, producers) to a WebAssembly file
# @flag -h --help    Print help
metadata() {
    :;
}

# {{{ wasm-tools metadata show
# @cmd Read metadata (module name, producers) from a WebAssembly file
# @option -o --output <file>    Where to place output.
# @flag -v --verbose*           Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color               Use colors in output
# @flag --json                  Output in JSON encoding
# @flag -h --help               Print help (see a summary with '-h')
# @arg input-file               Input file to process.
metadata::show() {
    :;
}
# }}} wasm-tools metadata show

# {{{ wasm-tools metadata add
# @cmd Add metadata (module name, producers) to a WebAssembly file
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
# @option -o --output <file>       Where to place output.
# @flag -v --verbose*              Use verbose output (-v info, -vv debug, -vvv trace)
# @option --color                  Use colors in output
# @flag --code-section-relative    Indicates that addresses are code-section-relative instead of offsets from the beginning of the module
# @flag -h --help                  Print help (see a summary with '-h')
# @arg input-file                  Input file to process.
# @arg addresses*                  Addresses to convert to filenames and line numbers.
addr2line() {
    :;
}
# }} wasm-tools addr2line

command eval "$(argc --argc-eval "$0" "$@")"