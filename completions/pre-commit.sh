#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       show this help message and exit
# @flag -V --version    show program's version number and exit

# {{ pre-commit autoupdate
# @cmd Auto-update pre-commit config to the latest repos' versions.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
# @flag --bleeding-edge                 Update to the bleeding edge of `HEAD` instead of the latest tagged version (the default behavior).
# @flag --freeze                        Store "frozen" hashes in `rev` instead of tag names
# @option --repo[`_choice_repo`]        Only update this repository -- may be specified multiple times.
# @option -j --jobs                     Number of threads to use.
autoupdate() {
    :;
}
# }} pre-commit autoupdate

# {{ pre-commit clean
# @cmd Clean out pre-commit files.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
clean() {
    :;
}
# }} pre-commit clean

# {{ pre-commit gc
# @cmd Clean unused cached repos.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
gc() {
    :;
}
# }} pre-commit gc

# {{ pre-commit init-templatedir
# @cmd Install hook script in a directory intended for use with `git config init.templateDir`.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
# @flag --no-allow-missing-config       Assume cloned repos should have a `pre-commit` config.
# @option -t --hook-type[commit-msg|post-checkout|post-commit|post-merge|post-rewrite|pre-commit|pre-merge-commit|pre-push|pre-rebase|prepare-commit-msg]
# @arg directory                        The directory in which to write the hook script.
init-templatedir() {
    :;
}
# }} pre-commit init-templatedir

# {{ pre-commit install
# @cmd Install the pre-commit script.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
# @flag -f --overwrite                  Overwrite existing hooks / remove migration mode.
# @flag --install-hooks                 Whether to install hook environments for all environments in the config file.
# @option -t --hook-type[commit-msg|post-checkout|post-commit|post-merge|post-rewrite|pre-commit|pre-merge-commit|pre-push|pre-rebase|prepare-commit-msg]
# @flag --allow-missing-config          Whether to allow a missing `pre-commit` configuration file or exit with a failure code.
install() {
    :;
}
# }} pre-commit install

# {{ pre-commit install-hooks
# @cmd Install hook environments for all environments in the config file.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
install-hooks() {
    :;
}
# }} pre-commit install-hooks

# {{ pre-commit migrate-config
# @cmd Migrate list configuration to new map configuration.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
migrate-config() {
    :;
}
# }} pre-commit migrate-config

# {{ pre-commit run
# @cmd Run hooks.
# @flag -h --help                                 show this help message and exit
# @option --color[auto|always|never]              Whether to use color in output.
# @option -c --config <file>                      Path to alternate config file
# @flag -v --verbose
# @flag -a --all-files                            Run on all the files in the repo.
# @option --files*                                Specific filenames to run hooks on.
# @flag --show-diff-on-failure                    When hooks fail, run `git diff` directly afterward.
# @option --hook-stage[commit-msg|post-checkout|post-commit|post-merge|post-rewrite|pre-commit|pre-merge-commit|pre-push|pre-rebase|prepare-commit-msg|manual]  The stage during which the hook is fired.
# @option --remote-branch[`_module_git_remote_branch`] <REMOTE_BRANCH>  Remote branch ref used by `git push`.
# @option --local-branch[`_module_git_local_branch`] <LOCAL_BRANCH>  Local branch ref used by `git push`.
# @option -s[`_module_git_ref`] <FROM_REF>        (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option --from-ref[`_module_git_ref`] <FROM_REF>  (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option --source[`_module_git_ref`] <FROM_REF>  (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option -o[`_module_git_ref`] <TO_REF>          (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --to-ref[`_module_git_ref`] <TO_REF>    (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --origin[`_module_git_ref`] <TO_REF>    (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --pre-rebase-upstream <PRE_REBASE_UPSTREAM>  The upstream from which the series was forked.
# @option --pre-rebase-branch <PRE_REBASE_BRANCH>  The branch being rebased, and is not set when rebasing the current branch.
# @option --commit-msg-filename <COMMIT_MSG_FILENAME>  Filename to check when running during `commit-msg`
# @option --prepare-commit-message-source <PREPARE_COMMIT_MESSAGE_SOURCE>  Source of the commit message (typically the second argument to .git/hooks/prepare-commit-msg)
# @option --commit-object-name <COMMIT_OBJECT_NAME>  Commit object name (typically the third argument to .git/hooks/prepare-commit-msg)
# @option --remote-name <REMOTE_NAME>             Remote name used by `git push`.
# @option --remote-url <REMOTE_URL>               Remote url used by `git push`.
# @option --checkout-type <CHECKOUT_TYPE>         Indicates whether the checkout was a branch checkout (changing branches, flag=1) or a file checkout (retrieving a file from the index, flag=0).
# @option --is-squash-merge <IS_SQUASH_MERGE>     During a post-merge hook, indicates whether the merge was a squash merge
# @option --rewrite-command <REWRITE_COMMAND>     During a post-rewrite hook, specifies the command that invoked the rewrite
# @arg hook[`_choice_hook`]                       A single hook-id to run
run() {
    :;
}
# }} pre-commit run

