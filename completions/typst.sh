#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbosity*    Sets the level of logging verbosity: -v = warning & error, -vv = info, -vvv = debug, -vvvv = trace
# @flag -h --help          Print help
# @flag -V --version       Print version

# {{ typst compile
# @cmd Compiles an input file into a PDF or PNG file [aliases: c]
# @option --root <DIR>                 Configures the project root [env: TYPST_ROOT=]
# @option --font-path <DIR>            Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  In which format to emit diagnostics [default: human]
# @option --open                       Opens the output file using the default viewer after compilation
# @option --ppi                        The PPI (pixels per inch) to use for PNG export [default: 144]
# @option --flamegraph <OUTPUT_SVG>    Produces a flamegraph of the compilation process
# @flag -h --help                      Print help
# @arg input!                          Path to input Typst file
# @arg output                          Path to output PDF file or PNG file(s)
compile() {
    :;
}
# }} typst compile

# {{ typst watch
# @cmd Watches an input file and recompiles on changes [aliases: w]
# @option --root <DIR>                 Configures the project root [env: TYPST_ROOT=]
# @option --font-path <DIR>            Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  In which format to emit diagnostics [default: human]
# @option --open                       Opens the output file using the default viewer after compilation
# @option --ppi                        The PPI (pixels per inch) to use for PNG export [default: 144]
# @option --flamegraph <OUTPUT_SVG>    Produces a flamegraph of the compilation process
# @flag -h --help                      Print help
# @arg input!                          Path to input Typst file
# @arg output                          Path to output PDF file or PNG file(s)
watch() {
    :;
}
# }} typst watch

# {{ typst query
# @cmd Processes an input file to extract provided metadata
# @option --root <DIR>           Configures the project root [env: TYPST_ROOT=]
# @option --font-path <DIR>      Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  In which format to emit diagnostics [default: human]
# @option --field                Extract just one field from all retrieved elements
# @flag --one                    Expect and retrieve exactly one element
# @option --format[json|yaml]    The format to serialization in [default: json]
# @flag -h --help                Print help
# @arg input!                    Path to input Typst file
# @arg selector!                 Define what elements to retrieve
query() {
    :;
}
# }} typst query

# {{ typst fonts
# @cmd Lists all discovered fonts in system and custom font paths
# @option --font-path <DIR>    Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @flag --variants             Also lists style variants of each font family
# @flag -h --help              Print help
fonts() {
    :;
}
# }} typst fonts

command eval "$(argc --argc-eval "$0" "$@")"