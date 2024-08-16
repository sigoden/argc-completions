_patch_help() { 
    if [[ "$*" == "vcpkg" ]]; then
        $@ help | \
        sed \
            -e '/^  @response_file/ d' \

    else
        _patch_help_run_help_subcmd $@ | \
            sed \
                -e '/^Synopsis:/ d' \
                -e '/^Examples:$/ {N;s/.*\n\s*/Usage: /}' \
                -e 's/^Examples: /Usage: /' \
                -e 's/=\.\.\./ string/' \

    fi
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_arguments \
            'package-name;[`_choice_installed_package`]' \
            'port-name;[`_choice_package_cached`]' \
    )"

    if [[ "$*" == "vcpkg" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'integrate;Integrate vcpkg with shells and buildsystems.'
    
    elif [[ "$*" == "vcpkg export" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'port-names;*[`_choice_installed_package`]'

    elif [[ "$*" == "vcpkg search" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pattern;[`_choice_package_cached`]'

    elif [[ "$*" == "vcpkg env" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' '[name]'

    elif [[ "$*" == "vcpkg fetch" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'value'

    elif [[ "$*" == "vcpkg integrate" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'action;[`_choice_integrate_action`]' \
        | \
        _patch_table_edit_commands ';;'

    else
        echo "$table"
    fi
}

_choice_installed_package() {
    vcpkg list --x-json | yq 'to_entries | .[] | .value.package_name'
}

_choice_package_cached() {
    _argc_util_cache 3600 _choice_package
}

_choice_integrate_action() {
    cat <<-'EOF'
install	Make installed packages available user-wide.
remove	Remove user-wide integration.
project	Creates a linked NuGet package for MSBuild integration.
powershell	Enable powershell tab-completion.
bash	Enable bash tab-completion.
zsh	Enable zsh tab-completion.
x-fish	Enable fish tab-completion.
EOF
}

_choice_package() {
    vcpkg search --x-json | yq 'to_entries | .[] | .key + "	" + .value.description[0]'
}
