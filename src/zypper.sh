_patch_help() { 
    if [[ "$*" == "zypper" ]]; then
        $@ --help | sed -e '/^Commands:/,/^\S/ s/^  //'
    else
        $@ --help | sed '1 s/^\(\S\+\)\( (.*)\)\?/usage: zypper \1/'
    fi
}

_patch_table() {
    table="$(
        _patch_table_edit_options \
            '--from;[`_choice_repo`]' \
            '--repo;[`_choice_repo`]' \
    )"

    if [[ "$*" == "zypper addrepo" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--repo; '

    elif [[ "$*" == "zypper clean" ]] \
      || [[ "$*" == "zypper modifyrepo" ]] \
      || [[ "$*" == "zypper removerepo" ]] \
      || [[ "$*" == "zypper renamerepo" ]] \
      || [[ "$*" == "zypper refresh" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'alias-uri;[`_choice_repo`]'

    elif [[ "$*" == "zypper modifyservice" ]] \
      || [[ "$*" == "zypper removeservice" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'alias-uri;[`_choice_service`]'

    elif [[ "$*" == "zypper patch-info" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'patchname;[`_choice_patch`]'

    elif [[ "$*" == "zypper pattern-info" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pattern_name;[`_choice_pattern`]'

    elif [[ "$*" == "zypper product-info" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'product_name;[`_choice_product`]'

    elif [[ "$*" == "zypper remove" ]] \
      || [[ "$*" == "zypper update" ]] \
     ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'capability;[`_choice_installed_package`]' \
            'packagename;[`_choice_installed_package`]' \

    elif [[ "$*" == "zypper removelock" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'lock-number-packagename;[`_choice_lock`]'

    else
        echo "$table"
    fi

}

_choice_installed_package() {
	grep -s --no-filename "^$cur" "/var/cache/zypp/solv/@System/solv.idx" | cut -f1
}

_choice_lock() {
    LC_ALL=POSIX zypper -q ll | _helper_extract
}

_choice_package() {
    _helper_list_packages
}

_choice_patch() {
    _helper_list_packages "patch:$ARGC_FILTER" | sed -e "s/^patch://"
}

_choice_pattern() {
    _helper_list_packages "pattern:$ARGC_FILTER" | sed -e "s/^pattern://"
}

_choice_product() {
    _helper_list_packages "product:$ARGC_FILTER" | sed -e "s/^product://"
}

_choice_repo() {
    LC_ALL=POSIX zypper -q lr | _helper_extract
}

_choice_service() {
    LC_ALL=POSIX zypper -q ls | _helper_extract
}

_helper_extract() {
    sed -rn '/^[0-9]/{
        s/^[0-9]+[[:blank:]]*\|[[:blank:]]*([^|]+).*/\1/
        s/[[:blank:]]*$//
        p
    }'
}

_helper_list_packages() {
    local filter="^${1:-$ARGC_FILTER}"
	set +o noglob
	grep -s --no-filename "$filter" /var/cache/zypp/solv/*/solv.idx |\
		cut -f1 | sort --unique
	set -o noglob
}
