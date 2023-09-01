_module_git_ref() {
    echo HEAD
    _argc_util_parallel _module_git_local_branch ::: _module_git_remote_branch :: _module_git_tag
}

_module_git_branch() {
    _argc_util_parallel _module_git_local_branch ::: _module_git_remote_branch
}

_module_git_local_branch() {
    git branch --format '%(refname:short)	%(subject)'
}

_module_git_remote_branch() {
    git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_module_git_tag() {
    git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

_module_git_remote() {
    git remote
}
