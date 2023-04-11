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
    elif [[ "$*" == "git bisect" ]]; then
        $@ -h 2>&1 | sed '/usage:/ cusage: git bisect'
    else
        $@ -h 2>&1
    fi
}

_patch_table() {
    if [[ "$*" == "git" ]]; then
        sed '/argument # <cmd> # / cargument # <cmd> # # [`_choice_cmd`]'
    elif [[ "$*" == "git add" ]]; then
        sed '/argument # <pathspec>.../ cargument # <pathspec>... # # [`_choice_unstaged_file`]'
    elif [[ "$*" == "git branch" ]]; then
        sed '$a\argument # <branch> # # [`_choice_branch`]'
    elif [[ "$*" == "git checkout" ]]; then
        sed '/argument # <branch>/ cargument # <branch> # # [`_choice_checkout`]'
    elif [[ "$*" == "git cherry-pick" ]]; then
        sed '/argument # <commit-ish>.../ cargument # <commit-ish>... # # [`_choice_range`]'
    elif [[ "$*" == "git clean" ]]; then
        sed '/argument # <paths>.../ cargument # <paths>... # # [`_choice_unstaged_file`]'
    elif [[ "$*" == "git config" ]]; then
        sed '$a\argument # <key> # # [`_choice_config_key`]'
    elif [[ "$*" == "git describe" ]]; then
        sed '/argument # \[<commit-ish>...\]/ cargument # [commit-ish]... # # [`_choice_ref`]'
    elif [[ "$*" == "git diff" ]]; then
        sed '/argument # \[<commit>\]/, /argument # \[<path>...\]/ cargument # [commit-path]... # # [`_choice_diff`]'
    elif [[ "$*" == "git fetch" ]]; then
        sed '/argument # \[<repository>/ cargument # <remote> # # [`_choice_remote`]\nargument # <refspec>... # # [`_choice_branch`]'
    elif [[ "$*" == "git log" ]]; then
        sed '/argument # \[<revision-range>/, /argument # \[<path>/ cargument # [commit-path]... # # [`_choice_log`]'
    elif [[ "$*" == "git switch" ]]; then
        sed '/argument # \[<branch>\]/ cargument # [<branch>] # # [`_choice_branch`]'
    elif [[ "$*" == "git shortlog" ]]; then
        sed '/argument # \[<revision-range>/, /argument # \[<path>/ cargument # [commit-path]... # # [`_choice_log`]'
    elif [[ "$*" == "git show" ]]; then
        sed '/argument # \[<revision-range>/, /argument # \[<path>/ cargument # [commit-path]... # # [`_choice_show`]'
    elif [[ "$*" == "git restore" ]]; then
        sed '/argument # <file>.../ cargument # <file>... # # [`_choice_restore_file`]'
    elif [[ "$*" == "git reset" ]]; then
        sed '/argument # \[<commit>\]/ cargument # [commit]... # # [`_choice_reset`]'
    elif [[ "$*" == "git tag" ]]; then
        sed '$a\argument # <tagname> # # [`_choice_tag`]'
    elif [[ "$*" == "git rebase" ]]; then
        sed '/argument # \[<upstream>/ cargument # <base> # # [`_choice_branch`]\nargument # <new> # # [`_choice_branch`]'
    elif [[ "$*" == "git range-diff" ]]; then
        sed '/argument # <old-base>/, /argument # <new-base>/ cargument # <base> # # [`_choice_branch`]\nargument # <new> # # [`_choice_branch`]'
    elif [[ "$*" == "git push" ]]; then
        sed '/argument # \[<repository>/ cargument # <remote> # # [`_choice_remote`]\nargument # <refspec>... # # [`_choice_push`]'
    elif [[ "$*" == "git pull" ]]; then
        sed '/argument # \[<repository>/ cargument # <remote> # # [`_choice_remote`]\nargument # <refspec>... # # [`_choice_remote_branch`]'
    elif [[ "$*" == "git merge" ]]; then
        sed '/argument # \[<commit>...\]/ cargument # [target]... # # [`_choice_branch`]'
    else
        cat
    fi
}

_patch_script() {
    sed \
        -e '/{ git stash/, /} git stash/ s/@arg stash\(!\)\?/@arg stash\1[`_choice_stash`]/' \
        -e '/{ git remote/, /} git remote/ s/@arg name\(!\)\?/@arg name\1[`_choice_remote`]/' \
        -e '/{ git remote/, /} git remote/ s/@arg old\b\(!\)\?/@arg old\1[`_choice_remote`]/' \
        -e '/{ git remote/, /} git remote/ s/@arg new\b\(!\)\?/@arg new\1[`_choice_remote`]/'
}

_git() {
    git $(_argc_util_select_options -C --git-dir --work-tree) "$@"
}

_choice_cmd() {
    _git config --get-regexp 'alias.*' | awk '{print substr($1, 7)}'
}

_choice_config_key() {
    _git config --get-regexp '.*' | awk '{print $1}'
}

_choice_unstaged_file() {
    _git status --porcelain | awk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 3)
    }
}' | _argc_util_platform_path
}

_choice_staged_file() {
    _git status --porcelain | awk '{
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
    _git status --porcelain | awk '{
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
        _git ls-files | _argc_util_platform_path
    else
        _choice_branch
    fi
}

_choice_show() {
    if [[ -n "$argc__dashdash" ]]; then
        _git ls-files
    else
        _choice_branch
        _choice_tag
    fi
}

_choice_tag() {
    _git tag --sort=-creatordate
}

_choice_head() {
    local gitdir
    gitdir="$(_git rev-parse --git-dir)"
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
    _git for-each-ref --format="%(refname:strip=3)" \
        --sort="refname:strip=3" \
        "refs/remotes/*/$match*" "refs/remotes/*/*/**"  | uniq -u
}

_choice_branch() {
    _git for-each-ref --format='%(refname:strip=2)' --sort=-committerdate refs/heads/
    _git for-each-ref --format='%(refname:strip=2)' refs/remotes/
}

_choice_remote() {
    _git remote
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
    last_arg="$(_argc_util_positional -1)"
    if [[ "$last_arg" == *'..'* ]]; then
        ref1=${last_arg%%..*}
        ref2=${last_arg##*..}
        _choice_ref | grep "^$ref2" | sed 's/^/'"$ref1.."'/'
    else
        _choice_ref
    fi
}

_choice_stash() {
    _git stash list --format=%gd:%gs 2>/dev/null | sed 's/: /\t/'
}