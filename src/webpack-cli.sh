_patch_help() {
    if [[ "$*" == "webpack-cli" ]]; then
        $@ --help | \
        sed \
            -e 's/|\S\+ / /' \
        
    else
        $@ --help | \
        sed \
            -e 's/\[entries/[paths/' \
            -e '/^Usage:/ s/|\S / /' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_dedup_options \
            ';;' \
            '--extends' \
        | \
        _patch_table_edit_options \
            '--devtool;[`_choice_devtool`]' \    
    )"

    if [[ "$*" == "webpack-cli" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'build(build, bundle, b)' \
            'configtest(configtest, t)' \
            'info(info, i)' \
            'serve(serve, server, s)' \
            'version(version, v)' \
            'watch(watch, w)' \
            'help(help, h)' \

    else
        echo "$table"
    fi

}

_choice_devtool() {
    cat <<-'EOF'
false
eval
eval-cheap-source-map
eval-cheap-module-source-map
eval-source-map
cheap-source-map
cheap-module-source-map
source-map
inline-cheap-source-map
inline-cheap-module-source-map
inline-source-map
eval-nosources-cheap-source-map
eval-nosources-cheap-module-source-map
eval-nosources-source-map
inline-nosources-cheap-source-map
inline-nosources-cheap-module-source-map
inline-nosources-source-map
nosources-cheap-source-map
nosources-cheap-module-source-map
nosources-source-map
hidden-nosources-cheap-source-map
hidden-nosources-cheap-module-source-map
hidden-nosources-source-map
hidden-cheap-source-map
hidden-cheap-module-source-map
hidden-source-map
EOF
}
