_patch_help() { 
    _common_edit() {
        sed \
            -e 's/^  \(\S\+\):/  \1 /' \
            -e 's/^ARGUMENTS/^ARGUMENTS EXAMPLES:/' \
            -e '/^USAGE/,+1 {N; s/\n//; s/USAGE /USAGE:/;}'

    }

    if grep -q "^$2:" <<<"$(gh alias list)";  then
        echo
        return
    fi
    if [[ "$*" == "gh extension exec" ]] \
    || [[ "$*" == "gh reference" ]] \
    ; then
        :;
    else
        $@ --help | _common_edit
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type \ |
        _patch_table_edit_options \
            '--branch;[`_choice_branch`]' \
            '--org;[`_choice_org`]' \
            '--repo;[`_choice_search_repo`]' \
            '--repo-owner;[`_choice_owner`]' \
    )"

    if [[ "$*" == "gh auth"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--hostname;[`_choice_hostname`]' \
                '--scopes;*,[`_choice_auth_scope`]' \
        )"
        echo "$table"

    elif [[ "$*" == "gh codespace"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--codespace;[`_choice_codespace`]' \
                '--json;[`_choice_codespace_field`]' \
                '--user;[`_choice_search_user`]' \
        )"
        if [[ "$*" == "gh codespace ssh" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'command;[`_module_os_command`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh gist"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_arguments \
                'id-url(gist);[`_choice_gist`]' \
                'gist;[`_choice_gist`]' \
        )"

        if [[ "$*" == "gh gist edit" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--filename;[`_choice_gist_file`]' \
            | \
            _patch_table_edit_arguments \
                'filename;[`_choice_gist_file`]' \

        elif [[ "$*" == "gh gist rename" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'oldfilename;[`_choice_gist_file`]' \

        elif [[ "$*" == "gh gist view" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--filename;[`_choice_gist_file`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh issue"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_options \
                '--assignee;*,[`_choice_assignee`]' \
                '--author;[`_choice_search_user`]' \
                '--json;*,[`_choice_issue_field`]' \
                '--label;*,[`_choice_label`]' \
                '--mention;[`_choice_mention`]' \
                '--milestone;[`_choice_milestone`]' \
                '--project;[`_choice_repo_project`]' \
                '--template;[`_choice_issue_template`]' \
        )"

        if [[ "$*" == "gh issue close" ]] \
        || [[ "$*" == "gh issue comment" ]] \
        || [[ "$*" == "gh issue pin" ]] \
        || [[ "$*" == "gh issue view" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_open_issue`]' \

        elif [[ "$*" == "gh issue delete" ]] \
          || [[ "$*" == "gh issue lock" ]] \
          || [[ "$*" == "gh issue unlock" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_all_issue`]' \


        elif [[ "$*" == "gh issue develop" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--base;[`_choice_branch`]' \
                '--name;[`_choice_branch`]' \
            | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_open_issue`]' \

        elif [[ "$*" == "gh issue edit" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--add-assignee;*,[`_choice_assignee`]' \
                '--add-label;*,[`_choice_label`]' \
                '--add-project;*,[`_choice_repo_project`]' \
                '--remove-assignee;*,[`_choice_issue_assignee`]' \
                '--remove-label;*,[`_choice_issue_label`]' \
                '--remove-project;*,[`_choice_issue_project`]' \
            | \
            _patch_table_edit_arguments \
                ';;' \
                'issue;[`_choice_open_issue`]' \

        elif [[ "$*" == "gh issue reopen" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_closed_issue`]' \
                
        elif [[ "$*" == "gh issue transfer" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_all_issue`]' \
                'destination-repo;[`_choice_search_repo`]' \

        elif [[ "$*" == "gh issue unpin" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'number-url(issue);[`_choice_pin_issue`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh project"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--format;[json]' \
            '--owner;[`_choice_owner`]' \
            '--source-owner;[`_choice_owner`]' \
            '--target-owner;[`_choice_owner`]' \
        | \
        _patch_table_edit_arguments \
            'number(project);[`_choice_project`]' \

    elif [[ "$*" == "gh pr"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--assignee;*,[`_choice_assignee`]' \
                '--author;[`_choice_search_user`]' \
                '--base;[`_choice_branch`]' \
                '--head;[`_choice_branch`]' \
                '--json;*,[`_choice_pr_field`]' \
                '--label;*,[`_choice_label`]' \
                '--milestone;[`_choice_milestone`]' \
                '--project;*,[`_choice_repo_project`]' \
                '--reviewer;*,[`_choice_assignee`]' \
        )"

        if [[ "$*" == "gh pr checkout" ]] \
        || [[ "$*" == "gh pr close" ]] \
        || [[ "$*" == "gh pr comment" ]] \
        || [[ "$*" == "gh pr diff" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_open_pr`]' \

        elif [[ "$*" == "gh pr checks" ]]; then
            echo "$table" | \
            _patch_table_dedup_options '--watch' | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_pr_checks`]' \

        elif [[ "$*" == "gh pr edit" ]]; then
            echo "$table" | \

            _patch_table_edit_options \
                '--add-assignee;*,[`_choice_assignee`]' \
                '--add-label;*,[`_choice_label`]' \
                '--add-project;*,[`_choice_repo_project`]' \
                '--add-reviewer;*,[`_choice_assignee`]' \
                '--remove-assignee;*,[`_choice_pr_assignee`]' \
                '--remove-label;*,[`_choice_pr_label`]' \
                '--remove-project;*,[`_choice_pr_project`]' \
                '--remove-reviewer;*,[`_choice_pr_reviewer`]' \
            | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_open_pr`]' \

        elif [[ "$*" == "gh pr lock" ]] \
          || [[ "$*" == "gh pr review" ]] \
          || [[ "$*" == "gh pr unlock" ]] \
          || [[ "$*" == "gh pr view" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_open_pr`]' \

        elif [[ "$*" == "gh pr merge" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--match-head-commit;[`_choice_pr_commit`]' \
            | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_open_pr`]' \

        elif [[ "$*" == "gh pr ready" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_ready_pr`]' \

        elif [[ "$*" == "gh pr reopen" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments ';;'  'pr;[`_choice_closed_pr`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh release"* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--discussion-category;[`_choice_discussion_category`]' \
            '--target;*,[`_choice_branch`]' \
        | \
        _patch_table_edit_arguments \
            'asset-name;[`_choice_release_asset`]' \
            'tag;[`_choice_tag`]' \

    elif [[ "$*" == "gh repo"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_options \
                '--json;[`_choice_repo_field`]' \
                '--template;[`_choice_search_repo`]' \
            | \
            _patch_table_edit_arguments \
                'repository;[`_choice_search_repo`]' \
        )"

        if [[ "$*" == "gh repo create"* ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--gitignore;[`_choice_gitignore`]' \
                '--license;[`_choice_license`]' \

        elif [[ "$*" == "gh repo list"* ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'owner;[`_choice_owner`]' \

        elif [[ "$*" == "gh repo deploy-key delete"* ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'key-id;[`_choice_repo_key`]' \

        elif [[ "$*" == "gh repo edit"* ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--add-topic;*,[`_choice_search_topic`]' \
                '--remove-topic;*,[`_choice_repo_topic`]' \

        elif [[ "$*" == "gh repo sync"* ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--source;[`_choice_search_repo`]' \
            | \
            _patch_table_edit_arguments \
                'destination-repository;[`_choice_search_repo`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh run"* ]]; then
        if [[ "$*" == "gh run cancel" ]] \
        || [[ "$*" == "gh run watch" ]] \
        ; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'run-id;[`_choice_inprogress_run`]' \

        elif [[ "$*" == "gh run delete" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'run-id;[`_choice_all_run`]' \

        elif [[ "$*" == "gh run download" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--name;[`_choice_artifact_name`]' \
            | \
            _patch_table_edit_arguments \
                'run-id;[`_choice_all_run`]' \

        elif [[ "$*" == "gh run list" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--event;*,[`_choice_workflow_event`]' \
                '--json;*,[`_choice_run_field`]' \
                '--user;[`_choice_search_user`]' \
                '--workflow;[`_choice_workflow`]' \

        elif [[ "$*" == "gh run rerun" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--job;[`_choice_run_job`]' \
            | \
            _patch_table_edit_arguments \
                'run-id;[`_choice_failed_run`]' \

        elif [[ "$*" == "gh run view" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--job;[`_choice_run_job`]' \
            | \
            _patch_table_edit_arguments \
                'run-id;[`_choice_all_run`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh workflow"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'workflow-id-workflow-name(workflow);[`_choice_workflow`]' \
            'workflow-id-workflow-name-filename(workflow);[`_choice_workflow_or_file`]' \

    elif [[ "$*" == "gh alias"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'alias;[`_choice_alias`]' \

    elif [[ "$*" == "gh completion" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'shell;[bash|zsh|fish|powershell]' \

    elif [[ "$*" == "gh config"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'key;[`_choice_config_key`]' \


    elif [[ "$*" == "gh gpg-key"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'key-id;[`_choice_gpg_key`]' \


    elif [[ "$*" == "gh label"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'name;[`_choice_label`]' \
            'source-repository;[`_choice_search_repo`]' \

    elif [[ "$*" == "gh ruleset"* ]]; then
        if [[ "$*" == "gh ruleset check" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'branch;[`_choice_branch`]' \

        elif [[ "$*" == "gh ruleset view" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'ruleset-id;[`_choice_ruleset`]' \

        else
            echo "$table"

        fi

    elif [[ "$*" == "gh search"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_options \
                '--author;[`_choice_search_user`]' \
                '--committer;[`_choice_search_user`]' \
                '--metions;[`_choice_search_user`]' \
                '--owner;[`_choice_search_user`]' \
        )"

        if [[ "$*" == "gh search commits" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--json;*,[`_choice_commit_field`]' \

        elif [[ "$*" == "gh search issues" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--json;*,[`_choice_issue_field`]' \

        elif [[ "$*" == "gh search prs" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--json;*,[`_choice_pr_field`]' \

        elif [[ "$*" == "gh search repos" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--json;*,[`_choice_repo_field`]' \
                '--license;[`_choice_license`]' \
                '--topic;*,[`_choice_search_topic`]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "gh secret"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'secret-name;[`_choice_secret`]' \

    elif [[ "$*" == "gh ssh-key"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'id;[`_choice_ssh_key`]' \

    elif [[ "$*" == "gh variable"* ]]; then
        table="$(
            echo "$table" | \
            _patch_table_edit_options \
                '--env;[`_choice_env`]' \
                '--org;[`_choice_search_org`]' \
                '--repos;*,[`_choice_search_repo`]' \
        )"

        if [[ "$*" == "gh variable delete" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments \
                'variable-name;[`_choice_variable`]' \
            
        else
            echo "$table"
        fi

    else
        echo "$table"
    fi
}

_choice_hostname() {
    host_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
    if [[ ! -f "$host_yml_path" ]]; then
        return
    fi
    cat "$host_yml_path" | yq 'keys | .[]'
}

_choice_auth_scope() {
    cat <<-'EOF'
repo	Grants full access to private and public repositories.
repo:status	Grants read/write access to public and private repository commit statuses.
repo_deployment	Grants access to deployment statuses for public and private repositories.
public_repo	Limits access to public repositories.
repo:invite	Grants accept/decline abilities for invitations to collaborate on a repository.
security_events	Grants read and write access to security events in the code scanning API.
admin:repo_hook	Grants read, write, ping, and delete access to repository hooks in public and private repositories.
read:repo_hook	Grants read and ping access to hooks in public or private repositories.
write:repo_hook	Grants read, write, and ping access to hooks in public or private repositories.
admin:org	Fully manage the organization and its teams, projects, and memberships.
write:org	Read and write access to organization membership, organization projects, and team membership.
read:org	Read-only access to organization membership, organization projects, and team membership.
admin:public_key	Fully manage public keys.
write:public_key	Create, list, and view details for public keys.
read:public_key	List and view details for public keys.
admin:org_hook	Grants read, write, ping, and delete access to organization hooks.
gist	Grants write access to gists.
notifications	Grants read access to a user's notifications
user	Grants read/write access to profile info only.
read:user	Grants access to read a user's profile data.
user:email	Grants read access to a user's email addresses.
user:follow	Grants access to follow or unfollow other users.
project	Grants read/write access to user and organization projects.
read:project	Grants read only access to user and organization projects.
delete_repo	Grants access to delete adminable repositories.
write:packages	Grants access to upload or publish a package in GitHub Packages.
read:packages	Grants access to download or install packages from GitHub Packages.
delete:packages	Grants access to delete packages from GitHub Packages.
admin:gpg_key	Fully manage GPG keys.
write:gpg_key	Create, list, and view details for GPG keys.
read:gpg_key	List and view details for GPG keys.
codespace	Full control of codespaces
workflow	Grants the ability to add and update GitHub Actions workflow files.
EOF
}

_choice_branch() {
    _helper_repo_query 'refs(first: 100, refPrefix: "refs/heads/") { nodes { name, target { abbreviatedOid } } }' | \
    yq '.data.repository.refs.nodes[] | .name + "	" + .target.abbreviatedOid'
}

_choice_search_repo() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    else
        _helper_search_repo "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_codespace() {
    gh codespace list --json name,owner,repository,state | \
    yq '.[] | .name + "	" + .owner + " • " + .repository + " • " + .state'
}

_choice_owner() {
    _argc_util_parallel _choice_search_user ::: _choice_search_org
}

_choice_org() {
    gh api user/orgs | yq '.[] | .login + "	" + (.description // "")'
}

_choice_search_user() {
    val=${1:-$ARGC_CWORD}
    if [[ "${#val}" -lt 2 ]]; then
        return
    fi
    gh api graphql -f query='
        query {
            search( type:USER, query: "'$val' in:login", first: 100) {
                edges { node { ... on User { login name } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .login + "	" + (.name // "")'
}

_choice_codespace_field() {
    gh codespace list --json 2>&1 | tail -n +2
}

_choice_gist() {
    _helper_user_query 'gists(first:100, privacy:ALL, orderBy: {field: UPDATED_AT, direction: DESC}) { edges { node { name, description } } } ' | \
    yq '.data.user.gists.edges[].node | .name + "	" + (.description // "")'
}

_choice_gist_file() {
    _helper_user_query 'gist(name:"'$argc_gist'") { files { name } }' | \
    yq '.data.user.gist.files[].name'
}

_choice_assignee() {
    _helper_repo_query 'assignableUsers(first: 100, query: "'$ARGC_CWORD'") { nodes { login, name } }' | \
    yq '.data.repository.assignableUsers.nodes[] | .login + "	" + (.name // "")'
}

_choice_label() {
    _helper_repo_query 'labels(first: 100) { nodes { name, description } }' | \
    yq '.data.repository.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_milestone() {
    _helper_repo_query 'milestones(first: 100, states: OPEN) { nodes { title, description } }' | \
    yq '.data.repository.milestones.nodes[] | .title + "	" + (.description // "")'
}

_choice_repo_project() {
    _helper_repo_query 'projectsV2(first: 100, orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number title } }' | \
    yq '.data.repository.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_issue_template() {
    _helper_repo_query 'issueTemplates { name, about }' | \
    yq '.data.repository.issueTemplates[] | .name + "	" + (.about // "")'
}

_choice_issue_field() {
    gh issue list --json 2>&1 | tail -n +2
}

_choice_mention() {
    _helper_repo_query 'mentionableUsers(first: 100, query: "'$ARGC_CWORD'") { nodes { login, name } }' | \
    yq '.data.repository.mentionableUsers.nodes[] | .login + "	" + (.name // "")'
}

_choice_open_issue() {
    _helper_query_issue OPEN
}

_choice_all_issue() {
    _helper_query_issue
}

_choice_issue_assignee() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { assignees(first: 100) { nodes { login, name } } }' | \
    yq '.data.repository.issue.assignees.nodes[]| .login + "	" + (.name // "")'
}

_choice_issue_label() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { labels(first: 100) { nodes { name, description } } }' | \
    yq '.data.repository.issue.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_issue_project() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { projectsV2(first:100) { nodes { number title } } }' | \
    yq '.data.repository.issue.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_closed_issue() {
    _helper_query_issue CLOSED
}

_choice_pin_issue() {
    _helper_repo_query 'pinnedIssues(first: 3) { nodes { issue { number, title, state } } }' | \
    yq '.data.repository.pinnedIssues.nodes[].issue | .number + "	" + .title'
}

_choice_pr_field() {
    gh pr list --json 2>&1 | tail -n +2
}

_choice_open_pr() {
    _helper_query_pr OPEN
}

_choice_pr_checks() {
    _argc_util_parallel _choice_branch ::: _choice_open_pr
}

_choice_pr_assignee() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { assignees(first: 100) { nodes { login, name } } }' | \
    yq '.data.repository.pullRequest.assignees.nodes[] | .login + "	" + (.name // "")'
}

_choice_pr_label() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { labels(first: 100) { nodes { name, description } } }' | \
    yq '.data.repository.pullRequest.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_pr_project() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { projectsV2(first:100) { nodes { number title } } }' | \
    yq '.data.repository.pullRequest.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_pr_reviewer() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { latestReviews(first:100) { nodes { author { login } } } }' | \
    yq '.data.repository.pullRequest.latestReviews.nodes[].author.login'
}

_choice_pr_commit() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_curl pulls/$argc_pr/commits | \
    yq '.[] | .sha + "	" + .commit.message'
}

_choice_ready_pr() {
    _helper_repo_query 'pullRequests(first: 100, states: OPEN, orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number, title, isDraft, state  } }' | \
    yq '.data.repository.pullRequests.nodes[] | select(.isDraft) | .number + "	" + .title'
}

_choice_closed_pr() {
    _helper_query_pr CLOSED
}

_choice_project() {
    if [[ -n "$argc_owner" ]]; then
        gh api graphql -f query='query { organization(login: "'$argc_owner'") { projectsV2(first: 100) { nodes { number title } } } }' | \
        yq '.data.organization.projectsV2.nodes[] | .number + "	" + .title'
    else
        user_val="$(_helper_get_user)"
        if [[ -n "$user_val" ]]; then
            gh api graphql -f query='query { user(login: "'$user_val'") { projectsV2(first: 100) { nodes { number title } } } }' | \
            yq '.data.user.projectsV2.nodes[] | .number + "	" + .title'
        fi
    fi
}

_choice_discussion_category() {
    _helper_repo_query 'discussionCategories(first:100) { nodes { name, description } } ' | \
    yq '.data.repository.discussionCategories.nodes[] | .name + "	" + (.description // "")'

}

_choice_tag() {
    _helper_repo_query 'refs(first: 100, refPrefix: "refs/tags/", orderBy: {field: TAG_COMMIT_DATE, direction: DESC}) { nodes { name } }' | \
    yq '.data.repository.refs.nodes[] | .name'
}

_choice_release_asset() {
    if [[ -z $argc_tag ]]; then
        return
    fi
    _helper_repo_query 'release(tagName: "'$argc_tag'") { releaseAssets(first:100) { nodes { name } } }' | \
    yq '.data.repository.release.releaseAssets.nodes[].name'
}

_choice_gitignore() {
    gh api gitignore/templates | yq '.[]'
}

_choice_license() {
    gh api licenses | yq '.[] | .key + "	" + .name'
}

_choice_repo_field() {
    gh repo list --json 2>&1 | tail -n +2
}

_choice_repo_key() {
    _helper_repo_curl keys | yq '.[] | .id + "	" + .title'
}

_choice_search_topic() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gh api "search/topics?per_page=100&q=$ARGC_CWORD" | yq '.items[] | .name + "	" + (.short_description // "")'
}

_choice_repo_topic() {
    _helper_repo_query 'repositoryTopics(first:100) { nodes { topic { name } } }' | \
    yq '.data.repository.repositoryTopics.nodes[].topic.name'
}

_choice_inprogress_run() {
    _helper_repo_curl 'actions/runs?status=in_progress' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_all_run() {
    _helper_repo_curl 'actions/runs' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_artifact_name() {
    local path
    if [[ -z "$argc_run_id" ]]; then
        path="actions/artifacts"
    else
        path="actions/runs/$argc_run_id/artifacts"
    fi
    _helper_repo_curl "$path" | \
    yq '.artifacts[].name'
}

_choice_workflow_event() {
    cat <<-'EOF'
branch_protection_rule
check_run
check_suite
create
delete
deployment
deployment_status
discussion
discussion_comment
fork
gollum
issue_comment
issues
label
merge_group
milestone
page_build
project
project_card
project_column
public
pull_request
pull_request_review
pull_request_review_comment
pull_request_target
push
registry_package
release
repository_dispatch
schedule
status
watch
workflow_call
workflow_dispatch
workflow_run
EOF
}

_choice_run_field() {
    gh run list --json 2>&1 | tail -n +2
}

_choice_workflow() {
    _helper_repo_curl "actions/workflows" | \
    yq '.workflows[] | .id + "	" + .name'
}

_choice_run_job() { 
    if [[ -z "$argc_run_id" ]]; then
        return
    fi
    _helper_repo_curl "actions/runs/$argc_run_id/jobs" | \
    yq '.jobs[] | .id + "	" + .name'
}

_choice_failed_run() {
    _helper_repo_curl 'actions/runs?status=failure' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_workflow_or_file() {
    if _argc_util_is_path "$ARGC_CWORD"; then
        _argc_util_comp_path 
    else
        _choice_workflow
    fi
}

_choice_alias() {
    gh alias list | sed 's/:/\t/'
}

_choice_config_key() {
    config_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/config.yml)"
    if [[ ! -f "$config_yml_path" ]]; then
        return
    fi
    cat "$config_yml_path" | yq 'keys | .[]'
}

_choice_gpg_key() {
    gh api user/gpg_keys | \
    yq '.[] | .key_id + "	" + .name'
}

_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) | \
    _argc_util_transform_table 'ID;NAME' '\t'
}

_choice_commit_field() {
    gh search commits --json 2>&1 | tail -n +2
}

_choice_secret() {
    gh secret list
}

_choice_ssh_key() {
    gh api user/keys | \
    yq '.[] | .id + "	" + .title'
}

_choice_env() {
    _helper_repo_curl 'environments' |
    yq  '.environments[].name'
}

_choice_search_org() {
    val=${1:-$ARGC_CWORD}
    if [[ "${#val}" -lt 2 ]]; then
        return
    fi
    gh api graphql -f query='
        query {
            search( type:USER, query: "'$val' in:login", first: 100) {
                edges { node { ... on Organization  { login name } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .login + "	" + (.name // "")'
}

_choice_variable() {
    if [[ -n "$argc_org" ]]; then
        gh "orgs/$argc_org/actions/variables?per_page=100" | \
        yq '.variables[] | .name + "	" + .value'
    else
       _helper_repo_curl 'actions/variables?per_page=100' | \
        yq '.variables[] | .name + "	" + .value'
    fi
}

_helper_get_user() {
    host_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
    if [[ ! -f "$host_yml_path" ]]; then
        return
    fi
    cat "$host_yml_path" | yq 'to_entries | .[0].value.user'
}

_helper_query_issue() {
    local states
    if [[ -n "$1" ]]; then
        states="states: $1,"
    fi
    _helper_repo_query 'issues(first: 100, '"$states"' orderBy: {direction: DESC, field: UPDATED_AT}) { nodes { number, title, state } }' | \
    yq '.data.repository.issues.nodes[] | .number + "	" + .title'
}

_helper_query_pr() {
    local states
    if [[ -n "$1" ]]; then
        states="states: $1,"
    fi
    _helper_repo_query 'pullRequests(first: 100, '"$states"' orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number, title, isDraft, state  } }' | \
    yq '.data.repository.pullRequests.nodes[] | .number + "	" + .title'
}

_helper_repo_curl() {
    _helper_retrieve_owner_repo_vals
    if [[ -z "$owner_val" ]] || [[ -z "$repo_val" ]]; then
        return
    fi
    gh api "repos/$owner_val/$repo_val/$1"
}

_helper_repo_query() {
    _helper_retrieve_owner_repo_vals
    if [[ -z "$owner_val" ]] || [[ -z "$repo_val" ]]; then
        return
    fi
    gh api graphql -f query='query { repository(owner: "'$owner_val'", name: "'$repo_val'") { '"$1"' } }'
}

_helper_retrieve_owner_repo_vals() {
    if [[ "$argc_repo" == *'/'* ]]; then
        owner_val="${argc_repo%/*}"
        repo_val="${argc_repo##*/}"
    else
        local raw_values="$( \
            git remote -v | \
            gawk '{
                if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                    gsub(".git", "", arr[2])
                    print arr[1] " " arr[2]
                } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                    gsub(".git", "", arr[2])
                    print arr[1] " " arr[2]
                }
            }' \
        )"
        local values=( $raw_values )
        if [[ "${#values[@]}" -eq 2 ]]; then
            owner_val=${values[0]}
            repo_val=${values[1]}
        fi
    fi
}

_helper_search_repo() {
    gh api graphql -f query='
        query {
            search( type:REPOSITORY, query: """user:'$1' "'$2'" in:name fork:true""", first: 100) {
                edges { node { ... on Repository { name description } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .name + "	" + (.description // "")'
}

_helper_user_query() {
    user_val="$(_helper_get_user)"
    if [[ -z "$user_val" ]]; then
        return
    fi
    gh api graphql -f query='query { user(login: "'$user_val'") { '"$1"' } }'
}
