_patch_help() {
    $@ --help | sed '/^\s*-/ s| / |, |'
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--ignore-project;[`_choice_project`]' \
            '--ignore-tag;[`_choice_tag`]' \
            '--project;[`_choice_project`]' \
            '--tag;[`_choice_tag`]' \
        | \
        _patch_table_edit_arguments \
            'id;[`_choice_frame`]' \
    )"

    if [[ "$*" == "watson rename" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'type;[project|tag]' 'old_name;[`_choice_old_name`]'
    else
        echo "$table"
    fi
}

_choice_project() {
    watson projects
}

_choice_tag() {
    watson tags
}

_choice_frame() {
    watson log --json --reverse | \
    yq '.[] | (.id | sub("^(.{6}).*", "${1}")) + "	" + .project + " - " + .start'
}

_choice_old_name() {
    if [[ "$argc_type" == "tag" ]]; then
        _choice_tag
    else
        _choice_project
    fi
}
