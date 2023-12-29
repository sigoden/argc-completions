ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." &> /dev/null && pwd )"

export MANWIDTH=1000 NO_COLOR=true

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
    $@ --help 2>&1
}

# Run help subcommand to get help
_patch_help_run_help_subcmd() {
    if [[ $# -eq 1 ]]; then
       $1 help 2>&1
    else
       ${@:1:$#-1} help ${!#} 2>&1
    fi
}

# Run man to get help
_patch_help_run_man() {
    if [[ $# -eq  1 ]]; then
        key=$1
    else
        key="$(printf "%s-" "$@")"
        key="${key%-}"
    fi
    if [[ "$(uname -s)" == "Darwin" ]]; then
        man $key 2>/dev/null | col -bx
    else
        man $key 2>/dev/null
    fi
}

# Embed help
_patch_help_embed_help() {
    gawk -v RAW_ARGS="$*" -f "$ROOT_DIR/utils/_patch_utils/embed-help.awk"
}

# Split 2-column options
# Such as:
# ```
# -p  extract files to pipe, no messages     -l  list files (short format)
# ```
_patch_help_split_2cols() {
    sed 's/^  \(-\S\{1,2\} .*\) \(-\S\{1,2\} .*\)/  \1\n  \2/'
}

# Prepare workspace dir
_patch_help_prepare_workspace() {
    base_dir="${ARGC_COMPLETIONS_GEN:-"/tmp/argc_completions_gen"}"
    workspace_name="$1-completion" 
    workspace_dir="$base_dir/$workspace_name"
}

# Strip ansi code such as color, BS
_patch_help_strip_ansi() {
    gawk '{gsub(/[\x1B\x9B][[\]()#;?]*((((;[-a-zA-Z0-9\/#&.:=?%@~_]+)*|[a-zA-Z0-9]+(;[-a-zA-Z0-9\/#&.:=?%@~_]*)*)?\x07)|(([0-9]{1,4}(;[0-9]{0,4})*)?[0-9A-PR-TZcf-ntqry=><~]))/, ""); gsub(/.\x08/, ""); print}'
}

# Fix wrap
_patch_help_fix_wrap() {
    gawk -f "$ROOT_DIR/utils/_patch_utils/preprocess-wrap.awk"
}

# Preprocess only usage
_patch_help_preprocess_usageonly() {
    gawk -v RAW_ARGS="$*" -f "$ROOT_DIR/utils/_patch_utils/preprocess-usageonly.awk"
}

# Preprocess corba-based cli
_patch_help_preprocess_cobra() {
    gawk -f "$ROOT_DIR/utils/_patch_utils/preprocess-cobra.awk"
}

# Preprocess yargs-based cli
_patch_help_preprocess_yargs() {
    gawk -f "$ROOT_DIR/utils/_patch_utils/preprocess-yargs.awk"
}

# Deduplicate options
# Example
#    cat | _patch_table_dedup_options \ |
#      '--foo'                                   # remove duplicated option, keep last
#      ';;'                                      # seperator, before it keep last, after it keep first
#      '--foo'                                   # remove duplicated option, keep first
_patch_table_dedup_options() {
    local args="$(printf "%s\n" "$@")"
    gawk -v RAW_ARGS="$args" -f "$ROOT_DIR/utils/_patch_utils/dedup-options.awk"
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

# Edit table arguments
# Example:
#    cat | _patch_table_edit_arguments \ |
#      'foo;[`_choice_foo`]' \ |                # bind choice fn
#      'foo;;desc' \ |                          # change description
#      'foo(path)' \ |                          # rename value name
#      'foo(path <file:.json)' \ |              # change value name and notation
#      'foo(path);[`_choice_foo`];desc' \ |     # change everything
#      'foo; ; ' \ |                            # use space to clear text
#      'foo' \ |                                # delete argument
#      ';;' \ |                                 # seperator, before it change the argument, after it append the argument. if it's first, current arguments will be purged.
#      'foo;;desc'                              # append a new argument
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
#      ';;' \ |                                # seperator, before it change the command, after it append the command.
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
    cat
}

# Add metadata
_patch_table_add_metadata() {
    printf "meta # %s\n" "$@"
    cat
}

# Detect value type
_patch_table_detect_value_type() {
    sed \
        -e 's/^\(option # -\S\+\( -\S\+\)*\) \(array\|stringarray\|strings\|<array>\|<stringarray>\|<strings>\)/\1 string.../I' \
        -e 's/^\(option # -\S\+\( -\S\+\)*\) string\[\]/\1 string.../I' \
        -e '/[Dd]ir.*file/ s/^\(option # -\S\+\( -\S\+\)*\) \S*\(string\|value\|<string>\|<value>\)/\1 path/I' \
        -e '/[Dd]ir/ s/^\(option # -\S\+\( -\S\+\)*\) \S*\(string\|value\|<string>\|<value>\)/\1 dir/I' \
        -e '/[Ff]ile/ s/^\(option # -\S\+\( -\S\+\)*\) \S*\(string\|value\|<string>\|<value>\)/\1 file/I' \
        -e '/[Pp]ath\|\b[Ll]ocation\b\|[Dd]estination\|[Ss]ave/ s/^\(option # -\S\+\( -\S\+\)*\) \S*\(string\|value\|<string>\|<value>\)/\1 path/I' \

}