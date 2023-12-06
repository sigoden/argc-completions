#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                 Prints help information
# @flag -V --version                              Prints version information
# @flag -v --verbose*                             Increases the logging verbosity
# @flag --bump                                    Bumps the version for unreleased changes
# @flag -i --init                                 Writes the default configuration file to cliff.toml
# @flag -l --latest                               Processes the commits starting from the latest tag
# @flag --current                                 Processes the commits that belong to the current tag
# @flag -u --unreleased                           Processes the commits that do not belong to a tag
# @flag --topo-order                              Sorts the tags topologically
# @flag --context                                 Prints changelog context as JSON
# @option -c --config <PATH>                      Sets the configuration file [env: GIT_CLIFF_CONFIG=] [default: cliff.toml]
# @option -w --workdir <PATH>                     Sets the working directory [env: GIT_CLIFF_WORKDIR=]
# @option -r --repository* <PATH>                 Sets the git repository [env: GIT_CLIFF_REPOSITORY=]
# @option --include-path* <PATTERN>               Sets the path to include related commits [env: GIT_CLIFF_INCLUDE_PATH=]
# @option --exclude-path* <PATTERN>               Sets the path to exclude related commits [env: GIT_CLIFF_EXCLUDE_PATH=]
# @option --with-commit* <MSG>                    Sets custom commit messages to include in the changelog [env: GIT_CLIFF_WITH_COMMIT=]
# @option -p --prepend <PATH>                     Prepends entries to the given changelog file [env: GIT_CLIFF_PREPEND=]
# @option -o --output <PATH>                      Writes output to the given file [env: GIT_CLIFF_OUTPUT=]
# @option -t --tag[`_choice_tag`]                 Sets the tag for the latest version [env: GIT_CLIFF_TAG=]
# @option -b --body <TEMPLATE>                    Sets the template for the changelog body [env: GIT_CLIFF_TEMPLATE=]
# @option -s --strip[header|footer|all] <PART>    Strips the given parts from the changelog
# @option --sort[oldest|newest]                   Sets sorting of the commits inside sections [default: oldest]
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
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag ::: _choice_head_commit
}

_choice_tag() {
    _git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

_choice_head_commit() {
    _git log --no-notes --pretty='tformat:%h	%<(64,trunc)%s' --max-count=100 | gawk -F '\t' '{
        if (NR == 1) { head="HEAD" } else { head=sprintf("HEAD~%02d", NR - 1) }
        print head "\t" $2
        print $1 "\t" $2
    }'
}

_choice_local_branch() {
    _git branch --format '%(refname:short)	%(subject)'
}

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

command eval "$(argc --argc-eval "$0" "$@")"