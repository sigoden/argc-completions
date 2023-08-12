#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --check                         Run in 'check' mode.
# @option --emit <files|stdout>         What data to emit and how
# @flag --backup                        Backup any modified files.
# @option --config-path <Path for the configuration file>  Recursively searches the given path for the rustfmt.toml config file.
# @option --edition[2015|2018|2021]     Rust edition to use
# @option --color[always|never|auto]    Use colored output (if supported)
# @option --print-config <default|minimal|current> <PATH>  Dumps a default or minimal config to PATH.
# @flag -l --files-with-diff            Prints the names of mismatched files that were formatted.
# @option --config*,[`_choice_config`] <key1=val1,key2=val2>  Set options from command line.
# @flag -v --verbose                    Print verbose output
# @flag -q --quiet                      Print less output
# @flag -V --version                    Show version information
# @option -h --help <TOPIC>             Show this message or help about a specific topic: `config`
# @arg file+

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_config() {
    cat <<- 'EOF' | _argc_util_comp_kv =
max_width=;;Maximum width of each line
hard_tabs=true,false;;Use tab characters for indentation, spaces for alignment
tab_spaces=;;Number of spaces per tab
newline_style=Auto,Windows,Unix,Native;;Unix or Windows line endings
use_small_heuristics=Off,Max,Default;;Whether to use different formatting for items and expressions if they satisfy a heuristic notion of 'small'
fn_call_width=;;Maximum width of the args of a function call before falling back to vertical formatting.
attr_fn_like_width=;;Maximum width of the args of a function-like attributes before falling back to vertical formatting.
struct_lit_width=;;Maximum width in the body of a struct lit before falling back to vertical formatting.
struct_variant_width=;;Maximum width in the body of a struct variant before falling back to vertical formatting.
array_width=;;Maximum width of an array literal before falling back to vertical formatting.
chain_width=;;Maximum length of a chain to fit on a single line.
single_line_if_else_max_width=;;Maximum line length for single line if-else expressions. A value of zero means always break if-else expressions.
reorder_imports=true,false;;Reorder import and extern crate statements alphabetically
reorder_modules=true,false;;Reorder module statements alphabetically in group
remove_nested_parens=true,false;;Remove nested parens
short_array_element_width_threshold=;;Width threshold for an array element to be considered short
match_arm_leading_pipes=Always,Never,Preserve;;Determines whether leading pipes are emitted on match arms
fn_params_layout=Compressed,Tall,Vertical;;Control the layout of parameters in function signatures.
match_block_trailing_comma=true,false;;Put a trailing comma after a block based match arm (non-block arms are not affected)
edition=2015,2018,2021,2024;;The edition of the parser (RFC 2052)
merge_derives=true,false;;Merge multiple `#[derive(...)]` into a single one
use_try_shorthand=true,false;;Replace uses of the try! macro by the ? shorthand
use_field_init_shorthand=true,false;;Use field initialization shorthand if possible
force_explicit_abi=true,false;;Always print the abi for extern items
disable_all_formatting=true,false;;Don't reformat anything
print_misformatted_file_names=true,false;;Prints the names of mismatched files that were formatted. Prints the names of files that would be formatted 
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"