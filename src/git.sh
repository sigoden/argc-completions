_patch_help() {
    if [[ "$*" == "git" ]]; then
        commands="$(git --help | sed -n '/    \w\+ / p')"
        cat <<EOF
Usage: git <cmd> [args]...

Options:
    --version                       Prints the Git suite version that the git program came from.
    --help                          Prints the synopsis and a list of the most commonly used commands. 
    -C <path>                       Run as if git was started in <path> instead of the current working directory.
    -c <name>=<value>               Pass a configuration parameter to the command.
    --config-env=<name>=<envvar>    Pass a configuration parameter to the command, where value from enviroment variable
    --exec-path[=<path>]            Path to wherever your core Git programs are installed.
    --html-path                     Print the path, without trailing slash, where Git’s HTML documentation is installed and exit.
    --man-path                      Print the manpath (see man(1)) for the man pages for this version of Git and exit.
    --info-path                     Print the path where the Info files documenting this version of Git are installed and exit.
    -p --paginate                   Pipe all output into less (or if set, PAGER) if standard output is a terminal. 
    -P --no-pager                   Do not pipe Git output into a pager.
    --git-dir=<path>                Set the path to the repository (".git" directory).
    --work-tree=<path>              Set the path to the working tree.
    --namespace=<name>              Set the Git namespace. See gitnamespaces(7) for more details.
    --super-prefix=<path>           Currently for internal use only.
    --bare                          Treat the repository as a bare repository.
    --no-replace-objects            Do not use replacement refs to replace Git objects.
    --literal-pathspecs             Treat pathspecs literally (i.e. no globbing, no pathspec magic).
    --glob-pathspecs                Add "glob" magic to all pathspec. 
    --noglob-pathspecs              Add "literal" magic to all pathspec.
    --icase-pathspecs               Add "icase" magic to all pathspec. 
    --no-optional-locks             Do not perform optional operations that require locks.
    --list-cmds=group[,group...]    List commands by group.
Commands:
$commands
    am               Apply a series of patches from a mailbox 
    apply            Apply a patch to files and/or to the index 
    archive          Create an archive of files from a named tree 
    blame            Show what revision and author last modified each line of a file 
    branch           List, create, or delete branches 
    checkout         Switch branches or restore working tree files 
    cherry           Find commits yet to be applied to upstream 
    cherry-pick      Apply the changes introduced by some existing commits 
    clean            Remove untracked files from the working tree 
    config           Get and set repository or global options 
    describe         Give an object a human readable name based on an available ref 
    difftool         Show changes using common diff tools 
    format-patch     Prepare patches for e-mail submission 
    fsck             Verifies the connectivity and validity of the objects in the database 
    gc               Cleanup unnecessary files and optimize the local repository 
    help             Display help information about Git 
    instaweb         Instantly browse your working repository in gitweb 
    maintenance      Run tasks to optimize Git repository data 
    mergetool        Run merge conflict resolution tools to resolve merge conflicts 
    notes            Add or inspect object notes 
    prune            Prune all unreachable objects from the object database 
    range-diff       Compare two commit ranges (e.g. two versions of a branch) 
    reflog           Manage reflog information 
    remote           Manage set of tracked repositories 
    repack           Pack unpacked objects in a repository 
    replace          Create, list, delete refs to replace objects 
    request-pull     Generates a summary of pending changes 
    restore          Restore working tree files 
    revert           Revert some existing commits 
    shortlog         Summarize 'git log' output 
    show-branch      Show branches and their commits 
    sparse-checkout  Initialize and modify the sparse-checkout configuration, which reduces the checkout to a set of 
    stage            Add file contents to the staging area 
    stash            Stash the changes in a dirty working directory away 
    submodule        Initialize, update or inspect submodules 
    tag              Create, list, delete or verify a tag object signed with GPG 
    whatchanged      Show logs with difference each commit introduces 
    worktree         Manage multiple working trees 
EOF

    else
        embed_help="$( \
        cat <<-'EOF' | _patch_help_embed_help $@
# bisect
## start - reset bisect state and start bisection.
    --term-new <term>
    --term-bad <term>
    --term-old <term>
    --term-good <term>
    --no-checkout
    --first-parent
## bad [<rev>] - mark <rev> bad revision after change in a given property.
## new [<rev>] - mark <rev> new revision after change in a given property.
## good [<rev>...] - mark <rev>... good revisions before change in a given property.
## old [<rev>...] - old revisions before change in a given property.
## terms - show the terms used for old and new commits.
    --term-good
    --term-bad
## skip [(<rev>|<range>)...] - mark <rev>... untestable revisions.
## next - find next bisection to test and check it out.
## reset [<commit>] - finish bisection search and go back to commit.
## visualize - how bisect status in gitk.
## view - show bisect status in gitk.
## replay <logfile> - replay bisection log.
## log - show bisect log.
## run <cmd> - use <cmd>... to automatically bisect.

# maintenance

# notes
    --ref <notes-ref>     use notes from <notes-ref>
## list [<object>]
## add%
## copy%
## append%
## edit%
## show%
## merge%
## remove%
## prune%
## get-ref%

# reflog
## show%
## expire <refs>...
    --expire <time>
    --expire-unreachable <time>
    --rewrite
    --updateref
    --stale-fix
    -n --dry-run
    --verbose
    --all
## delete  <refs>...
    --rewrite
    --updateref
    -n --dry-run
    --verbose
## exists <ref>

# remote
    -v --verbose      be verbose; must be placed before a subcommand

## add%
## rename%
## remove <name>
## set-head%
## show%
## prune%
## update%
## set-branches%
## get-url%
## set-url%

# sparse-checkout
## init%
## list%
## set% <pattern>
## add% <pattern>
## reapply%
## disable%

# stash
## list
## show <stash>
## drop <stash>
    -q --quiet
## pop [<stash>]
    --index
    -q --quiet
## apply [<stash>]
    --index
    -q --quiet
## branch <branchname> [<stash>]
## clear
## push  [<pathspec>...]
    -p --patch
    -k --keep-index
    --no-keep-index
    -q --quiet
    -u --include-untracked
    -a --all
    -m --message <message>
    --pathspec-from-file <file>
    --pathspec-file-nul
## save [<message>]
    -p --patch
    -k --keep-index
    --no-keep-index
    -q --quiet
    -u --include-untracked
    -a --all

# submodule
    --quiet
    --cached
## add <repository> [<path>]
    -b <branch>
    -f --force
    --name <name>
    --reference <repository>
## status [<path>...]
    --recursive
## init [<path>...]
## deinit [<path>...]
    -f --force
    --all
## update [<path>...]
    --init
    --remote
    -N --no-fetch
    -f --force
    --checkout
    --merge
    --rebase
    --recommend-shallow
    --no-recommend-shallow
    --reference <repository>
    --single-branch
    --no-single-branch
## set-branch <path>
    --default
    --branch <branch>
## set-url <path> <newurl>
## summary [commit] [<path>...]
    --cached
    --files
    --summary-limit <n>
## foreach <cmd>
    --recursive
## sync [<path>...]
    --recursive
## absorbgitdirs [<path>...]

# worktree
## add% <path> [<commit-ish>]
## list% [<options>]
## lock% <path>
## move% <worktree> <new-path>
## prune% [<options>]
## remove% <worktree>
## unlock% <path>
EOF
)"
        echo "$embed_help"
        if [[ -z "$embed_help" ]] || grep -q __HELP_CMD__ <<<"$embed_help"; then
            $@ -h 2>&1
        fi
    fi
}

