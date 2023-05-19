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
    elif [[ "$*" == "git bisect" ]] || [[ "$*" == "git bisect "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Usage: git bisect
Commands:
    start       reset bisect state and start bisection.
    bad         mark <rev> bad revision after change in a given property.
    new         mark <rev> new revision after change in a given property.
    good        mark <rev>... good revisions before change in a given property.
    old         mark <rev>... old revisions before change in a given property.
    terms       show the terms used for old and new commits.
    skip        mark <rev>... untestable revisions.
    next        find next bisection to test and check it out.
    reset       finish bisection search and go back to commit.
    visualize   how bisect status in gitk.
    view        show bisect status in gitk.
    replay      replay bisection log.
    log         show bisect log.
    run         use <cmd>... to automatically bisect.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
git bisect start
options:
    --term-new <term>
    --term-bad <term>
    --term-old <term>
    --term-good <term>
    --no-checkout
    --first-parent
git bisect bad [<rev>]
git bisect new [<rev>]
git bisect good [<rev>...]
git bisect old [<rev>...]
git bisect terms 
options:
    --term-good
    --term-bad
git bisect skip  [(<rev>|<range>)...]
git bisect next
git bisect reset [<commit>]
git bisect visualize
git bisect new
git bisect replay <logfile>
git bisect log
git bisect run <cmd> 
EOF
        fi
    elif [[ "$*" == "git notes" ]]; then
        cat <<-'EOF'
Options:
    --ref <notes-ref>     use notes from <notes-ref>
Commands:
    list
    add
    copy
    append
    edit
    show
    merge
    remove
    prune
    get-ref
EOF
    elif [[ "$*" == "git notes list" ]]; then
        echo "usage: git notes list [<object>]"
    elif [[ "$*" == "git reflog" ]] || [[ "$*" == "git reflog "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    show
    expire
    delete
    exists
EOF
        elif [[ "$*" == "git reflog show" ]]; then
            $@ -h 2>&1
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@
git reflog expire <refs>...
options:
    --expire <time>
    --expire-unreachable <time>
    --rewrite
    --updateref
    --stale-fix
    -n --dry-run
    --verbose
    --all
git reflog delete <refs>...
options:
    --rewrite
    --updateref
    -n --dry-run
    --verbose
git refloge exists <ref>
EOF
        fi
    elif [[ "$*" == "git remote" ]]; then
        cat <<-'EOF'
Options:
    -v --verbose      be verbose; must be placed before a subcommand
Commands:
   add
   rename
   remove
   set-head
   show
   prune
   update
   set-branches
   get-url
   set-url
EOF
    elif [[ "$*" == "git remote remove" ]]; then
        echo "usage:  git remote remove <name>"
    elif [[ "$*" == "git sparse-checkout" ]]; then
        cat <<-'EOF'
Commands:
    init
    list
    set
    add
    reapply
    disable
EOF
    elif [[ "$*" == "git sparse-checkout set" ]] || [[ "$*" == "git sparse-checkout add" ]]; then
        $@ -h 2>&1 | sed '/^usage:/ c\usage: git sparse-checkout set <pattern>'
    elif [[ "$*" == "git stash" ]] || [[ "$*" == "git stash "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    list
    show
    drop
    pop
    apply
    branch
    clear
    push
    save
EOF
        else 
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
git stash list
git stash show <stash>
git stash drop <stash>
options:
    -q --quiet
git stash pop [<stash>]
options:
    --index
    -q --quiet
git stash apply [<stash>]
options:
    --index
    -q --quiet
git stash branch <branchname> [<stash>]
git stash clear
git stash push [<pathspec>...]
options:
    -p --patch
    -k --keep-index
    --no-keep-index
    -q --quiet
    -u --include-untracked
    -a --all
    -m --message <message>
    --pathspec-from-file <file>
    --pathspec-file-nul
git stash save [<message>]
options:
    -p --patch
    -k --keep-index
    --no-keep-index
    -q --quiet
    -u --include-untracked
    -a --all
EOF
        fi
    elif [[ "$*" == "git submodule" ]] || [[ "$*" == "git submodule "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Options:
    --quiet
    --cached
Commands:
    add
    status
    init
    deinit
    update
    set-branch
    set-url
    summary
    foreach
    sync
    absorbgitdirs
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
git submodule add <repository> [<path>]
options:
    -b <branch>
    -f --force
    --name <name>
    --reference <repository>
git submodule status [<path>...]
options:
    --recursive
git submodule init [<path>...]
git submodule deinit [<path>...]
options:
    -f --force
    --all
git submodule update [<path>...]
options:
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
git submodule set-branch <path>
options:
    --default
    --branch <branch>
git submodule set-url <path> <newurl>
git submodule summary [commit] [<path>...]
options:
    --cached
    --files
    --summary-limit <n>
git submodule foreach <cmd>
options:
    --recursive
git submodule sync [<path>...]
options:
    --recursive
git submodule absorbgitdirs [<path>...]
EOF
        fi
    elif [[ "$*" == "git worktree" ]] || [[ "$*" == "git worktree "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    add
    list
    lock
    move
    prune
    remove
    unlock
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
git worktree add [<options>] <path> [<commit-ish>]
git worktree list [<options>]
git worktree lock [<options>] <path>
git worktree move <worktree> <new-path>
git worktree prune [<options>]
git worktree remove [<options>] <worktree>
git worktree unlock <path>
EOF
            echo options:
            $@ -h 2>&1 | sed -e '/^usage:/ d' -e '/^\s\+or:/ d'
        fi
    else
        $@ -h 2>&1
    fi
}

_patch_table() {
    if [[ "$*" == "git" ]]; then
        _patch_util_bind_choices_fn 'cmd:_choice_cmd'
    elif [[ "$*" == "git add" ]]; then
        _patch_util_bind_choices_fn 'pathspec:_choice_unstaged_file'
    elif [[ "$*" == "git branch" ]]; then
        _patch_util_replace_arguments '<branch>:_choice_branch'
    elif [[ "$*" == "git checkout" ]]; then
        _patch_util_bind_choices_fn 'branch:_choice_checkout'
    elif [[ "$*" == "git cherry-pick" ]]; then
        _patch_util_bind_choices_fn 'commit-ish:_choice_range'
    elif [[ "$*" == "git clean" ]]; then
        _patch_util_bind_choices_fn 'paths:_choice_unstaged_file'
    elif [[ "$*" == "git config" ]]; then
        _patch_util_replace_arguments 'key:_choice_config_key'
    elif [[ "$*" == "git describe" ]]; then
        _patch_util_bind_choices_fn 'commit-ish:_choice_ref'
    elif [[ "$*" == "git diff" ]]; then
        _patch_util_replace_arguments '[commit-path]...:_choice_diff'
    elif [[ "$*" == "git fetch" ]]; then
        _patch_util_replace_arguments '<remote>:_choice_remote' '<refspec>...:_choice_branch'
    elif [[ "$*" == "git log" ]]; then
        _patch_util_replace_arguments '[commit-path]...:_choice_log'
    elif [[ "$*" == "git switch" ]]; then
        _patch_util_bind_choices_fn 'branch:_choice_branch'
    elif [[ "$*" == "git shortlog" ]]; then
        _patch_util_replace_arguments '[commit-path]...:_choice_log'
    elif [[ "$*" == "git show" ]]; then
        _patch_util_replace_arguments '[commit-path]...:_choice_show'
    elif [[ "$*" == "git restore" ]]; then
        _patch_util_bind_choices_fn 'file:_choice_restore_file'
    elif [[ "$*" == "git reset" ]]; then
        _patch_util_replace_arguments '[commit]...:_choice_reset'
    elif [[ "$*" == "git tag" ]]; then
        _patch_util_replace_arguments '<tagname>:_choice_tag'
    elif [[ "$*" == "git rebase" ]]; then
        _patch_util_replace_arguments '<base>:_choice_branch' '<new>:_choice_branch'
    elif [[ "$*" == "git range-diff" ]]; then
        _patch_util_replace_arguments '<base>:_choice_branch' '<new>:_choice_branch'
    elif [[ "$*" == "git push" ]]; then
        _patch_util_replace_arguments '<remote>:_choice_remote' '<refspec>...:_choice_push'
    elif [[ "$*" == "git pull" ]]; then
        _patch_util_replace_arguments '<remote>:_choice_remote' '<refspec>...:_choice_remote_branch'
    elif [[ "$*" == "git merge" ]]; then
        _patch_util_bind_choices_fn 'commit:_choice_branch'
    elif [[ "$*" == "git stash"* ]]; then
        _patch_util_bind_choices_fn 'stash:_choice_stash'
    elif [[ "$*" == "git remote"* ]]; then
        _patch_util_bind_choices_fn 'name:_choice_remote' 'old:_choice_remote' 'new:_choice_remote'
    else
        cat
    fi
}

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
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
}' | _argc_util_path_to_platform
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
}' | _argc_util_path_to_platform
}

_choice_changed_file() {
    _git status --porcelain | awk '{
    if (match($0, "->")) {
        print substr($0, RSTART + RLENGTH + 1)
    } else {
        print substr($0, 4)
    }
}' | _argc_util_path_to_platform
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
        _git ls-files | _argc_util_path_to_platform
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
    last_arg="$(_argc_util_param_get_positional -1)"
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