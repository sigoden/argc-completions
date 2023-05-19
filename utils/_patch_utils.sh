_patch_util_extract_subcmd() {
    awk -v v1="^$1 " -v v2="^$*" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
}

_patch_util_bind_choices_fn() {
    local args
    for item in $@; do
        local name="${item%:*}"
        local choices_fn="${item##*:}"
        local prefix name2
        if [[ "$name" == '-'* ]]; then
            prefix='option #.*'
            name2=" $name "
        else
            prefix='argument #.*'
            name2="[ <[]$name[]>. [|=]"
        fi
        args="$args -e '/$prefix$name2/ s/$/ # [\`$choices_fn\`]/'"
    done
    eval sed $args
}

_patch_util_replace_positionals() {
    sed -e '/^argument #/d'
    for item in $@; do
        local name choices_fn tail
        IFS=":" read -r name choices_fn <<< "$item"
        if [[ -n "$choices_fn" ]]; then
            tail=" # [\`$choices_fn\`]"
        fi
        echo "argument # $name #$tail"
    done
}