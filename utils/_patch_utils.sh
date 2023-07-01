SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../scripts" &> /dev/null && pwd )"

# Run help, first use --help flag, then use help subcmd
# Scope: _patch_help
_patch_util_run_help() {
    local help_text help_text2
    help_text="$($@ --help 2>&1)"
    if [[ $? -eq 0 ]]; then
        echo "$help_text"
        return
    fi
    help_text2="$(_patch_util_run_help_subcmd $@ 2>&1)"
    if [[ $? -eq 0 ]]; then
        echo "$help_text2"
        return
    fi
    echo "$help_text"
}

# Run help subcommand to generate help
# Scope: _patch_help
_patch_util_run_help_subcmd() {
    if [[ $# -eq 1 ]]; then
        $1 help
    else
        ${@:1:$#-1} help ${!#} 2>&1
    fi
}

# Provide help text for nested subcommand
# Scope: _patch_help
_patch_util_extract_subcmd() {
    awk -v v1="^$1 " -v v2="^$*" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
}

# Edit option
# Scope: _patch_table
# Example:
#    cat | _patch_util_edit_table_option \ |
#      '--foo;[`_choice_foo`]' \ |               # bind choice fn
#      '--foo;;desc' \ |                         # change description
#      '--foo(path)' \ |                         # change value notation
#      '--foo(path);[`_choice_foo`];desc' \ |    # change everything
#      '--foo( ); ; ' \ |                        # use space to clear text
#      '--foo' \ |                               # delete option
#      ';;' \ |                                  # seperator, before it change the option, after it append the option.
#      '--foo;;desc'                             # append a new option
_patch_util_edit_table_option() {
    local args="$(printf "%s\n" "$@")"
    awk -v KIND=option -v RAW_ARGS="$args" -f "$SCRIPTS_DIR/edit-table.awk"
}

# Edit argument
# Scope: _patch_table
# Example:
#    cat | _patch_util_edit_table_option \ |
#      ';;' \ |                                 # seperator, before it change the argument, after it append the argument. if it's first, current arguments will be purged.
#      'foo;[`_choice_foo`]' \ |                # bind choice fn
#      'foo;;desc' \ |                          # change description
#      'foo(path)' \ |                          # rename value name
#      'foo(path);[`_choice_foo`];desc' \ |     # change everything
#      'foo( ); ; ' \ |                         # use space to clear text
#      'foo' \ |                                # delete option
#      'foo;;desc'                              # append a new option
_patch_util_edit_table_argument() {
    local args="$(printf "%s\n" "$@")"
    awk -v KIND=argument -v RAW_ARGS="$args" -f "$SCRIPTS_DIR/edit-table.awk"
}

# Copy options from another command
# Scope: _patch_table
_patch_util_copy_table_option() {
    cat
    local help_text
    if [[ $(type -t _patch_help) == "function" ]] ; then
        help_text="$(_patch_help $@)"
    else
        help_text="$(_patch_util_run_help $@)"
    fi
    local table="$(echo "$help_text" | awk -f "$SCRIPTS_DIR/parse-table.awk")"
    if [[ $(type -t _patch_table) == "function" ]] ; then
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table" | grep "^option #"

}