_patch_table() {
    if [[ "$*" == "git" ]]; then
        _patch_table_edit_arguments 'cmd;[`_choice_cmd`]'

    elif [[ "$*" == "git add" ]]; then
        _patch_table_edit_arguments 'pathspec;[`_choice_unstaged_file`]'

    elif [[ "$*" == "git diff" ]]; then
        _patch_table_edit_arguments ';;' '[commit-path]...;[`_choice_diff`]'

    elif [[ "$*" == "git log" ]]; then
        _patch_table_edit_arguments ';;' '[commit-path]...;[`_choice_log`]'

    elif [[ "$*" == "git show" ]]; then
        _patch_table_edit_arguments ';;' '[commit-path]...;[`_choice_show`]'

    elif [[ "$*" == "git merge" ]]; then
        _patch_table_edit_arguments 'commit;[`_choice_branch`]'

    elif [[ "$*" == "git rebase" ]]; then
        _patch_table_edit_arguments ';;' '<base>;[`_choice_branch`]' '<new>;[`_choice_branch`]'

    elif [[ "$*" == "git reset" ]]; then
        _patch_table_edit_arguments ';;' '[commit]...;[`_choice_reset`]'

    elif [[ "$*" == "git switch" ]]; then
        _patch_table_edit_arguments 'branch;[`_choice_branch`]'

    elif [[ "$*" == "git fetch" ]]; then
        _patch_table_edit_arguments ';;' '<remote>;[`_choice_remote`]' '<refspec>...;[`_choice_branch`]'

    elif [[ "$*" == "git pull" ]]; then
        _patch_table_edit_arguments ';;' '<remote>;[`_choice_remote`]' '<refspec>...;[`_choice_remote_branch`]'

    elif [[ "$*" == "git push" ]]; then
        _patch_table_edit_arguments ';;' '<remote>;[`_choice_remote`]' '<refspec>...;[`_choice_push`]'

    elif [[ "$*" == "git branch" ]]; then
        _patch_table_edit_arguments ';;' '<branch>;[`_choice_branch`]'

    elif [[ "$*" == "git checkout" ]]; then
        _patch_table_edit_arguments 'branch([branch-path]...);[`_choice_checkout`]'

    elif [[ "$*" == "git cherry-pick" ]]; then
        _patch_table_edit_arguments 'commit-ish;[`_choice_range`]'

    elif [[ "$*" == "git clean" ]]; then
        _patch_table_edit_arguments 'paths;[`_choice_unstaged_file`]'

    elif [[ "$*" == "git config" ]]; then
        _patch_table_edit_arguments ';;' 'key;[`_choice_config_key`]'

    elif [[ "$*" == "git describe" ]]; then
        _patch_table_edit_arguments 'commit-ish;[`_choice_ref`]'

    elif [[ "$*" == "git difftool" ]]; then
        _patch_table_edit_options '--extcmd;[`_module_os_command_string`]'

    elif [[ "$*" == "git range-diff" ]]; then
        _patch_table_edit_arguments ';;' '<base>;[`_choice_branch`]' '<new>;[`_choice_branch`]'

    elif [[ "$*" == "git remote"* ]]; then
        _patch_table_edit_arguments 'name;[`_choice_remote`]' 'old;[`_choice_remote`]' 'new;[`_choice_remote`]'

    elif [[ "$*" == "git restore" ]]; then
        _patch_table_edit_arguments 'file;[`_choice_restore_file`]'

    elif [[ "$*" == "git shortlog" ]]; then
        _patch_table_edit_arguments ';;' '[commit-path]...;[`_choice_log`]'

    elif [[ "$*" == "git stash"* ]]; then
        _patch_table_edit_arguments 'stash;[`_choice_stash`]'

    elif [[ "$*" == "git tag" ]]; then
        _patch_table_edit_arguments ';;' '<tagname>;[`_choice_tag`]'

    else
        cat
    fi
}

