SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../scripts" &> /dev/null && pwd )"

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
    local args=$1
    for arg in "${@:2}"; do
        args="$args###$arg"
    done
    awk -v "KIND=option" -v "RAW_ARGS=$args" -f "$SCRIPTS_DIR/edit-table.awk"
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
    local args=$1
    for arg in "${@:2}"; do
        args="$args###$arg"
    done
    awk -v "KIND=argument" -v "RAW_ARGS=$args" -f "$SCRIPTS_DIR/edit-table.awk"
}


# Add extra column for the table
_patch_util_add_extra_column() {
    local args
    for item in $@; do
        local name="${item%%:*}"
        local value="${item#*:}"
        local prefix name2
        if [[ "$name" == '-'* ]]; then
            prefix='option #[^#]*'
            name2=" $name[= +*]"
        else
            prefix='argument #[^#]*'
            name2="[ <[]$name[]>. [|=]"
        fi
        args="$args -e '/$prefix$name2/ s/$/ # $value/'"
    done
    eval sed $args
}

# Purge exist positional arguments and add new positional arguments manully.
_patch_util_replace_positionals() {
    sed -e '/^argument #/d'
    for item in $@; do
        local name tail
        if [[ "$item" == *':'* ]]; then
            name="${item%%:*}"
            tail=" # ${item#*:}"
        else
            name="$item"
        fi
        echo "argument # $name #$tail"
    done
}