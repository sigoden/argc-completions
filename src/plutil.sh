_patch_help() {
    if [[ "$*" == "plutil" ]]; then
        $@ -help | \
        sed \
            -e '/^There are some additional optional/,$ d' \
            -e 's/^Command .*:/Commands:/' \
            -e 's/^ -/  \\-/' \

    else
        $1 -help | \
        sed -n "s/^ \($2\( \S\+\)*\).*/Usage: plutil \1/p" | \
        sed 's/ -type value/ type value/' 
        if [[ "$2" =~ ^-convert|-insert|-remove|-replace|-extract$  ]]; then
            $1 -help | sed -n '/There are some additional optional/,$ {//!p}'
        fi
    fi
}

_patch_table() {
    _patch_table_edit_arguments \
        'fmt;[`_choice_fmt`]' \
        'type;[`_choice_type`]' \

}

_choice_fmt() {
    printf "%s\n" xml1 binary1 json
}

_choice_type() {
    cat <<-'EOF'
-bool	YES if passed "YES" or "true", otherwise NO
-integer	any valid 64 bit integer
-float	any valid 64 bit float
-string	UTF8 encoded string
-date	a date in XML property list format, not supported if outputting JSON
-data	a base-64 encoded string
-xml	an XML property list, useful for inserting compound values
-json	a JSON fragment, useful for inserting compound values
-dictionary	inserts an empty dictionary, does not use value
-array	inserts an empty array, does not use value
EOF
}
