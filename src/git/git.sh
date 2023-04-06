_choice_cmd() {
    git config --get-regexp 'alias.*' | awk '{print substr($1, 7)}'
}

_choice_config_key() {
    git config --get-regexp '.*' | awk '{print $1}'
}

_choice_unstaged_file() {
    git status --porcelain | awk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 3)
    }
}' | _argc_util_platform_path
}

_choice_staged_file() {
    git status --porcelain | awk '{
    if (substr($0, 2, 1) == " ") {
        if (match($0, "->")) {
            print substr($0, RSTART + RLENGTH + 1)
        } else {
            print substr($0, 4)
        }
    }
}' | _argc_util_platform_path
}

_choice_changed_file() {
    git status --porcelain | awk '{
    if (match($0, "->")) {
        print substr($0, RSTART + RLENGTH + 1)
    } else {
        print substr($0, 4)
    }
}' | _argc_util_platform_path
}

_choice_restore_file() {
    if [[ -n "$argc__staged" ]] || [[ -n "$argc__S" ]]; then
        _choice_staged_file
    else
        _choice_changed_file
    fi
}

_choice_checkout() {
    if [[ -n "$argc__dashdash" ]]; then
        _choice_changed_file
    else
        _choice_tag
        _choice_head
        _choice_unique_remote_branch
        _choice_branch
    fi
}


_choice_reset() {
    if [[ -n "$argc__dashdash" ]]; then
        _choice_changed_file
    else
        _choice_branch
    fi
}

_choice_diff() {
    _choice_reset
}

_choice_log() {
    if [[ -n "$argc__dashdash" ]]; then
        git ls-files | _argc_util_platform_path
    else
        _choice_branch
    fi
}

_choice_show() {
    if [[ -n "$argc__dashdash" ]]; then
        git ls-files
    else
        _choice_branch
        _choice_tag
    fi
}

_choice_tag() {
    git tag --sort=-creatordate
}

_choice_head() {
    local gitdir
    gitdir="$(git rev-parse --git-dir)"
    for head in HEAD FETCH_HEAD ORIG_HEAD MERGE_HEAD; do
        if [[ -f "$gitdir/$head" ]]; then
            echo $head
        fi
    done
}

_choice_push() {
    if [[ -n "$argc_remote" ]]; then
        if [[ "$argc_refspec" == *':'* ]]; then
            _choice_remote_branch | sed 's/^/'"${argc_refspec%%:*}"':/'
        else
            _choice_ref
        fi
    fi
}

_choice_unique_remote_branch() {
    git for-each-ref --format="%(refname:strip=3)" \
        --sort="refname:strip=3" \
        "refs/remotes/*/$match*" "refs/remotes/*/*/**"  | uniq -u
}

_choice_branch() {
    git for-each-ref --format='%(refname:strip=2)' --sort=-committerdate refs/heads/
    git for-each-ref --format='%(refname:strip=2)' refs/remotes/
}

_choice_remote() {
    git remote
}

_choice_remote_branch() {
    if [[ -n "$argc_remote" ]]; then
        _choice_branch | command grep "^$argc_remote" | sed 's|'"${argc_remote}"'/||'
    fi
}

_choice_ref() {
    _choice_branch
    _choice_tag
    _choice_head
}

_choice_range() {
    last_arg="${argc__words[-1]}"
    if [[ "$last_arg" == *'..'* ]]; then
        ref1=${last_arg%%..*}
        ref2=${last_arg##*..}
        _choice_ref | grep "^$ref2" | sed 's/^/'"$ref1.."'/'
    else
        _choice_ref
    fi
}

_choice_stash() {
    git stash list --format=%gd:%gs 2>/dev/null | sed 's/: /\t/'
}