_patch_table() { 
    _patch_table_edit_options \
        '--color;[`_choice_color`]' \
        '--colors;[`_choice_color_spec`]' \
        '--engine;[default|pcre2|auto]' \
        '--pre;[`_module_os_command`]' \
        '--sort;[`_choice_sort`]' \
        '--sortr;[`_choice_sort`]' \
        '--type;[`_choice_type`]' \
        '--type-add;[`_choice_type_spec`]' \
        '--type-clear;[`_choice_type`]' \
        '--type-not;[`_choice_type`]' \
    | \
    _patch_table_edit_arguments 'pattern;[`_choice_pattern`]'
}

_choice_type() {
    rg --type-list | sed 's/:.*$//'
}

_choice_type_spec() {
    if [[ "$ARGC_CWORD" != *':'* ]]; then
        _choice_type | _argc_util_transform suffix=: nospace
    elif [[ "$ARGC_CWORD" == *:include:* ]]; then
        if [[ "$ARGC_CWORD" == *,* ]]; then
            _argc_util_mode_parts ,
            _choice_type | _argc_util_transform nospace
        else
            echo "__argc_prefix=${ARGC_CWORD%:*}:"
            echo "__argc_filter=${ARGC_CWORD##*:}"
            _choice_type | _argc_util_transform nospace
        fi
    fi
}

_choice_color() {
    cat <<-'EOF'
never	Colors will never be used.
auto	The default. ripgrep tries to be smart.
always	Colors will always be used regardless of where output is sent.
ansi	Like 'always', but emits ANSI escapes (even in a Windows console).
EOF
}

_choice_color_spec() {
    _argc_util_mode_parts :
    IFS=':' read -a prefix_parts <<<"$argc__parts_prefix"
    case "${#prefix_parts[@]}" in
    0)
        _choice_color_type | _argc_util_transform suffix=: nospace
        ;;
    1)
        _choice_color_attribute | _argc_util_transform suffix=: nospace
        ;;
    2)
        if [[ "${prefix_parts[1]}" =~ bg|fg ]]; then
            _choice_color_value
        elif [[  "${prefix_parts[1]}" == style  ]]; then
            _choice_color_style
        fi
        ;;
    esac
}

_choice_sort() {
    cat <<-'EOF'
none	Do not sort results. Fastest. Can be multi-threaded.
path	Sort by file path. Always single-threaded.
modified	Sort by the last modified time on a file. Always single-threaded.
accessed	Sort by the last accessed time on a file. Always single-threaded.
created	Sort by the creation time on a file. Always single-threaded.
EOF
}

_choice_pattern() {
    if [[ -n "$argc_regexp" ]] \
    || [[ -n "$argc_file" ]] \
    || [[ -n "$argc_files" ]] \
    ; then
        _argc_util_comp_path
    fi
}

_choice_color_attribute() {
    cat <<-'EOF'
none	clear color/style for type
bg	specify background color
fg	specify foreground color
style	specify text style
EOF
}

_choice_color_style() {
    printf "%s\n" bold nobold intense nointense underline nounderline

}

_choice_color_type() {
    cat <<-'EOF'
column	specify coloring for column numbers
line	specify coloring for line numbers
match	specify coloring for match text
path	specify coloring for file names
EOF
}

_choice_color_value() {
    printf "%s\n"  black blue green red cyan magenta yellow white 
}
