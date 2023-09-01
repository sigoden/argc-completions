_patch_help() {
    $@ --help 2>&1 | \
    _patch_help_strip_ansi | \
    sed \
        -e 's/[┃|┗|━|┏|┓|┛]//g' \
        -e 's/^  //' \
        -e 's/\s\+$//' \

}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
        | \
        _patch_table_edit_arguments \
            'vcs-type;[github|bitbucket]' \
    )"

    if [[ "$*" == "circleci config" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'validate(validate, check)' \

    elif [[ "$*" == "circleci orb"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments \
                'category-name;[`_choice_orb_category`]' \
        )"

        if [[ "$*" == "circleci orb diff" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--color;[always|auto|never]' \

        elif [[ "$*" == "circleci orb publish" ]]; then
            echo "$table" | \
            _patch_table_edit_commands \
                'publish(increment, inc)' \
        
        else
            echo "$table"
        fi

    elif [[ "$*" == "circleci policy test" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--format;[json|junit]' \

    elif [[ "$*" == "circleci runner instance" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \

    elif [[ "$*" == "circleci runner resource-class" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'delete(delete, rm)' \
            'list(list, ls)' \

    elif [[ "$*" == "circleci runner token" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'delete(delete, rm)' \
            'list(list, ls)' \
            

    else
        echo "$table"
    fi
}

_choice_orb_category() {
    circleci orb list-categories
}
