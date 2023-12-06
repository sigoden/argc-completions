_patch_help() { 
    if [[ "$*" == "vcpkg" ]]; then
        $@ --help | \
        sed \
            -e 's/^  vcpkg \(\S\+\)\( \S\+\)*/  \1/' \
            -e '/^  @response_file/ d' \

    else
        vcpkg --help | grep "^  vcpkg $2 " | sed -e '/^error:/ d' -e 's/^ \(\( \S\+\)\+\).*/usage: \1/' | head -n 1
        $@ --help | sed 's/=\.\.\./ string/'
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type \
    )"

    if [[ "$*" == "vcpkg" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'integrate;Integrate vcpkg with shells and buildsystems.'
    
    elif [[ "$*" == "vcpkg export" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'pkg;*[`_choice_installed_package`]'

    elif [[ "$*" == "vcpkg install" ]] \
      || [[ "$*" == "vcpkg depend-info" ]] \
      || [[ "$*" == "vcpkg edit" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'pkg;[`_choice_package_cached`]'

    elif [[ "$*" == "vcpkg remove" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pkg;[`_choice_installed_package`]'

    elif [[ "$*" == "vcpkg search" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'pat;[`_choice_package_cached`]'

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

_choice_package_cached() {
    _argc_util_cache 3600 _choice_package
}
