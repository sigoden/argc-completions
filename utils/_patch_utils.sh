ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

export COLUMNS=`tput cols` MANWIDTH=1000 NO_COLOR=true

# Run help, first with the --help flag, if that fails then use the help subcmd
_patch_help_run_help() {
    local help_text help_text2
    help_text="$(_patch_help_run_help_flag $@)"
    if [[ $? -eq 0 ]] || [[ $(echo "$help_text" | wc -l) -ge 10 ]]; then
        echo "$help_text"
        return
    fi
    help_text2="$(_patch_help_run_help_subcmd $@)"
    if [[ $? -eq 0 ]] || [[ $(echo "$help_text2" | wc -l) -ge 10 ]]; then
        echo "$help_text2"
        return
    fi
}

# Run --help to get help
_patch_help_run_help_flag() {
    _patch_help_run_with_fakepty $@ --help
}

# Run help subcommand to get help
_patch_help_run_help_subcmd() {
    if [[ $# -eq 1 ]]; then
       _patch_help_run_with_fakepty $1 help
    else
       _patch_help_run_with_fakepty ${@:1:$#-1} help ${!#}
    fi
}

# Run command in a fake pty
_patch_help_run_with_fakepty() {
    if command -v fakepty >/dev/null; then
        fakepty $@  | sed 's/\x1b\[\([0-3]\?[JK]\|[0-9]\+\(;[0-9]\+\)*m\|[=?][0-9]\+[hl]\)//g' 
    else
        $@ 2>&1
    fi
}

# Run man to get help
_patch_help_run_man() {
    if [[ "$(uname -s)" == "Darwin" ]]; then
        man $@ | col -bx
    else
        man $@
    fi
}

# Clean the middle text between command value and description
_patch_help_clean_middle() {
    gawk -f  "$ROOT_DIR/utils/_patch_utils/clean-middle.awk"
}

# Select subcmd help text
# Example:
# ```
# cat <<-'EOF' | _patch_help_select_subcmd $@ 
# yarn config set <key> <value>
# options:
#     -g --global   Use global config
# yarn config get <key>
# yarn config delete <key>
# yarn config list
# EOF
# ```
_patch_help_select_subcmd() {
    gawk -v v1="^$1 " -v v2="^$*($| )" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
}

# Edit table options
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
    gawk -v KIND=option -v RAW_ARGS="$args" -f "$ROOT_DIR/utils/_patch_utils/edit-table.awk"
}

# Deduplicate options
# Example
#    cat | _patch_table_dedup_options \ |
#      '--foo'
_patch_table_dedup_options() {
    local args="$(printf "%s\n" "$@")"
    gawk -v RAW_ARGS="$args" -f "$ROOT_DIR/utils/_patch_utils/dedup-options.awk"
}

# Edit table arguments
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
    gawk -v KIND=argument -v RAW_ARGS="$args" -f "$ROOT_DIR/utils/_patch_utils/edit-table.awk"
}

# Edit table commands
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
    gawk -v KIND=command -v RAW_ARGS="$args" -f "$ROOT_DIR/utils/_patch_utils/edit-table.awk"
}

# Copy options from another command
# Example:
# ```
# _patch_table_copy_options go build
# ```
_patch_table_copy_options() {
    local help_text
    if [[ $(type -t _patch_help) == "function" ]] ; then
        help_text="$(_patch_help $@)"
    else
        help_text="$(_patch_help_run_help $@)"
    fi
    local table="$(echo "$help_text" | gawk -f "$ROOT_DIR/scripts/parse-table.awk")"
    if [[ $(type -t _patch_table) == "function" ]] ; then
        table="$(echo "$table" | _patch_table $@)"
    fi
    echo "$table" | grep "^option #"
}