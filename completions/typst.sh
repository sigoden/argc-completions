#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbosity*    Sets the level of logging verbosity: -v = warning & error, -vv = info, -vvv = debug, -vvvv = trace
# @option --cert           Path to a custom CA certificate to use when making network requests [env: TYPST_CERT=]
# @flag -h --help          Print help
# @flag -V --version       Print version

# {{ typst compile
# @cmd Compiles an input file into a supported output format [aliases: c]
# @option --root <DIR>                 Configures the project root (for absolute paths) [env: TYPST_ROOT=]
# @option --font-path <DIR>            Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  The format to emit diagnostics in [default: human]
# @option -f --format[pdf|png|svg]     The format of the output file, inferred from the extension by default
# @option --open                       Opens the output file using the default viewer after compilation
# @option --ppi                        The PPI (pixels per inch) to use for PNG export [default: 144]
# @option --flamegraph <OUTPUT_SVG>    Produces a flamegraph of the compilation process
# @flag -h --help                      Print help
# @arg input!                          Path to input Typst file
# @arg output                          Path to output file (PDF, PNG, or SVG)
compile() {
    :;
}
# }} typst compile

# {{ typst watch
# @cmd Watches an input file and recompiles on changes [aliases: w]
# @option --root <DIR>                 Configures the project root (for absolute paths) [env: TYPST_ROOT=]
# @option --font-path <DIR>            Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  The format to emit diagnostics in [default: human]
# @option -f --format[pdf|png|svg]     The format of the output file, inferred from the extension by default
# @option --open                       Opens the output file using the default viewer after compilation
# @option --ppi                        The PPI (pixels per inch) to use for PNG export [default: 144]
# @option --flamegraph <OUTPUT_SVG>    Produces a flamegraph of the compilation process
# @flag -h --help                      Print help
# @arg input!                          Path to input Typst file
# @arg output                          Path to output file (PDF, PNG, or SVG)
watch() {
    :;
}
# }} typst watch

# {{ typst query
# @cmd Processes an input file to extract provided metadata
# @option --root <DIR>           Configures the project root (for absolute paths) [env: TYPST_ROOT=]
# @option --font-path <DIR>      Adds additional directories to search for fonts [env: TYPST_FONT_PATHS=]
# @option --diagnostic-format[human|short] <DIAGNOSTIC_FORMAT>  The format to emit diagnostics in [default: human]
# @option --field                Extracts just one field from all retrieved elements
# @flag --one                    Expects and retrieves exactly one element
# @option --format[json|yaml]    The format to serialize in [default: json]
# @flag -h --help                Print help
# @arg input!                    Path to input Typst file
# @arg selector!                 Defines which elements to retrieve
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

# {{ typst update
# @cmd Self update the Typst CLI
# @flag --force      Forces a downgrade to an older version (required for downgrading)
# @flag --revert     Reverts to the version from before the last update (only possible if `typst update` has previously ran)
# @flag -h --help    Print help
# @arg version       Which version to update to (defaults to latest)
update() {
    :;
}
# }} typst update

command eval "$(argc --argc-eval "$0" "$@")"