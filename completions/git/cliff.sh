#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                 Prints help information
# @flag -V --version                              Prints version information
# @flag -v --verbose*                             Increases the logging verbosity
# @flag --bump                                    Bumps the version for unreleased changes
# @flag --bumped-version                          Prints bumped version for unreleased changes
# @flag -l --latest                               Processes the commits starting from the latest tag
# @flag --current                                 Processes the commits that belong to the current tag
# @flag -u --unreleased                           Processes the commits that do not belong to a tag
# @flag --topo-order                              Sorts the tags topologically
# @flag --no-exec                                 Disables the external command execution
# @flag -x --context                              Prints changelog context as JSON
# @option -i --init <CONFIG>                      Writes the default configuration file to cliff.toml
# @option -c --config <PATH>                      Sets the configuration file [env: GIT_CLIFF_CONFIG=] [default: cliff.toml]
# @option -w --workdir <PATH>                     Sets the working directory [env: GIT_CLIFF_WORKDIR=]
# @option -r --repository* <PATH>                 Sets the git repository [env: GIT_CLIFF_REPOSITORY=]
# @option --include-path* <PATTERN>               Sets the path to include related commits [env: GIT_CLIFF_INCLUDE_PATH=]
# @option --exclude-path* <PATTERN>               Sets the path to exclude related commits [env: GIT_CLIFF_EXCLUDE_PATH=]
# @option --tag-pattern <PATTERN>                 Sets the regex for matching git tags [env: GIT_CLIFF_TAG_PATTERN=]
# @option --with-commit* <MSG>                    Sets custom commit messages to include in the changelog [env: GIT_CLIFF_WITH_COMMIT=]
# @option --with-tag-message <MSG>                Sets custom message for the latest release [env: GIT_CLIFF_WITH_TAG_MESSAGE=]
# @option --ignore-tags <PATTERN>                 Sets the tags to ignore in the changelog [env: GIT_CLIFF_IGNORE_TAGS=]
# @option --skip-commit* <SHA1>                   Sets commits that will be skipped in the changelog [env: GIT_CLIFF_SKIP_COMMIT=]
# @option -p --prepend <PATH>                     Prepends entries to the given changelog file [env: GIT_CLIFF_PREPEND=]
# @option -o --output <PATH>                      Writes output to the given file [env: GIT_CLIFF_OUTPUT=]
# @option -t --tag[`_choice_tag`]                 Sets the tag for the latest version [env: GIT_CLIFF_TAG=]
# @option -b --body <TEMPLATE>                    Sets the template for the changelog body [env: GIT_CLIFF_TEMPLATE=]
# @option -s --strip[header|footer|all] <PART>    Strips the given parts from the changelog
# @option --sort[oldest|newest]                   Sets sorting of the commits inside sections [default: oldest]
# @option --github-token <TOKEN>                  Sets the GitHub API token [env: GITHUB_TOKEN]
# @option --github-repo <OWNER/REPO>              Sets the GitHub repository [env: GITHUB_REPO=]
# @option --gitlab-token <TOKEN>                  Sets the GitLab API token [env: GITLAB_TOKEN]
# @option --gitlab-repo <OWNER/REPO>              Sets the GitLab repository [env: GITLAB_REPO=]
# @option --gitea-token <TOKEN>                   Sets the Gitea API token [env: GITEA_TOKEN]
# @option --gitea-repo <OWNER/REPO>               Sets the GitLab repository [env: GITEA_REPO=]
# @option --bitbucket-token <TOKEN>               Sets the Bitbucket API token [env: BITBUCKET_TOKEN]
# @option --bitbucket-repo <OWNER/REPO>           Sets the Bitbucket repository [env: BITBUCKET_REPO=]
# @arg range[`_choice_range`]                     Sets the commit range to process

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_remote_branch() {
    _git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_choice_range() {
    _argc_util_mode_kv '..'
    _choice_ref 
}

_choice_ref() {
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag
}

_choice_tag() {
    _git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

_choice_local_branch() {
    _git branch --format '%(refname:short)	%(subject)'
}

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

command eval "$(argc --argc-eval "$0" "$@")"