_patch_help() {
    if [[ $# -eq 1 ]]; then
        help_text="$($@ --help)"
        options_text="$(echo "$help_text" | sed -n '/^Options:/,/^[A-Z]/ {//!p}')"
        commands_text="$(echo "$help_text" | sed -n '/^Commands:/,/^\s*$/ {//!p}' | sed 'N;s/\(.*\)\n\s\+s3cmd \(\S\+\).*/  \2  \1/')"
        echo "Options:"
        echo "$options_text"
        echo "Commands:"
        echo "$commands_text"
    else
        $@ --help | sed -n "s/^      $1 $2 \(.*\)/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            's3-bucket;[`_choice_s3_bucket`]' \
            's3-bucket-prefix;[`_choice_s3_path`]' \
            's3-bucket-object;[`_choice_s3_path`]' \
            's3-bucket-object1;[`_choice_s3_path`]' \
            's3-bucket-object2;[`_choice_s3_path`]' \
    )"
    if [[ "$*" == "s3cmd" ]]; then
        echo "$table" | \
        _patch_table_add_metadata inherit-flag-options | \
        _patch_table_edit_options \
            '--acl-grant(PERMISSION:<EMAIL or USER_CANONICAL_ID>);[`_choice_acl`]' \
            '--acl-revoke;[`_choice_acl`]' \

    elif [[ "$*" == "s3cmd sync" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'src;[`_choice_s3_path_or_path`]' \
            'dest;[`_choice_s3_path_or_path`]' \

    else
        echo "$table"
    fi
}

_choice_acl() {
    printf "%s:\0\n" read write read_acp write_acp full_control all
}

_choice_s3_bucket() {
    s3cmd ls  | sed -n 's/^.* \(s3:.*\)/\1/p'
}

_choice_s3_path() {
    if [[ -z "$ARGC_CWORD" ]]; then
        echo -e "s3://\0"
    elif [[ "$ARGC_CWORD" == "s3://"* ]]; then
        path="${ARGC_CWORD%/*}/"
        list="$(s3cmd ls "$path" | sed -n 's/^.* \(s3:.*\)/\1/p')"
        if [[ "$path" == "s3://" ]]; then
            list="$(echo "$list" | _argc_util_transform suffix=/)"
        fi
        echo "$list" | _argc_util_comp_parts /
    fi
}

_choice_s3_path_or_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    else
        _choice_s3_path
    fi
}