_choice_cmd() {
    _git config --get-regexp 'alias.*' | gawk '{print substr($1, 7)}'
}

_choice_unstaged_file() {
    _git status --porcelain | gawk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
}

_choice_diff() {
    _choice_reset
}

_choice_log() {
    if [[ -n "$argc_dashes" ]]; then
        _git ls-files | _argc_util_comp_parts /
    else
        _argc_util_mode_kv '..'
        _choice_ref
    fi
}

_choice_show() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_ref
    else
        _git ls-files | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix"
    fi
}

_choice_branch() {
    _argc_util_parallel _choice_tag ::: _choice_local_branch ::: _choice_remote_branch
}

_choice_reset() {
    if [[ -n "$argc__dashes" ]]; then
        _choice_changed_file
    elif [[ ${#argc__positionals[@]} -gt 1 ]]; then
        :;
    else
        _choice_ref
    fi
}

_choice_remote() {
    _git remote
}

_choice_remote_branch() {
    _git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_choice_push() {
    _argc_util_mode_kv ':'
    _choice_branch
}

_choice_checkout() {
    if [[ -n "$argc__dashes" ]]; then
        if [[ "$argc__dashes" -gt 0 ]]; then
            _helper_ref_change "${argc__positionals[0]}"
        else
            _choice_changed_file
        fi
    elif [[ ${#argc__positionals[@]} -gt 1 ]]; then
        _helper_ref_change "${argc__positionals[0]}"
    else
        _choice_ref
    fi
}

_choice_range() {
    _argc_util_mode_kv '..'
    _choice_ref 
}

_choice_config_key() {
    _git config --get-regexp '.*' | gawk '{print $1}'
}

_choice_ref() {
    _argc_util_parallel _choice_tag ::: _choice_head_commit ::: _choice_local_branch ::: _choice_remote_branch
}

_choice_restore_file() {
    if [[ -n "$argc_staged" ]]; then
        _choice_staged_file
    else
        _choice_changed_file
    fi
}

_choice_stash() {
    _git stash list --format='%gd	%gs'
}

_choice_tag() {
    git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

_choice_changed_file() {
    _git status --porcelain | gawk '{
    if (match($0, "->")) {
        print substr($0, RSTART + RLENGTH + 1)
    } else {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
}

_choice_head_commit() {
    _git log --no-notes --pretty='tformat:%h	%<(64,trunc)%s' --max-count=100 | gawk -F '\t' '{
        if (NR == 1) { head="HEAD" } else { head=sprintf("HEAD~%02d", NR - 1) }
        print $1 "\t" $2
        print head "\t" $2
    }'
}

_choice_local_branch() {
    _git branch --format '%(refname:short)	%(subject)'
}

_choice_staged_file() {
    _git status --porcelain | gawk '{
    if (substr($0, 2, 1) == " ") {
        if (match($0, "->")) {
            print substr($0, RSTART + RLENGTH + 1)
        } else {
            print substr($0, 4)
        }
    }
}' | _argc_util_comp_parts /
}

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

_helper_ref_change() {
    _git diff-tree --name-only --no-commit-id -r "$1"
}
