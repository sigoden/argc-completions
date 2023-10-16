_patch_help() {
    {
        $@ --help | sed '/^  Extra options/,$ d'
        tools=( cachegrind helgrind massif )
        for t in ${tools[@]}; do
            $1 --tool=$t --help | sed -n "/^  user options for $t:/I,/^\s*$/ p" 
        done
    } | \
    sed \
        -e '/^\s*-/ s/=\(\S\+|\S\+\)/ {\1}/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '--fullpath-after' \
        '--show-possibly-lost' \
        '--show-reachable' \
    | \
    _patch_table_edit_options \
        '--alloc-fn;[`_choice_function_prototype`]' \
        '--ignore-fn;[`_choice_function_prototype`]' \
        '--show-possibly-lost;[yes|no]' \
        '--show-reachable;[yes|no]' \
        '--soname-synonyms(syn1=pattern1,syn2=pattern2,...);*,' \
        '--tool;[`_choice_tool`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'prog;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}

_choice_tool() {
    cat <<-'EOF'
memcheck	Heavyweight memory checker
cachegrind	Cache-miss profiler
helgrind	Data-race detector
massif	Heap profiler
EOF
}

_choice_function_prototype() {
    mapfile -t headers < <(ls -1 | grep '\.\(h\|hh\|hpp\|hxx\)$')
    if [[ ${#headers[@]} -gt 0 ]]; then
        sed -n "s/^\(.*[^[a-zA-Z_0-9]\|\)\([a-zA-Z_][a-zA-Z_0-9]*\) *(.*);.*\$/\2/p" "${headers[@]}"
    fi
}
