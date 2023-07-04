SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../scripts" &> /dev/null && pwd )"

# Run help, first with the --help flag, if that fails then use the help subcmd
_patch_help_run_help() {
    local help_text help_text2
    help_text="$($@ --help 2>&1)"
    if [[ $? -eq 0 ]]; then
        echo "$help_text"
        return
    fi
    help_text2="$(_patch_help_run_help_subcmd $@ 2>&1)"
    if [[ $? -eq 0 ]]; then
        echo "$help_text2"
        return
    fi
    echo "$help_text"
}

# Run help subcommand to get help
_patch_help_run_help_subcmd() {
    if [[ $# -eq 1 ]]; then
        $1 help
    else
        ${@:1:$#-1} help ${!#} 2>&1
    fi
}

# Provide help text for nested subcommands
# Example:
# ```
# cat <<-'EOF' | _patch_help_extract_subcmds $@ 
# yarn config set <key> <value>
# options:
#     -g --global   Use global config
# yarn config get <key>
# yarn config delete <key>
# yarn config list
# EOF
# ```
_patch_help_extract_subcmds() {
    awk -v v1="^$1 " -v v2="^$*($| )" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
}

# Edit options
# Example:
#    cat | _patch_table_edit_options \ |
#      '--foo;[`_choice_foo`]' \ |               # bind choice fn
#      '--foo;;desc' \ |                         # change description
#      '--foo(path)' \ |                         # change value notation
#      '--foo(path);[`_choice_foo`];desc' \ |    # change everything
#      '--foo( ); ; ' \ |                        # use space to clear text
#      '--foo' \ |                               # delete option
#      ';;' \ |                                  # seperator, before it change the option, after it append the option.
#      '--foo;;desc'                             # append a new option
_patch_table_edit_options() {
    local args="$(printf "%s\n" "$@")"
    awk -v KIND=option -v RAW_ARGS="$args" -f "$SCRIPTS_DIR/edit-table.awk"
}

# Edit arguments
# Example:
#    cat | _patch_table_edit_arguments \ |
#      ';;' \ |                                 # seperator, before it change the argument, after it append the argument. if it's first, current arguments will be purged.
#      'foo;[`_choice_foo`]' \ |                # bind choice fn
#      'foo;;desc' \ |                          # change description
#      'foo(path)' \ |                          # rename value name
#      'foo(path <file:.json)' \ |              # change value name and notation
#      'foo(path);[`_choice_foo`];desc' \ |     # change everything
#      'foo; ; ' \ |                            # use space to clear text
#      'foo' \ |                                # delete option
#      'foo;;desc'                              # append a new option
_patch_table_edit_arguments() {
    local args="$(printf "%s\n" "$@")"
    awk -v KIND=argument -v RAW_ARGS="$args" -f "$SCRIPTS_DIR/edit-table.awk"
}

# Edit commands
# Example:
#    cat | _patch_table_edit_commands \ |
#      'foo;desc' \ |                          # change description
#      'foo(bar);desc' \ |                     # rename command
#      'foo(bar, baz)' \ |                     # rename command and add aliases
#      'foo; ' \ |                             # use space to clear description
#      'foo' \ |                               # delete command
#      ';;' \ |                                # seperator, before it change the option, after it append the option.
#      'foo;;desc'                             # append a new command
_patch_table_edit_commands() {
    local args="$(printf "%s\n" "$@")"
    awk -v KIND=command -v RAW_ARGS="$args" -f "$SCRIPTS_DIR/edit-table.awk"
}

# Copy options from another command
# Example:
# ```
# echo "$table" | _patch_table_copy_options go build
# ```
_patch_table_copy_options() {
    cat
    local help_text
    if [[ $(type -t _patch_help) == "function" ]] ; then
        help_text="$(_patch_help $@)"
    else
        help_text="$(_patch_help_run_help $@)"
    fi
    local table="$(echo "$help_text" | awk -f "$SCRIPTS_DIR/parse-table.awk")"
    if [[ $(type -t _patch_table) == "function" ]] ; then
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table" | grep "^option #"

}