# {{ pre-commit sample-config
# @cmd Produce a sample .pre-commit-config.yaml file
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
sample-config() {
    :;
}
# }} pre-commit sample-config

# {{ pre-commit try-repo
# @cmd Try the hooks in a repository, useful for developing new hooks.
# @flag -h --help                                 show this help message and exit
# @option --color[auto|always|never]              Whether to use color in output.
# @option -c --config <file>                      Path to alternate config file
# @option --ref[`_module_git_ref`] <REF>          Manually select a rev to run against, otherwise the `HEAD` revision will be used.
# @option --rev[`_module_git_ref`] <REF>          Manually select a rev to run against, otherwise the `HEAD` revision will be used.
# @flag -v --verbose
# @flag -a --all-files                            Run on all the files in the repo.
# @option --files*                                Specific filenames to run hooks on.
# @flag --show-diff-on-failure                    When hooks fail, run `git diff` directly afterward.
# @option --hook-stage[commit-msg|post-checkout|post-commit|post-merge|post-rewrite|pre-commit|pre-merge-commit|pre-push|pre-rebase|prepare-commit-msg|manual]  The stage during which the hook is fired.
# @option --remote-branch <REMOTE_BRANCH>         Remote branch ref used by `git push`.
# @option --local-branch <LOCAL_BRANCH>           Local branch ref used by `git push`.
# @option -s[`_module_git_ref`] <FROM_REF>        (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option --from-ref[`_module_git_ref`] <FROM_REF>  (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option --source[`_module_git_ref`] <FROM_REF>  (for usage with `--to-ref`) -- this option represents the original ref in a `from_ref...to_ref` diff expression.
# @option -o[`_module_git_ref`] <TO_REF>          (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --to-ref[`_module_git_ref`] <TO_REF>    (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --origin[`_module_git_ref`] <TO_REF>    (for usage with `--from-ref`) -- this option represents the destination ref in a `from_ref...to_ref` diff expression.
# @option --pre-rebase-upstream <PRE_REBASE_UPSTREAM>  The upstream from which the series was forked.
# @option --pre-rebase-branch <PRE_REBASE_BRANCH>  The branch being rebased, and is not set when rebasing the current branch.
# @option --commit-msg-filename <COMMIT_MSG_FILENAME>  Filename to check when running during `commit-msg`
# @option --prepare-commit-message-source <PREPARE_COMMIT_MESSAGE_SOURCE>  Source of the commit message (typically the second argument to .git/hooks/prepare-commit-msg)
# @option --commit-object-name <COMMIT_OBJECT_NAME>  Commit object name (typically the third argument to .git/hooks/prepare-commit-msg)
# @option --remote-name <REMOTE_NAME>             Remote name used by `git push`.
# @option --remote-url <REMOTE_URL>               Remote url used by `git push`.
# @option --checkout-type <CHECKOUT_TYPE>         Indicates whether the checkout was a branch checkout (changing branches, flag=1) or a file checkout (retrieving a file from the index, flag=0).
# @option --is-squash-merge <IS_SQUASH_MERGE>     During a post-merge hook, indicates whether the merge was a squash merge
# @option --rewrite-command <REWRITE_COMMAND>     During a post-rewrite hook, specifies the command that invoked the rewrite
# @arg repo                                       Repository to source hooks from.
# @arg hook                                       A single hook-id to run
try-repo() {
    :;
}
# }} pre-commit try-repo

# {{ pre-commit uninstall
# @cmd Uninstall the pre-commit script.
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @option -c --config <file>            Path to alternate config file
# @option -t --hook-type[commit-msg|post-checkout|post-commit|post-merge|post-rewrite|pre-commit|pre-merge-commit|pre-push|pre-rebase|prepare-commit-msg]
uninstall() {
    :;
}
# }} pre-commit uninstall

# {{ pre-commit validate-config
# @cmd Validate .pre-commit-config.yaml files
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @arg filenames*
validate-config() {
    :;
}
# }} pre-commit validate-config

# {{ pre-commit validate-manifest
# @cmd Validate .pre-commit-hooks.yaml files
# @flag -h --help                       show this help message and exit
# @option --color[auto|always|never]    Whether to use color in output.
# @arg filenames*
validate-manifest() {
    :;
}
# }} pre-commit validate-manifest

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_repo() {
    _helper_find_config_file
    if [[ -f "$config_file" ]]; then
        cat "$config_file" | yq '.repos[].repo'
    fi
}

_choice_hook() {
    _helper_find_config_file
    if [[ -f "$config_file" ]]; then
        cat "$config_file" | yq '.repos[].hooks[].id'
    fi
}

_helper_find_config_file() {
    config_file="$(git rev-parse --show-toplevel 2>/dev/null)"/.pre-commit-config.yaml
}

_module_git_local_branch() {
    git branch --format '%(refname:short)	%(subject)'
}

_module_git_ref() {
    echo HEAD
    _argc_util_parallel _module_git_local_branch ::: _module_git_remote_branch :: _module_git_tag
}

_module_git_remote_branch() {
    git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_module_git_tag() {
    git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

command eval "$(argc --argc-eval "$0" "$@")"