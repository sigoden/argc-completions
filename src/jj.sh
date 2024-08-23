_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--at-operation;[`_choice_operation`]' \
        | \
        _patch_table_edit_arguments \
            'paths;[`_choice_path`]' \
            'workspaces;[`_choice_workspace`]' \
            'operation;[`_choice_operation`]' \
    )"
    if [[ "$*" == "jj branch"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'names;[`_choice_branch`]' \
            'branch-remote;[`_choice_branch_remote`]' \
            'old;[`_choice_branch`]' \

    elif [[ "$*" == "jj config"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;[`_choice_config`]'
        
    elif [[ "$*" == "jj file chmod" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'mode;[`_choice_file_mode`];File Mode'

    elif [[ "$*" == "jj remote"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'remote;[`_choice_remote`]' \
            'old;[`_choice_remote`]' \

    else
        echo "$table"
    fi
}

_choice_operation() {
    jj operation log -T 'id.short() ++ "\t" ++ description.first_line()' | \
    sed -n 's/^\(\S\)\s\+\(\S\+\)\s\+/\2\t/p'
}

_choice_branch() {
    jj branch list | sed 's/: /\t/'
}

_choice_branch_remote() {
    jj branch list --all | gawk '{
        if (match($0, /^([^@:]+): /, arr)) {
            branch=arr[1]
        } else if (match($0, /^\s+(@\S+): (.*)/, arr)) {
            print branch arr[1] "\t" arr[2]
        } else if (match($0, /^(\S+): (.*)/, arr)) {
            print arr[1] "\t" arr[2]
        }
    }
    '
}

_choice_path() {
    jj file list | _argc_util_comp_parts /
}

_choice_config() {
    jj config list --include-defaults | sed -n 's/^\(\S\+\) = .*/\1/p'
}

_choice_file_mode() {
    cat <<-EOF
n	Make a path non-executable (alias: normal)
x	Make a path executable (alias: executable)
EOF
}

_choice_workspace() {
    jj workspace list | sed 's/: /\t/'
}

_choice_remote() {
    jj git remote list | sed 's/ /\t/'
}
