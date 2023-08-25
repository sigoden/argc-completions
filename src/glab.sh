_patch_help() { 
    _common_edit() {
        sed \
            -e 's/^  \(\S\+\):/  \1 /' \
            -e 's/^ARGUMENTS/^ARGUMENTS EXAMPLES:/' \
            -e '/^USAGE/,+1 {N; s/\n//; s/USAGE /USAGE:/}' \
            -e 's/^ALIASES/ALIASES:/' \

    }
    $@ --help | _common_edit
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type \
        | \
        _patch_table_edit_options \
            '--repo;[`_choice_search_repo`]' \
    )"

    if [[ "$*" == "glab" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'cmd;[`_choice_alias`]'

    elif [[ "$*" == "glab alias"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'alias-name;[`_choice_alias`]'


    elif [[ "$*" == "glab api"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--hostname;[`_choice_hostname`]' \

    elif [[ "$*" == "glab auth"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--hostname;[`_choice_hostname`]' \

    elif [[ "$*" == "glab changelog generate" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--from;[`_choice_commit`]' \
            '--to;[`_choice_commit`]' \

    elif [[ "$*" == "glab ci"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--branch;[`_choice_branch`]' \
        )"

        if [[ "$*" == "glab ci artifact" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'refname;[`_choice_ref`]' \
                'jobname;[`_choice_job_name`]' \

        elif [[ "$*" == "glab ci delete" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'id;[`_choice_pipeline`]' \

        elif [[ "$*" == "glab ci retry" ]] \
          || [[ "$*" == "glab ci trace" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'job-id;[`_choice_job_id`]' \


        elif [[ "$*" == "glab ci view" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'branch-tag;[`_choice_ref`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "glab config"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--host;[`_choice_hostname`]' \
        | \
        _patch_table_edit_arguments \
            'key;[`_choice_config_key`]' \

    elif [[ "$*" == "glab incident"* ]]; then
        if [[ "$*" == "glab incident close" ]] \
        || [[ "$*" == "glab incident subscribe" ]] \
        || [[ "$*" == "glab incident unsubscribe" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_incident_issue`]' \

        elif [[ "$*" == "glab incident list" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--assignee;[`_choice_member`]' \
                '--author;[`_choice_search_user`]' \
                '--group;[`_choice_search_group_subgroup`]' \
                '--in; ;' \
                '--label;*,[`_choice_label`]' \
                '--milestone;[`_choice_milestone`]' \
                '--not-assignee;*,[`_choice_member`]' \
                '--not-author;*,[`_choice_search_user`]' \
                '--not-label;*,[`_choice_label`]' \
                '--output-format;[details|ids|urls]' \

        elif [[ "$*" == "glab incident reopen" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_closed_incident_issue`]' \

        elif [[ "$*" == "glab incident view" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_all_incident_issue`]' \
        
        else
            echo "$table"
        fi

    elif [[ "$*" == "glab issue"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--assignee;[`_choice_member`]' \
                '--label;*,[`_choice_label`]' \
                '--milestone;[`_choice_milestone`]' \
        )"

        if [[ "$*" == "glab issue close" ]] \
        || [[ "$*" == "glab issue note" ]] \
        || [[ "$*" == "glab issue subscribe" ]] \
        || [[ "$*" == "glab issue unsubscribe" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_issue`]' \

        elif [[ "$*" == "glab issue delete" ]] \
          || [[ "$*" == "glab issue view" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_all_issue`]' \

        elif [[ "$*" == "glab issue list" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--author;[`_choice_search_user`]' \
                '--group;[`_choice_search_group_subgroup`]' \
                '--in; ;' \
                '--not-assignee;*,[`_choice_member`]' \
                '--not-author;*,[`_choice_search_user`]' \
                '--not-label;*,[`_choice_label`]' \
                '--output-format;[details|ids|urls]' \

        elif [[ "$*" == "glab issue reopen" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_closed_issue`]' \

        elif [[ "$*" == "glab issue update" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--unlabel;*,[`_choice_issue_label`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_issue`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "glab mr"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--assignee;[`_choice_member`]' \
                '--branch;[`_choice_branch`]' \
                '--label;*,[`_choice_label`]' \
                '--milestone;[`_choice_milestone`]' \
                '--source-branch;[`_choice_branch`]' \
                '--target-branch;[`_choice_branch`]' \
        )"

        if [[ "$*" == "glab mr approve" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--sha;[`_choice_mr_commit`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_mr_or_branch`]' \

        elif [[ "$*" == "glab mr approvers" ]] \
          || [[ "$*" == "glab mr checkout" ]] \
          || [[ "$*" == "glab mr delete" ]] \
          || [[ "$*" == "glab mr diff" ]] \
          || [[ "$*" == "glab mr issues" ]] \
          || [[ "$*" == "glab mr view" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_all_mr_or_branch`]' \

        elif [[ "$*" == "glab mr close" ]] \
          || [[ "$*" == "glab mr revoke" ]] \
          || [[ "$*" == "glab mr subscribe" ]] \
          || [[ "$*" == "glab mr todo" ]] \
          || [[ "$*" == "glab mr unsubscribe" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_mr_or_branch`]' \

        elif [[ "$*" == "glab mr create" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--head;[`_choice_search_repo`]' \
                '--related-issue;[`_choice_opened_issue`]' \
                '--reviewer;*,[`_choice_member`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_mr_or_branch`]' \

        elif [[ "$*" == "glab mr list" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--author;[`_choice_search_user`]' \
                '--group;[`_choice_search_group_subgroup`]' \
                '--not-label;*,[`_choice_mr_label`]' \
                '--reviewer;*,[`_choice_member`]' \

        elif [[ "$*" == "glab mr merge" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--sha;[`_choice_mr_commit`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_mr_or_branch`]' \
            
        elif [[ "$*" == "glab mr reopen" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_closed_mr_or_branch`]' \

        elif [[ "$*" == "glab mr update" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--reviewer;*,[`_choice_member`]' \
                '--unlabel;*,[`_choice_mr_label`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_opened_mr_or_branch`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "glab release"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--asset-name;[`_choice_asset_name`]' \
            '--milestone;[`_choice_milestone`]' \
        | \
        _patch_table_edit_arguments \
            'tag;[`_choice_tag`]' \

    elif [[ "$*" == "glab repo"* ]]; then
        if [[ "$*" == "glab repo archive" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--sha;[`_choice_commit`]' \
            | \
            _patch_table_edit_arguments ';;'

        elif [[ "$*" == "glab repo clone" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--group;[`_choice_search_group_subgroup`]' \
                '--visibility;[public|internal|private]' \
            | \
            _patch_table_edit_arguments \
                'repo;[`_choice_search_repo`]'

        elif [[ "$*" == "glab repo contributors" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--order;[name|email|commits]' \
                '--sort;[asc|desc]' \

        elif [[ "$*" == "glab repo create" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--group;[`_choice_search_group_subgroup`]' \

        elif [[ "$*" == "glab repo delete" ]] \
          || [[ "$*" == "glab repo fork" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'repo;[`_choice_search_repo`]' \

        elif [[ "$*" == "glab repo list" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--sort;[asc|desc]' \

        elif [[ "$*" == "glab repo transfer" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-namespace;[`_choice_search_group_subgroup`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'repo;[`_choice_search_repo`]' \

        elif [[ "$*" == "glab repo view" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--branch;[`_choice_repo_view_branch`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'repo;[`_choice_search_repo`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "glab schedule"* ]]; then
        if [[ "$*" == "glab schedule create" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--ref;[`_choice_ref`]' \

        elif [[ "$*" == "glab schedule delete" ]] \
          || [[ "$*" == "glab schedule run" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                ';;' \
                'id;[`_choice_schedule`]' \


        else
            echo "$table"
        fi

    elif [[ "$*" == "glab snippet create" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--visibility;[public|internal|private]' \

    elif [[ "$*" == "glab ssh-key get" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'id;[`_choice_ssh_key`]' \

    elif [[ "$*" == "glab variable"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--group;[`_choice_search_group_subgroup`]' \
        | \
        _patch_table_edit_arguments \
            'key;[`_choice_variable_key`]' \

    else
        echo "$table"
    fi
}

_choice_alias() {
    glab alias list
}

_choice_hostname() {
    config_yml_path="$(_helper_get_config_yml_path)"
    if [[ ! -f  "$config_yml_path" ]]; then
        return
    fi
    cat "$config_yml_path" | yq '.hosts | keys | .[]'
}

_choice_commit() {
    _helper_repo_curl 'repository/commits?per_page=100' | \
    yq '.[] | .short_id + "	" + (.title // "")'
}

_choice_search_repo() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    elif [[ "$argc__kv_filter" == *'/'* ]]; then
        local prefix_val="$argc__kv_prefix${argc__kv_filter%%/*}"
        local filter_val="${argc__kv_filter#*/}" 
        echo "__argc_prefix=$prefix_val/"
        echo "__argc_filter=$filter_val"
        _helper_search_subgroup_repo "$prefix_val" "$filter_val"
    else
        _helper_search_repo "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_ref() {
    _argc_util_parallel _choice_branch ::: _choice_tag
}

_choice_job_name() {
    _helper_repo_curl 'jobs?per_page=100' | \
    yq '.[] | .name'
}

_choice_pipeline() {
    _helper_repo_curl 'pipelines?per_page=100' | \
    yq '.[] | .id + "	" + .ref'
}

_choice_branch() {
    _helper_repo_curl 'repository/branches?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .commit.title'
}

_choice_job_id() {
    _helper_repo_curl 'jobs?per_page=100' | \
    yq '.[] | .id + "	" + .name + " [" + .status + "]"'
}

_choice_config_key() {
    config_yml_path="$(_helper_get_config_yml_path)"
    if [[ ! -f  "$config_yml_path" ]]; then
        return
    fi
    if [[ -z "$argc_host" ]]; then
        cat "$config_yml_path" | yq 'keys | .[]'
    else
        cat "$config_yml_path" | yq '.hosts["'$argc_host'"] | keys | .[]'
    fi
}

_choice_opened_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_member() {
    _helper_repo_curl 'members/all?per_page=100&query='$ARGC_CWORD | \
    yq '.[] | .username + "	" + .name'
}

_choice_search_user() {
    if [[ "${#ARGC_CWORD}" -lt 3 ]]; then
        return
    fi
    glab api 'users?per_page=50&search='$ARGC_CWORD | \
    yq '.[] | .username + "	" + (.name // "")'
}

_choice_search_group_subgroup() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    else
        _helper_search_subgroup "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_label() {
    _helper_repo_curl 'labels?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .description'
}

_choice_milestone() {
    _helper_repo_curl 'milestones?per_page=100' | \
    yq '.[] | .title + "	" + .description'
}

_choice_closed_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_all_incident_issue() {
    _helper_repo_curl 'issues?per_page=100&issue_type=incident' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_opened_issue() {
    _helper_repo_curl 'issues?per_page=100&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_all_issue() {
    _helper_repo_curl 'issues?per_page=100' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_closed_issue() {
    _helper_repo_curl 'issues?per_page=100&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_issue_label() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'issues/'$argc_id | \
    yq '.labels[]'
}

_choice_mr_commit() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'merge_requests/'$argc_id'/commits' | \
    yq '.[] | .id + "	" + .title'
}

_choice_opened_mr_or_branch() {
    _argc_util_parallel _choice_opened_mr ::: _choice_branch
}

_choice_all_mr_or_branch() {
    _argc_util_parallel _choice_all_mr ::: _choice_branch
}

_choice_mr_label() {
    if [[ -z "$argc_id" ]]; then
        return
    fi
    _helper_repo_curl 'merge_requests/'$argc_id | \
    yq '.labels[]'
}

_choice_closed_mr_or_branch() {
    _argc_util_parallel _choice_closed_mr ::: _choice_branch
}

_choice_tag() {
    _helper_repo_curl 'repository/tags?per_page=100&search='$ARGC_CWORD | \
    yq '.[] | .name + "	" + .commit.title'
}

_choice_asset_name() {
    if [[ -z "$argc_tag" ]]; then
        return
    fi
    _helper_repo_curl 'releases/'$argc_tag'?per_page=100' | \
    yq '.assets.sources[].url'
}

_choice_repo_view_branch() {
    if [[ -n "$argc_repo" ]]; then
        project_id_uri="$(_helper_encode_uri "$argc_repo")"
        glab api "projects/$project_id_uri/repository/branches?per_page=100&search=$ARGC_CWORD" | \
        yq '.[] | .name + "	" + .commit.title'
    else
        _choice_branch
    fi
}

_choice_schedule() {
    _helper_repo_curl 'pipeline_schedules?scope=active' | \
    yq '.[] | .id + "	" + .description'
}

_choice_ssh_key() {
    glab api /user/keys | yq '.[] | .id + "	" + .title'
}

_choice_variable_key() {
    if [[ -z "$argc_group" ]]; then
        group_uri="$(_helper_encode_uri "$argc_group")"
        glab api "/groups/$group_uri/variables?per_page=100" | \
        yq '.[] | .key + "	" + .value'
    else
        _helper_repo_curl 'variables?per_page=100' | \
        yq '.[] | .key + "	" + .value'
    fi
}

_choice_all_mr() {
    _helper_repo_curl 'merge_requests?per_page=100' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_closed_mr() {
    _helper_repo_curl 'merge_requests?per_page=100&state=closed' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_opened_mr() {
    _helper_repo_curl 'merge_requests?per_page=100&state=opened' | \
    yq '.[] | .iid + "	" + .title'
}

_choice_owner() {
    _argc_util_parallel _choice_search_user ::: _choice_search_group
}

_choice_search_group() {
    if [[ "${#ARGC_CWORD}" -lt 3 ]]; then
        return
    fi
    glab api 'groups?all_available=true&top_level_only=true&per_page=50&search='$ARGC_CWORD | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_encode_uri() {
    value="$1" yq --null-input 'env(value) | @uri'
}

_helper_get_config_yml_path() {
    _argc_util_path_resolve CONFIG_DIR glab-cli/config.yml
}

_helper_repo_curl() {
    _helper_retrieve_project_id
    if [[ -z "$project_id_uri" ]]; then
        return
    fi
    glab api "projects/$project_id_uri/$1"
}

_helper_retrieve_project_id() {
    set -x
    local raw_values="$( \
        git remote -v | \
        gawk '{
            if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[2])
                print arr[1] " " arr[2]
            } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[2])
                print arr[1] " " arr[2]
            } else if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[3])
                print arr[1] " " arr[2] " " arr[3]
            } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                gsub(".git", "", arr[3])
                print arr[1] " " arr[2] " " arr[3]
            }
        }' \
    )"
    local values=( $raw_values )
    local values_len="${#values[@]}" 
    if [[ "$values_len" -lt 2 ]]; then
        return
    elif [[ "$values_len" -eq 2 ]]; then
        group_val=${values[0]}
        repo_val=${values[1]}
        project_id_val="$group_val/$repo_val"
    else
        group_val=${values[0]}
        subgroup_val=${values[1]}
        repo_val=${values[2]}
        project_id_val="$group_val/$subgroup_val/$repo_val"
    fi
    project_id_uri="$(value="$project_id_val" yq --null-input 'env(value) | @uri')"
}

_helper_search_group_repo() {
    glab api 'groups/'$1'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_search_repo() {
    _argc_util_parallel _helper_search_user_repo $1 $2 ::: _helper_search_group_repo $1 $2 ::: _helper_search_subgroup_ex $1 $2
}

_helper_search_subgroup() {
    glab api 'groups/'$1'/subgroups?all_available=true&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")' 
}

_helper_search_subgroup_ex() {
    _helper_search_subgroup $@ | gawk -F'\t' '{print $1 "/\0\t" $2}'
}

_helper_search_subgroup_repo() {
    group_uri="$(_helper_encode_uri "$1")"
    glab api 'groups/'$group_uri'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}

_helper_search_user_repo() {
    glab api 'users/'$1'/projects?order_by=updated_at&per_page=50&search='$2 | \
    yq '.[] | .path + "	" + (.description // "")'
}
