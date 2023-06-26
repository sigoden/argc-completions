# Used for provide help text for nested subcommand
_patch_util_extract_subcmd() {
    awk -v v1="^$1 " -v v2="^$*" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
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