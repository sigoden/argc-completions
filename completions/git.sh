#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                           Prints the Git suite version that the git program came from.
# @flag --help                              Prints the synopsis and a list of the most commonly used commands.
# @option -C <path>                         Run as if git was started in <path> instead of the current working directory.
# @option -c <<name>=<value>>               Pass a configuration parameter to the command.
# @option --config-env <<name>=<envvar>>    Pass a configuration parameter to the command, where value from enviroment variable
# @option --exec-path <path>                Path to wherever your core Git programs are installed.
# @flag --html-path                         Print the path, without trailing slash, where Git’s HTML documentation is installed and exit.
# @flag --man-path                          Print the manpath (see man(1)) for the man pages for this version of Git and exit.
# @flag --info-path                         Print the path where the Info files documenting this version of Git are installed and exit.
# @flag -p --paginate                       Pipe all output into less (or if set, PAGER) if standard output is a terminal.
# @flag -P --no-pager                       Do not pipe Git output into a pager.
# @option --git-dir <path>                  Set the path to the repository (".git" directory).
# @option --work-tree <path>                Set the path to the working tree.
# @option --namespace <name>                Set the Git namespace.
# @option --super-prefix <path>             Currently for internal use only.
# @flag --bare                              Treat the repository as a bare repository.
# @flag --no-replace-objects                Do not use replacement refs to replace Git objects.
# @flag --literal-pathspecs                 Treat pathspecs literally (i.e.
# @flag --glob-pathspecs                    Add "glob" magic to all pathspec.
# @flag --noglob-pathspecs                  Add "literal" magic to all pathspec.
# @flag --icase-pathspecs                   Add "icase" magic to all pathspec.
# @flag --no-optional-locks                 Do not perform optional operations that require locks.
# @option --list-cmds <group[,group...]>    List commands by group.
# @arg cmd![`_choice_cmd`]
# @arg args*

# {{ git clone
# @cmd Clone a repository into a new directory
# @flag -v --verbose                           be more verbose
# @flag -q --quiet                             be more quiet
# @flag --progress                             force progress reporting
# @flag --reject-shallow                       don't clone shallow repository
# @flag -n --no-checkout                       don't create a checkout
# @flag --bare                                 create a bare repository
# @flag --mirror                               create a mirror repository (implies bare)
# @flag -l --local                             to clone from a local repository
# @flag --no-hardlinks                         don't use local hardlinks, always copy
# @flag -s --shared                            setup as shared repository
# @option --recurse-submodules <pathspec>      initialize submodules in the clone
# @option --recursive <pathspec>               alias of --recurse-submodules
# @option -j --jobs <n>                        number of submodules cloned in parallel
# @option --template <template-directory>      directory from which templates will be used
# @option --reference <repo>                   reference repository
# @option --reference-if-able <repo>           reference repository
# @flag --dissociate                           use --reference only while cloning
# @option -o --origin <name>                   use <name> instead of 'origin' to track upstream
# @option -b --branch <branch>                 checkout <branch> instead of the remote's HEAD
# @option -u --upload-pack <path>              path to git-upload-pack on the remote
# @option --depth <depth>                      create a shallow clone of that depth
# @option --shallow-since <time>               create a shallow clone since a specific time
# @option --shallow-exclude <revision>         deepen history of shallow clone, excluding rev
# @flag --single-branch                        clone only one branch, HEAD or --branch
# @flag --no-tags                              don't clone any tags, and make later fetches not to follow them
# @flag --shallow-submodules                   any cloned submodules will be shallow
# @option --separate-git-dir <gitdir>          separate git dir from working tree
# @option -c --config <key=value>              set config inside the new repository
# @option --server-option <server-specific>    option to transmit
# @flag -4 --ipv4                              use IPv4 addresses only
# @flag -6 --ipv6                              use IPv6 addresses only
# @option --filter <args>                      object filtering
# @flag --remote-submodules                    any cloned submodules will use their remote-tracking branch
# @flag --sparse                               initialize sparse-checkout file to include only files at root
# @arg repo!
# @arg dir
clone() {
    :;
}
# }} git clone

# {{ git init
# @cmd Create an empty Git repository or reinitialize an existing one
# @option --template <template-directory>    directory from which templates will be used
# @flag --bare                               create a bare repository
# @option --shared <permissions>             specify that the git repository is to be shared amongst several users
# @flag -q --quiet                           be quiet
# @option --separate-git-dir <gitdir>        separate git dir from working tree
# @option -b --initial-branch <name>         override the name of the initial branch
# @option --object-format <hash>             specify the hash algorithm to use
# @arg directory
init() {
    :;
}
# }} git init

# {{ git add
# @cmd Add file contents to the index
# @flag -n --dry-run                     dry run
# @flag -v --verbose                     be verbose
# @flag -i --interactive                 interactive picking
# @flag -p --patch                       select hunks interactively
# @flag -e --edit                        edit current diff and apply
# @flag -f --force                       allow adding otherwise ignored files
# @flag -u --update                      update tracked files
# @flag --renormalize                    renormalize EOL of tracked files (implies -u)
# @flag -N --intent-to-add               record only the fact that the path will be added later
# @flag -A --all                         add changes from all tracked and untracked files
# @flag --ignore-removal                 ignore paths removed in the working tree (same as --no-all)
# @flag --refresh                        don't add, only refresh the index
# @flag --ignore-errors                  just skip files which cannot be added because of errors
# @flag --ignore-missing                 check if - even missing - files are ignored in dry run
# @flag --sparse                         allow updating entries outside of the sparse-checkout cone
# @option --chmod <(+|-)x>               override the executable bit of the listed files
# @option --pathspec-from-file <file>    read pathspec from file
# @flag --pathspec-file-nul              with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg pathspec+[`_choice_unstaged_file`]
add() {
    :;
}
# }} git add

# {{ git mv
# @cmd Move or rename a file, a directory, or a symlink
# @flag -v --verbose    be verbose
# @flag -n --dry-run    dry run
# @flag -f --force      force move/rename even if target exists
# @flag -k              skip move/rename errors
# @flag --sparse        allow updating entries outside of the sparse-checkout cone
# @arg source+
# @arg destination!
mv() {
    :;
}
# }} git mv

# {{ git rm
# @cmd Remove files from the working tree and from the index
# @flag -n --dry-run                     dry run
# @flag -q --quiet                       do not list removed files
# @flag --cached                         only remove from the index
# @flag -f --force                       override the up-to-date check
# @flag -r                               allow recursive removal
# @flag --ignore-unmatch                 exit with a zero status even if nothing matched
# @flag --sparse                         allow updating entries outside of the sparse-checkout cone
# @option --pathspec-from-file <file>    read pathspec from file
# @flag --pathspec-file-nul              with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg file+
rm() {
    :;
}
# }} git rm

# {{ git bisect
# @cmd Use binary search to find the commit that introduced a bug
bisect() {
    :;
}

# {{{ git bisect start
# @cmd reset bisect state and start bisection.
# @option --term-new <term>
# @option --term-bad <term>
# @option --term-old <term>
# @option --term-good <term>
# @flag --no-checkout
# @flag --first-parent
bisect::start() {
    :;
}
# }}} git bisect start

# {{{ git bisect bad
# @cmd mark <rev> bad revision after change in a given property.
# @arg rev
bisect::bad() {
    :;
}
# }}} git bisect bad

# {{{ git bisect new
# @cmd mark <rev> new revision after change in a given property.
bisect::new() {
    :;
}
# }}} git bisect new

# {{{ git bisect good
# @cmd mark <rev>... good revisions before change in a given property.
# @arg rev*
bisect::good() {
    :;
}
# }}} git bisect good

# {{{ git bisect old
# @cmd mark <rev>... old revisions before change in a given property.
# @arg rev*
bisect::old() {
    :;
}
# }}} git bisect old

# {{{ git bisect terms
# @cmd show the terms used for old and new commits.
# @flag --term-good
# @flag --term-bad
bisect::terms() {
    :;
}
# }}} git bisect terms

# {{{ git bisect skip
# @cmd mark <rev>... untestable revisions.
# @arg rev-range* <<rev>|<range>>
bisect::skip() {
    :;
}
# }}} git bisect skip

# {{{ git bisect next
# @cmd find next bisection to test and check it out.
bisect::next() {
    :;
}
# }}} git bisect next

# {{{ git bisect reset
# @cmd finish bisection search and go back to commit.
# @arg commit
bisect::reset() {
    :;
}
# }}} git bisect reset

# {{{ git bisect visualize
# @cmd how bisect status in gitk.
bisect::visualize() {
    :;
}
# }}} git bisect visualize

# {{{ git bisect view
# @cmd show bisect status in gitk.
bisect::view() {
    :;
}
# }}} git bisect view

# {{{ git bisect replay
# @cmd replay bisection log.
# @arg logfile!
bisect::replay() {
    :;
}
# }}} git bisect replay

# {{{ git bisect log
# @cmd show bisect log.
bisect::log() {
    :;
}
# }}} git bisect log

# {{{ git bisect run
# @cmd use <cmd>... to automatically bisect.
# @arg cmd!
bisect::run() {
    :;
}
# }}} git bisect run
# }} git bisect

# {{ git diff
# @cmd Show changes between commits, commit and working tree, etc
# @flag -z                      output diff-raw with lines terminated with NUL.
# @flag -p                      output patch format.
# @flag -u                      synonym for -p.
# @flag --patch-with-raw        output both a patch and the diff-raw format.
# @flag --stat                  show diffstat instead of patch.
# @flag --numstat               show numeric diffstat instead of patch.
# @flag --patch-with-stat       output a patch and prepend its diffstat.
# @flag --name-only             show only names of changed files.
# @flag --name-status           show names and status of changed files.
# @flag --full-index            show full object name on index lines.
# @option --abbrev <n>          abbreviate object names in diff-tree header and diff-raw.
# @flag -R                      swap input file pairs.
# @flag -B                      detect complete rewrites.
# @flag -M                      detect renames.
# @flag -C                      detect copies.
# @flag --find-copies-harder    try unchanged files as candidate for copy detection.
# @option -l <n>                limit rename attempts up to <n> paths.
# @option -O <file>             reorder diffs according to the <file>.
# @option -S <string>           find filepair whose only one side contains the string.
# @flag --pickaxe-all           show all files diff when -S is used and hit is found.
# @flag -a --text               treat all files as text.
# @arg commit-path*[`_choice_diff`]
diff() {
    :;
}
# }} git diff

# {{ git grep
# @cmd Print lines matching a pattern
# @flag --cached                              search in index instead of in the work tree
# @flag --no-index                            find in contents not managed by git
# @flag --untracked                           search in both tracked and untracked files
# @flag --exclude-standard                    ignore files specified via '.gitignore'
# @flag --recurse-submodules                  recursively search in each submodule
# @flag -v --invert-match                     show non-matching lines
# @flag -i --ignore-case                      case insensitive matching
# @flag -w --word-regexp                      match patterns only at word boundaries
# @flag -a --text                             process binary files as text
# @flag -I                                    don't match patterns in binary files
# @flag --textconv                            process binary files with textconv filters
# @flag -r --recursive                        search in subdirectories (default)
# @option --max-depth <depth>                 descend at most <depth> levels
# @flag -E --extended-regexp                  use extended POSIX regular expressions
# @flag -G --basic-regexp                     use basic POSIX regular expressions (default)
# @flag -F --fixed-strings                    interpret patterns as fixed strings
# @flag -P --perl-regexp                      use Perl-compatible regular expressions
# @flag -n --line-number                      show line numbers
# @flag --column                              show column number of first match
# @flag -h                                    don't show filenames
# @flag -H                                    show filenames
# @flag --full-name                           show filenames relative to top directory
# @flag -l --files-with-matches               show only filenames instead of matching lines
# @flag --name-only                           synonym for --files-with-matches
# @flag -L --files-without-match              show only the names of files without match
# @flag -z --null                             print NUL after filenames
# @flag -o --only-matching                    show only matching parts of a line
# @flag -c --count                            show the number of matches instead of matching lines
# @option --color <when>                      highlight matches
# @flag --break                               print empty line between matches from different files
# @flag --heading                             show filename only once above matches from same file
# @option -C --context <n>                    show <n> context lines before and after matches
# @option -B --before-context <n>             show <n> context lines before matches
# @option -A --after-context <n>              show <n> context lines after matches
# @option --threads <n>                       use <n> worker threads
# @flag -NUM                                  shortcut for -C NUM
# @flag -p --show-function                    show a line with the function name before matches
# @flag -W --function-context                 show the surrounding function
# @option -f <file>                           read patterns from file
# @option -e <pattern>                        match <pattern>
# @flag --and                                 combine patterns specified with -e
# @flag --or
# @flag --not
# @flag -q --quiet                            indicate hit with exit status without output
# @flag --all-match                           show only matches from files that match all patterns
# @option -O --open-files-in-pager <pager>    show matching files in the pager
# @flag --ext-grep                            allow calling of grep(1) (ignored by this build)
# @arg pattern!
# @arg rev*
# @arg path*
grep() {
    :;
}
# }} git grep

# {{ git log
# @cmd Show commit logs
# @flag -q --quiet                             suppress diff output
# @flag --source                               show source
# @flag --use-mailmap                          use mail map file
# @flag --mailmap                              alias of --use-mailmap
# @option --decorate-refs <pattern>            only decorate refs that match <pattern>
# @option --decorate-refs-exclude <pattern>    do not decorate refs that match <pattern>
# @flag --decorate*                            decorate options
# @option -L <range:file>                      trace the evolution of line range <start>,<end> or function :<funcname> in <file>
# @arg commit-path*[`_choice_log`]
log() {
    :;
}
# }} git log

# {{ git show
# @cmd Show various types of objects
# @flag -q --quiet                             suppress diff output
# @flag --source                               show source
# @flag --use-mailmap                          use mail map file
# @flag --mailmap                              alias of --use-mailmap
# @option --decorate-refs <pattern>            only decorate refs that match <pattern>
# @option --decorate-refs-exclude <pattern>    do not decorate refs that match <pattern>
# @flag --decorate*                            decorate options
# @option -L <range:file>                      trace the evolution of line range <start>,<end> or function :<funcname> in <file>
# @arg commit-path*[`_choice_show`]
show() {
    :;
}
# }} git show

# {{ git status
# @cmd Show the working tree status
# @flag -v --verbose               be verbose
# @flag -s --short                 show status concisely
# @flag -b --branch                show branch information
# @flag --show-stash               show stash information
# @flag --ahead-behind             compute full ahead/behind values
# @option --porcelain <version>    machine-readable output
# @flag --long                     show status in long format (default)
# @flag -z --null                  terminate entries with NUL
# @option -u --untracked-files[all|normal|no] <mode>  show untracked files, optional modes: all, normal, no.
# @option --ignored[traditional|matching|no] <mode>  show ignored files, optional modes: traditional, matching, no.
# @option --ignore-submodules[all|dirty|untracked] <when>  ignore changes to submodules, optional when: all, dirty, untracked.
# @option --column <style>         list untracked files in columns
# @flag --no-renames               do not detect renames
# @option -M --find-renames <n>    detect renames, optionally set similarity index
# @arg pathspec+
status() {
    :;
}
# }} git status

# {{ git commit
# @cmd Record changes to the repository
# @flag -q --quiet                             suppress summary after successful commit
# @flag -v --verbose                           show diff in commit message template
# @option -F --file <file>                     read message from file
# @option --author <author>                    override author for commit
# @option --date <date>                        override date for commit
# @option -m --message <message>               commit message
# @option -c --reedit-message <commit>         reuse and edit message from specified commit
# @option -C --reuse-message <commit>          reuse message from specified commit
# @option --fixup <[(amend|reword):]commit>    use autosquash formatted message to fixup or amend/reword specified commit
# @option --squash <commit>                    use autosquash formatted message to squash specified commit
# @flag --reset-author                         the commit is authored by me now (used with -C/-c/--amend)
# @option --trailer <trailer>                  add custom trailer(s)
# @flag -s --signoff                           add a Signed-off-by trailer
# @option -t --template <file>                 use specified template file
# @flag -e --edit                              force edit of commit
# @option --cleanup <mode>                     how to strip spaces and ♯comments from message
# @flag --status                               include status in commit message template
# @option -S --gpg-sign <key-id>               GPG sign commit
# @flag -a --all                               commit all changed files
# @flag -i --include                           add specified files to index for commit
# @flag --interactive                          interactively add files
# @flag -p --patch                             interactively add changes
# @flag -o --only                              commit only specified files
# @flag -n --no-verify                         bypass pre-commit and commit-msg hooks
# @flag --dry-run                              show what would be committed
# @flag --short                                show status concisely
# @flag --branch                               show branch information
# @flag --ahead-behind                         compute full ahead/behind values
# @flag --porcelain                            machine-readable output
# @flag --long                                 show status in long format (default)
# @flag -z --null                              terminate entries with NUL
# @flag --amend                                amend previous commit
# @flag --no-post-rewrite                      bypass post-rewrite hook
# @option -u --untracked-files[all|normal|no] <mode>  show untracked files, optional modes: all, normal, no.
# @option --pathspec-from-file <file>          read pathspec from file
# @flag --pathspec-file-nul                    with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg pathspec+
commit() {
    :;
}
# }} git commit

# {{ git merge
# @cmd Join two or more development histories together
# @flag -n                                       do not show a diffstat at the end of the merge
# @flag --stat                                   show a diffstat at the end of the merge
# @flag --summary                                (synonym to --stat)
# @option --log <n>                              add (at most <n>) entries from shortlog to merge commit message
# @flag --squash                                 create a single commit instead of doing a merge
# @flag --commit                                 perform a commit if the merge succeeds (default)
# @flag -e --edit                                edit message before committing
# @option --cleanup <mode>                       how to strip spaces and ♯comments from message
# @flag --ff                                     allow fast-forward (default)
# @flag --ff-only                                abort if fast-forward is not possible
# @flag --rerere-autoupdate                      update the index with reused conflict resolution if possible
# @flag --verify-signatures                      verify that the named commit has a valid GPG signature
# @option -s --strategy <strategy>               merge strategy to use
# @option -X --strategy-option <option=value>    option for selected merge strategy
# @option -m --message <message>                 merge commit message (for a non-fast-forward merge)
# @option -F --file <path>                       read message from file
# @flag -v --verbose                             be more verbose
# @flag -q --quiet                               be more quiet
# @flag --abort                                  abort the current in-progress merge
# @flag --quit                                   --abort but leave index and working tree alone
# @flag --continue                               continue the current in-progress merge
# @flag --allow-unrelated-histories              allow merging unrelated histories
# @flag --progress                               force progress reporting
# @option -S --gpg-sign <key-id>                 GPG sign commit
# @flag --autostash                              automatically stash/stash pop before and after
# @flag --overwrite-ignore                       update ignored files (default)
# @flag --signoff                                add a Signed-off-by trailer
# @flag --no-verify                              bypass pre-merge-commit and commit-msg hooks
# @arg commit*[`_choice_branch`]
merge() {
    :;
}
# }} git merge

# {{ git rebase
# @cmd Reapply commits on top of another base tip
# @option --onto <revision>                rebase onto given branch instead of upstream
# @flag --keep-base                        use the merge-base of upstream and branch as the current base
# @flag --no-verify                        allow pre-rebase hook to run
# @flag -q --quiet                         be quiet.
# @flag -v --verbose                       display a diffstat of what changed upstream
# @flag -n --no-stat                       do not show diffstat of what changed upstream
# @flag --signoff                          add a Signed-off-by trailer to each commit
# @flag --committer-date-is-author-date    make committer date match author date
# @flag --reset-author-date                ignore author date and use current date
# @option -C <n>                           passed to 'git apply'
# @flag --ignore-whitespace                ignore changes in whitespace
# @option --whitespace <action>            passed to 'git apply'
# @flag -f --force-rebase                  cherry-pick all commits, even if unchanged
# @flag --no-ff                            cherry-pick all commits, even if unchanged
# @flag --continue                         continue
# @flag --skip                             skip current patch and continue
# @flag --abort                            abort and check out the original branch
# @flag --quit                             abort but keep HEAD where it is
# @flag --edit-todo                        edit the todo list during an interactive rebase
# @flag --show-current-patch               show the patch file being applied or merged
# @flag --apply                            use apply strategies to rebase
# @flag -m --merge                         use merging strategies to rebase
# @flag -i --interactive                   let the user edit the list of commits to rebase
# @flag --rerere-autoupdate                update the index with reused conflict resolution if possible
# @option --empty[drop|keep|ask]           how to handle commits that become empty
# @flag --autosquash                       move commits that begin with squash!/fixup! under -i
# @option -S --gpg-sign <key-id>           GPG-sign commits
# @flag --autostash                        automatically stash/stash pop before and after
# @option -x --exec <exec>                 add exec lines after each commit of the editable list
# @option -r --rebase-merges <mode>        try to rebase merges instead of skipping them
# @flag --fork-point                       use 'merge-base --fork-point' to refine upstream
# @option -s --strategy <strategy>         use the given merge strategy
# @option -X --strategy-option <option>    pass the argument through to the merge strategy
# @flag --root                             rebase all reachable commits up to the root(s)
# @flag --reschedule-failed-exec           automatically re-schedule any `exec` that fails
# @flag --reapply-cherry-picks             apply all changes, even those already present upstream
# @arg base![`_choice_branch`]
# @arg new![`_choice_branch`]
rebase() {
    :;
}
# }} git rebase

# {{ git reset
# @cmd Reset current HEAD to the specified state
# @flag -q --quiet                        be quiet, only report errors
# @flag --mixed                           reset HEAD and index
# @flag --soft                            reset only HEAD
# @flag --hard                            reset HEAD, index and working tree
# @flag --merge                           reset HEAD, index and working tree
# @flag --keep                            reset HEAD but keep local changes
# @option --recurse-submodules <reset>    control recursive updating of submodules
# @flag -p --patch                        select hunks interactively
# @flag -N --intent-to-add                record only the fact that removed paths will be added later
# @option --pathspec-from-file <file>     read pathspec from file
# @flag --pathspec-file-nul               with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg commit*[`_choice_reset`]
reset() {
    :;
}
# }} git reset

# {{ git switch
# @cmd Switch branches
# @option -c --create <branch>               create and switch to a new branch
# @option -C --force-create <branch>         create/reset and switch to a branch
# @flag --guess                              second guess 'git switch <no-such-branch>'
# @flag --discard-changes                    throw away local modifications
# @flag -q --quiet                           suppress progress reporting
# @option --recurse-submodules <checkout>    control recursive updating of submodules
# @flag --progress                           force progress reporting
# @flag -m --merge                           perform a 3-way merge with the new branch
# @option --conflict <style>                 conflict style (merge or diff3)
# @flag -d --detach                          detach HEAD at named commit
# @flag -t --track                           set upstream info for new branch
# @flag -f --force                           force checkout (throw away local modifications)
# @option --orphan <new-branch>              new unparented branch
# @flag --overwrite-ignore                   update ignored files (default)
# @flag --ignore-other-worktrees             do not check if another worktree is holding the given ref
# @arg branch[`_choice_branch`]
switch() {
    :;
}
# }} git switch

# {{ git fetch
# @cmd Download objects and refs from another repository
# @flag -v --verbose                              be more verbose
# @flag -q --quiet                                be more quiet
# @flag --all                                     fetch from all remotes
# @flag --set-upstream                            set upstream for git pull/fetch
# @flag -a --append                               append to .git/FETCH_HEAD instead of overwriting
# @flag --atomic                                  use atomic transaction to update references
# @option --upload-pack <path>                    path to upload pack on remote end
# @flag -f --force                                force overwrite of local reference
# @flag -m --multiple                             fetch from multiple remotes
# @flag -t --tags                                 fetch all tags and associated objects
# @flag -n                                        do not fetch all tags (--no-tags)
# @option -j --jobs <n>                           number of submodules fetched in parallel
# @flag --prefetch                                modify the refspec to place all refs within refs/prefetch/
# @flag -p --prune                                prune remote-tracking branches no longer on remote
# @flag -P --prune-tags                           prune local tags no longer on remote and clobber changed tags
# @option --recurse-submodules <on-demand>        control recursive fetching of submodules
# @flag --dry-run                                 dry run
# @flag --write-fetch-head                        write fetched references to the FETCH_HEAD file
# @flag -k --keep                                 keep downloaded pack
# @flag -u --update-head-ok                       allow updating of HEAD ref
# @flag --progress                                force progress reporting
# @option --depth <depth>                         deepen history of shallow clone
# @option --shallow-since <time>                  deepen history of shallow repository based on time
# @option --shallow-exclude <revision>            deepen history of shallow clone, excluding rev
# @option --deepen <n>                            deepen history of shallow clone
# @flag --unshallow                               convert to a complete repository
# @flag --update-shallow                          accept refs that update .git/shallow
# @option --refmap <refmap>                       specify fetch refmap
# @option -o --server-option <server-specific>    option to transmit
# @flag -4 --ipv4                                 use IPv4 addresses only
# @flag -6 --ipv6                                 use IPv6 addresses only
# @option --negotiation-tip <revision>            report that we have only objects reachable from this object
# @flag --negotiate-only                          do not fetch a packfile; instead, print ancestors of negotiation tips
# @option --filter <args>                         object filtering
# @flag --auto-maintenance                        run 'maintenance --auto' after fetching
# @flag --auto-gc                                 run 'maintenance --auto' after fetching
# @flag --show-forced-updates                     check for forced-updates on all updated branches
# @flag --write-commit-graph                      write the commit-graph after fetching
# @flag --stdin                                   accept refspecs from stdin
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_branch`]
fetch() {
    :;
}
# }} git fetch

# {{ git pull
# @cmd Fetch from and integrate with another repository or a local branch
# @flag -v --verbose                              be more verbose
# @flag -q --quiet                                be more quiet
# @flag --progress                                force progress reporting
# @option --recurse-submodules <on-demand>        control for recursive fetching of submodules
# @option -r --rebase[false|true|merges|interactive]  incorporate changes by rebasing rather than merging
# @flag -n                                        do not show a diffstat at the end of the merge
# @flag --stat                                    show a diffstat at the end of the merge
# @option --log <n>                               add (at most <n>) entries from shortlog to merge commit message
# @flag --signoff*                                add a Signed-off-by trailer
# @flag --squash                                  create a single commit instead of doing a merge
# @flag --commit                                  perform a commit if the merge succeeds (default)
# @flag --edit                                    edit message before committing
# @option --cleanup <mode>                        how to strip spaces and ♯comments from message
# @flag --ff                                      allow fast-forward
# @flag --ff-only                                 abort if fast-forward is not possible
# @flag --verify                                  control use of pre-merge-commit and commit-msg hooks
# @flag --verify-signatures                       verify that the named commit has a valid GPG signature
# @flag --autostash                               automatically stash/stash pop before and after
# @option -s --strategy <strategy>                merge strategy to use
# @option -X --strategy-option <option=value>     option for selected merge strategy
# @option -S --gpg-sign <key-id>                  GPG sign commit
# @flag --allow-unrelated-histories               allow merging unrelated histories
# @flag --all                                     fetch from all remotes
# @flag -a --append                               append to .git/FETCH_HEAD instead of overwriting
# @option --upload-pack <path>                    path to upload pack on remote end
# @flag -f --force                                force overwrite of local branch
# @flag -t --tags                                 fetch all tags and associated objects
# @flag -p --prune                                prune remote-tracking branches no longer on remote
# @option -j --jobs <n>                           number of submodules pulled in parallel
# @flag --dry-run                                 dry run
# @flag -k --keep                                 keep downloaded pack
# @option --depth <depth>                         deepen history of shallow clone
# @option --shallow-since <time>                  deepen history of shallow repository based on time
# @option --shallow-exclude <revision>            deepen history of shallow clone, excluding rev
# @option --deepen <n>                            deepen history of shallow clone
# @flag --unshallow                               convert to a complete repository
# @flag --update-shallow                          accept refs that update .git/shallow
# @option --refmap <refmap>                       specify fetch refmap
# @option -o --server-option <server-specific>    option to transmit
# @flag -4 --ipv4                                 use IPv4 addresses only
# @flag -6 --ipv6                                 use IPv6 addresses only
# @option --negotiation-tip <revision>            report that we have only objects reachable from this object
# @flag --show-forced-updates                     check for forced-updates on all updated branches
# @flag --set-upstream                            set upstream for git pull/fetch
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_remote_branch`]
pull() {
    :;
}
# }} git pull

# {{ git push
# @cmd Update remote refs along with associated objects
# @flag -v --verbose                            be more verbose
# @flag -q --quiet                              be more quiet
# @option --repo <repository>                   repository
# @flag --all                                   push all refs
# @flag --mirror                                mirror all refs
# @flag -d --delete                             delete refs
# @flag --tags                                  push tags (can't be used with --all or --mirror)
# @flag -n --dry-run                            dry run
# @flag --porcelain                             machine-readable output
# @flag -f --force                              force updates
# @option --force-with-lease <<refname>:<expect>>  require old value of ref to be at this value
# @flag --force-if-includes                     require remote updates to be integrated locally
# @option --recurse-submodules[check|on-demand|no]  control recursive pushing of submodules
# @flag --thin                                  use thin pack
# @option --receive-pack <receive-pack>         receive pack program
# @option --exec <receive-pack>                 receive pack program
# @flag -u --set-upstream                       set upstream for git pull/status
# @flag --progress                              force progress reporting
# @flag --prune                                 prune locally removed refs
# @flag --no-verify                             bypass pre-push hook
# @flag --follow-tags                           push missing but relevant tags
# @option --signed[yes|no|if-asked]             GPG sign the push
# @flag --atomic                                request atomic transaction on remote side
# @option -o --push-option <server-specific>    option to transmit
# @flag -4 --ipv4                               use IPv4 addresses only
# @flag -6 --ipv6                               use IPv6 addresses only
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_push`]
push() {
    :;
}
# }} git push

# {{ git am
# @cmd Apply a series of patches from a mailbox
# @flag -i --interactive                     run interactively
# @flag -3 --3way                            allow fall back on 3way merging if needed
# @flag -q --quiet                           be quiet
# @flag -s --signoff                         add a Signed-off-by trailer to the commit message
# @flag -u --utf8                            recode into utf8 (default)
# @flag -k --keep                            pass -k flag to git-mailinfo
# @flag --keep-non-patch                     pass -b flag to git-mailinfo
# @flag -m --message-id                      pass -m flag to git-mailinfo
# @flag --keep-cr                            pass --keep-cr flag to git-mailsplit for mbox format
# @flag --no-keep-cr                         do not pass --keep-cr flag to git-mailsplit independent of am.keepcr
# @flag -c --scissors                        strip everything before a scissors line
# @option --quoted-cr <action>               pass it through git-mailinfo
# @option --whitespace <action>              pass it through git-apply
# @flag --ignore-space-change                pass it through git-apply
# @flag --ignore-whitespace                  pass it through git-apply
# @option --directory <root>                 pass it through git-apply
# @option --exclude <path>                   pass it through git-apply
# @option --include <path>                   pass it through git-apply
# @option -C <n>                             pass it through git-apply
# @option -p <num>                           pass it through git-apply
# @option --patch-format <format>            format the patch(es) are in
# @flag --reject                             pass it through git-apply
# @flag --resolvemsg*                        override error message when patch failure occurs
# @flag --continue                           continue applying patches after resolving a conflict
# @flag -r --resolved                        synonyms for --continue
# @flag --skip                               skip the current patch
# @flag --abort                              restore the original branch and abort the patching operation
# @flag --quit                               abort the patching operation but keep HEAD where it is
# @option --show-current-patch <diff|raw>    show the patch being applied
# @flag --committer-date-is-author-date      lie about committer date
# @flag --ignore-date                        use current timestamp for author date
# @flag --rerere-autoupdate                  update the index with reused conflict resolution if possible
# @option -S --gpg-sign <key-id>             GPG-sign commits
# @arg mbox-maildir* <<mbox>|<Maildir>>
am() {
    :;
}
# }} git am

# {{ git apply
# @cmd Apply a patch to files and/or to the index
# @option --exclude <path>                don't apply changes matching the given path
# @option --include <path>                apply changes matching the given path
# @option -p <num>                        remove <num> leading slashes from traditional diff paths
# @flag --no-add                          ignore additions made by the patch
# @flag --stat                            instead of applying the patch, output diffstat for the input
# @flag --numstat                         show number of added and deleted lines in decimal notation
# @flag --summary                         instead of applying the patch, output a summary for the input
# @flag --check                           instead of applying the patch, see if the patch is applicable
# @flag --index                           make sure the patch is applicable to the current index
# @flag -N --intent-to-add                mark new files with `git add --intent-to-add`
# @flag --cached                          apply a patch without touching the working tree
# @flag --unsafe-paths                    accept a patch that touches outside the working area
# @flag --apply                           also apply the patch (use with --stat/--summary/--check)
# @flag -3 --3way                         attempt three-way merge, fall back on normal patch if that fails
# @option --build-fake-ancestor <file>    build a temporary index based on embedded index information
# @flag -z                                paths are separated with NUL character
# @option -C <n>                          ensure at least <n> lines of context match
# @option --whitespace <action>           detect new or modified lines that have whitespace errors
# @flag --ignore-space-change             ignore changes in whitespace when finding context
# @flag --ignore-whitespace               ignore changes in whitespace when finding context
# @flag -R --reverse                      apply the patch in reverse
# @flag --unidiff-zero                    don't expect at least one line of context
# @flag --reject                          leave the rejected hunks in corresponding *.rej files
# @flag --allow-overlap                   allow overlapping hunks
# @flag -v --verbose                      be verbose
# @flag --inaccurate-eof                  tolerate incorrectly detected missing new-line at the end of file
# @flag --recount                         do not trust the line counts in the hunk headers
# @option --directory <root>              prepend <root> to all filenames
# @arg patch*
apply() {
    :;
}
# }} git apply

# {{ git archive
# @cmd Create an archive of files from a named tree
# @option --format <fmt>         archive format
# @option --prefix <prefix>      prepend prefix to each pathname in the archive
# @option --add-file <file>      add untracked file to archive
# @option -o --output <file>     write the archive to this file
# @flag --worktree-attributes    read .gitattributes in working directory
# @flag -v --verbose             report archived files on stderr
# @flag -NUM                     set compression level
# @flag -l --list                list supported archive formats
# @option --remote <repo>        retrieve the archive from remote repository <repo>
# @option --exec <command>       path to the remote git-upload-archive command
# @arg tree-ish!
# @arg path*
archive() {
    :;
}
# }} git archive

# {{ git blame
# @cmd Show what revision and author last modified each line of a file
# @flag --incremental                  show blame entries as we find them, incrementally
# @flag -b                             do not show object names of boundary commits (Default: off)
# @flag --root                         do not treat root commits as boundaries (Default: off)
# @flag --show-stats                   show work cost statistics
# @flag --progress                     force progress reporting
# @flag --score-debug                  show output score for blame entries
# @flag -f --show-name                 show original filename (Default: auto)
# @flag -n --show-number               show original linenumber (Default: off)
# @flag -p --porcelain                 show in a format designed for machine consumption
# @flag --line-porcelain               show porcelain format with per-line commit information
# @flag -c                             use the same output mode as git-annotate (Default: off)
# @flag -t                             show raw timestamp (Default: off)
# @flag -l                             show long commit SHA1 (Default: off)
# @flag -s                             suppress author name and timestamp (Default: off)
# @flag -e --show-email                show author email instead of name (Default: off)
# @flag -w                             ignore whitespace differences
# @option --ignore-rev <rev>           ignore <rev> when blaming
# @option --ignore-revs-file <file>    ignore revisions from <file>
# @flag --color-lines                  color redundant metadata from previous line differently
# @flag --color-by-age                 color lines by age
# @flag --minimal                      spend extra cycles to find better match
# @option -S <file>                    use revisions from <file> instead of calling git-rev-list
# @option --contents <file>            use <file>'s contents as the final image
# @option -C <score>                   find line copies within and across files
# @option -M <score>                   find line movements within and across files
# @option -L <range>                   process only line range <start>,<end> or function :<funcname>
# @option --abbrev <n>                 use <n> digits to display object names
# @arg rev-opts
# @arg rev
# @arg file!
blame() {
    :;
}
# }} git blame

# {{ git branch
# @cmd List, create, or delete branches
# @flag -v --verbose                         show hash and subject, give twice for upstream branch
# @flag -q --quiet                           suppress informational messages
# @flag -t --track                           set up tracking mode (see git-pull(1))
# @option -u --set-upstream-to <upstream>    change the upstream info
# @flag --unset-upstream                     unset the upstream info
# @option --color <when>                     use colored output
# @flag -r --remotes                         act on remote-tracking branches
# @option --contains <commit>                print only branches that contain the commit
# @option --no-contains <commit>             print only branches that don't contain the commit
# @option --abbrev <n>                       use <n> digits to display object names
# @flag -a --all                             list both remote-tracking and local branches
# @flag -d --delete                          delete fully merged branch
# @flag -D                                   delete branch (even if not merged)
# @flag -m --move                            move/rename a branch and its reflog
# @flag -M                                   move/rename a branch, even if target exists
# @flag -c --copy                            copy a branch and its reflog
# @flag -C                                   copy a branch, even if target exists
# @flag -l --list                            list branch names
# @flag --show-current                       show current branch name
# @flag --create-reflog                      create the branch's reflog
# @flag --edit-description                   edit the description for the branch
# @flag -f --force                           force creation, move/rename, deletion
# @option --merged <commit>                  print only branches that are merged
# @option --no-merged <commit>               print only branches that are not merged
# @option --column <style>                   list branches in columns
# @option --sort <key>                       field name to sort on
# @option --points-at <object>               print only branches of the object
# @flag -i --ignore-case                     sorting and filtering are case insensitive
# @option --format <format>                  format to use for the output
# @arg branch![`_choice_branch`]
branch() {
    :;
}
# }} git branch

# {{ git checkout
# @cmd Switch branches or restore working tree files
# @option -b <branch>                        create and checkout a new branch
# @option -B <branch>                        create/reset and checkout a branch
# @flag -l                                   create reflog for new branch
# @flag --guess                              second guess 'git checkout <no-such-branch>' (default)
# @flag --overlay                            use overlay mode (default)
# @flag -q --quiet                           suppress progress reporting
# @option --recurse-submodules <checkout>    control recursive updating of submodules
# @flag --progress                           force progress reporting
# @flag -m --merge                           perform a 3-way merge with the new branch
# @option --conflict <style>                 conflict style (merge or diff3)
# @flag -d --detach                          detach HEAD at named commit
# @flag -t --track                           set upstream info for new branch
# @flag -f --force                           force checkout (throw away local modifications)
# @option --orphan <new-branch>              new unparented branch
# @flag --overwrite-ignore                   update ignored files (default)
# @flag --ignore-other-worktrees             do not check if another worktree is holding the given ref
# @flag -2 --ours                            checkout our version for unmerged files
# @flag -3 --theirs                          checkout their version for unmerged files
# @flag -p --patch                           select hunks interactively
# @flag --ignore-skip-worktree-bits          do not limit pathspecs to sparse entries only
# @option --pathspec-from-file <file>        read pathspec from file
# @flag --pathspec-file-nul                  with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg branch-path*[`_choice_checkout`]
checkout() {
    :;
}
# }} git checkout

# {{ git cherry
# @cmd Find commits yet to be applied to upstream
# @option --abbrev <n>    use <n> digits to display object names
# @flag -v --verbose      be verbose
# @arg upstream-head-limit <<upstream> [<head> [<limit>]]>
cherry() {
    :;
}
# }} git cherry

# {{ git cherry-pick
# @cmd Apply the changes introduced by some existing commits
# @flag --quit                             end revert or cherry-pick sequence
# @flag --continue                         resume revert or cherry-pick sequence
# @flag --abort                            cancel revert or cherry-pick sequence
# @flag --skip                             skip current commit and continue
# @option --cleanup <mode>                 how to strip spaces and ♯comments from message
# @flag -n --no-commit                     don't automatically commit
# @flag -e --edit                          edit the commit message
# @flag -s --signoff                       add a Signed-off-by trailer
# @option -m --mainline <parent-number>    select mainline parent
# @flag --rerere-autoupdate                update the index with reused conflict resolution if possible
# @option --strategy <strategy>            merge strategy
# @option -X --strategy-option <option>    option for merge strategy
# @option -S --gpg-sign <key-id>           GPG sign commit
# @flag -x                                 append commit name
# @flag --ff                               allow fast-forward
# @flag --allow-empty                      preserve initially empty commits
# @flag --allow-empty-message              allow commits with empty messages
# @flag --keep-redundant-commits           keep redundant, empty commits
# @arg commit-ish+[`_choice_range`]
cherry-pick() {
    :;
}
# }} git cherry-pick

# {{ git clean
# @cmd Remove untracked files from the working tree
# @flag -q --quiet                  do not print names of files removed
# @flag -n --dry-run                dry run
# @flag -f --force                  force
# @flag -i --interactive            interactive cleaning
# @flag -d                          remove whole directories
# @option -e --exclude <pattern>    add <pattern> to ignore rules
# @flag -x                          remove ignored files, too
# @flag -X                          remove only ignored files
# @arg paths+[`_choice_unstaged_file`]
clean() {
    :;
}
# }} git clean

# {{ git config
# @cmd Get and set repository or global options
# @flag --global               use global config file
# @flag --system               use system config file
# @flag --local                use repository config file
# @flag --worktree             use per-worktree config file
# @option -f --file <file>     use given config file
# @option --blob <blob-id>     read config from given blob object
# @flag --get                  get value: name [value-pattern]
# @flag --get-all              get all values: key [value-pattern]
# @flag --get-regexp           get values for regexp: name-regex [value-pattern]
# @flag --get-urlmatch         get value specific for the URL: section[.var] URL
# @flag --replace-all          replace all matching variables: name value [value-pattern]
# @flag --add                  add a new variable: name value
# @flag --unset                remove a variable: name [value-pattern]
# @flag --unset-all            remove all matches: name [value-pattern]
# @flag --rename-section       rename section: old-name new-name
# @flag --remove-section       remove a section: name
# @flag -l --list              list all
# @flag --fixed-value          use string equality when comparing values to 'value-pattern'
# @flag -e --edit              open an editor
# @flag --get-color            find the color configured: slot [default]
# @flag --get-colorbool        find the color setting: slot [stdout-is-tty]
# @flag -t --type              value is given this type
# @flag --bool                 value is "true" or "false"
# @flag --int                  value is decimal number
# @flag --bool-or-int          value is --bool or --int
# @flag --bool-or-str          value is --bool or string
# @flag --path                 value is a path (file or directory name)
# @flag --expiry-date          value is an expiry date
# @flag -z --null              terminate values with NUL byte
# @flag --name-only            show variable names only
# @flag --includes             respect include directives on lookup
# @flag --show-origin          show origin of config (file, standard input, blob, command line)
# @option --show-scope[worktree|local|global|system|command]  show scope of config
# @option --default <value>    with --get, use default value when missing entry
# @arg key[`_choice_config_key`]
config() {
    :;
}
# }} git config

# {{ git describe
# @cmd Give an object a human readable name based on an available ref
# @flag --contains               find the tag that comes after the commit
# @flag --debug                  debug search strategy on stderr
# @flag --all                    use any ref
# @flag --tags                   use any tag, even unannotated
# @flag --long                   always use long format
# @flag --first-parent           only follow first parent
# @option --abbrev <n>           use <n> digits to display object names
# @flag --exact-match            only output exact matches
# @option --candidates <n>       consider <n> most recent tags (default: 10)
# @option --match <pattern>      only consider tags matching <pattern>
# @option --exclude <pattern>    do not consider tags matching <pattern>
# @flag --always                 show abbreviated commit object as fallback
# @option --dirty <mark>         append <mark> on dirty working tree (default: "-dirty")
# @option --broken <mark>        append <mark> on broken working tree (default: "-broken")
# @arg commit-ish*[`_choice_ref`]
describe() {
    :;
}
# }} git describe

# {{ git difftool
# @cmd Show changes using common diff tools
# @flag -g --gui              use `diff.guitool` instead of `diff.tool`
# @flag -d --dir-diff         perform a full-directory diff
# @flag -y --no-prompt        do not prompt before launching a diff tool
# @flag --symlinks            use symlinks in dir-diff mode
# @option -t --tool <tool>    use the specified diff tool
# @flag --tool-help           print a list of diff tools that may be used with `--tool`
# @flag --trust-exit-code     make 'git-difftool' exit when an invoked diff tool returns a non-zero exit code
# @option -x --extcmd[`_module_os_command_string`] <command>  specify a custom command for viewing diffs
# @flag --no-index            passed to `diff`
# @arg commit-commit <<commit> [<commit>]>
# @arg path*
difftool() {
    :;
}
# }} git difftool

# {{ git format-patch
# @cmd Prepare patches for e-mail submission
# @flag -n --numbered                         use [PATCH n/m] even with a single patch
# @flag -N --no-numbered                      use [PATCH] even with multiple patches
# @flag -s --signoff                          add a Signed-off-by trailer
# @flag --stdout                              print patches to standard out
# @flag --cover-letter                        generate a cover letter
# @flag --numbered-files                      use simple number sequence for output file names
# @option --suffix <sfx>                      use <sfx> instead of '.patch'
# @option --start-number <n>                  start numbering patches at <n> instead of 1
# @option -v --reroll-count <reroll-count>    mark the series as Nth re-roll
# @option --filename-max-length <n>           max length of output filename
# @flag --rfc                                 use [RFC PATCH] instead of [PATCH]
# @option --cover-from-description <cover-from-description-mode>  generate parts of a cover letter based on a branch's description
# @option --subject-prefix <prefix>           use [<prefix>] instead of [PATCH]
# @option -o --output-directory <dir>         store resulting files in <dir>
# @flag -k --keep-subject                     don't strip/add [PATCH]
# @flag --no-binary                           don't output binary diffs
# @flag --zero-commit                         output all-zero hash in From header
# @flag --ignore-if-in-upstream               don't include a patch matching a commit upstream
# @flag -p --no-stat                          show patch format instead of default (patch + stat)
# @option --add-header <header>               add email header
# @option --to <email>                        add To: header
# @option --cc <email>                        add Cc: header
# @option --from <ident>                      set From address to <ident> (or committer ident if absent)
# @option --in-reply-to <message-id>          make first mail a reply to <message-id>
# @option --attach <boundary>                 attach the patch
# @option --inline <boundary>                 inline the patch
# @option --thread[shallow|deep] <style>      enable message threading, styles: shallow, deep
# @option --signature <signature>             add a signature
# @option --base <base-commit>                add prerequisite tree info to the patch series
# @option --signature-file <file>             add a signature from a file
# @flag -q --quiet                            don't print the patch filenames
# @flag --progress                            show progress while generating patches
# @option --interdiff <rev>                   show changes against <rev> in cover letter or single patch
# @option --range-diff <refspec>              show changes against <refspec> in cover letter or single patch
# @option --creation-factor <n>               percentage by which creation is weighted
# @arg since-revision-range <<since>|<revision-range>>
format-patch() {
    :;
}
# }} git format-patch

# {{ git fsck
# @cmd Verifies the connectivity and validity of the objects in the database
# @flag -v --verbose           be verbose
# @flag --unreachable          show unreachable objects
# @flag --dangling             show dangling objects
# @flag --tags                 report tags
# @flag --root                 report root nodes
# @flag --cache                make index objects head nodes
# @flag --reflogs              make reflogs head nodes (default)
# @flag --full                 also consider packs and alternate objects
# @flag --connectivity-only    check only connectivity
# @flag --strict               enable more strict checking
# @flag --lost-found           write dangling objects in .git/lost-found
# @flag --progress             show progress
# @flag --name-objects         show verbose names for reachable objects
# @arg object*
fsck() {
    :;
}
# }} git fsck

# {{ git gc
# @cmd Cleanup unnecessary files and optimize the local repository
# @flag -q --quiet             suppress progress reporting
# @option --prune <date>       prune unreferenced objects
# @flag --aggressive           be more thorough (increased runtime)
# @flag --auto                 enable auto-gc mode
# @flag --force                force running gc even if there may be another gc running
# @flag --keep-largest-pack    repack all other packs except the largest pack
gc() {
    :;
}
# }} git gc

# {{ git instaweb
# @cmd Instantly browse your working repository in gitweb
# @flag -l --local           only bind on 127.0.0.1
# @flag -p --port*           the port to bind to
# @flag -d --httpd*          the command to launch
# @flag -b --browser*        the browser to launch
# @flag -m --module-path*    the module path (only needed for apache2)
# @flag --stop               stop the web server
# @flag --start              start the web server
# @flag --restart            restart the web server
instaweb() {
    :;
}
# }} git instaweb

# {{ git maintenance
# @cmd Run tasks to optimize Git repository data
maintenance() {
    :;
}
# }} git maintenance

# {{ git mergetool
# @cmd Run merge conflict resolution tools to resolve merge conflicts
# @arg file-to-merge* <file to merge>
mergetool() {
    :;
}
# }} git mergetool

# {{ git notes
# @cmd Add or inspect object notes
# @option --ref <notes-ref>    use notes from <notes-ref>
notes() {
    :;
}

# {{{ git notes list
# @cmd
# @arg object
notes::list() {
    :;
}
# }}} git notes list

# {{{ git notes add
# @cmd
# @option -m --message <message>          note contents as a string
# @option -F --file <file>                note contents in a file
# @option -c --reedit-message <object>    reuse and edit specified note object
# @option -C --reuse-message <object>     reuse specified note object
# @flag --allow-empty                     allow storing empty note
# @flag -f --force                        replace existing notes
# @arg object
notes::add() {
    :;
}
# }}} git notes add

# {{{ git notes copy
# @cmd
# @flag -f --force                   replace existing notes
# @flag --stdin                      read objects from stdin
# @option --for-rewrite <command>    load rewriting config for <command> (implies --stdin)
# @arg from-object!
# @arg to-object!
notes::copy() {
    :;
}
# }}} git notes copy

# {{{ git notes append
# @cmd
# @option -m --message <message>          note contents as a string
# @option -F --file <file>                note contents in a file
# @option -c --reedit-message <object>    reuse and edit specified note object
# @option -C --reuse-message <object>     reuse specified note object
# @flag --allow-empty                     allow storing empty note
# @arg object
notes::append() {
    :;
}
# }}} git notes append

# {{{ git notes edit
# @cmd
# @option -m --message <message>          note contents as a string
# @option -F --file <file>                note contents in a file
# @option -c --reedit-message <object>    reuse and edit specified note object
# @option -C --reuse-message <object>     reuse specified note object
# @flag --allow-empty                     allow storing empty note
# @arg object
notes::edit() {
    :;
}
# }}} git notes edit

# {{{ git notes show
# @cmd
# @arg object
notes::show() {
    :;
}
# }}} git notes show

# {{{ git notes merge
# @cmd
# @flag -v --verbose                  be more verbose
# @flag -q --quiet                    be more quiet
# @option -s --strategy <strategy>    resolve notes conflicts using the given strategy (manual/ours/theirs/union/cat_sort_uniq)
# @flag --commit                      finalize notes merge by committing unmerged notes
# @flag --abort                       abort notes merge
# @arg notes-ref!
notes::merge() {
    :;
}
# }}} git notes merge

# {{{ git notes remove
# @cmd
# @flag --ignore-missing    attempt to remove non-existent note is not an error
# @flag --stdin             read object names from the standard input
# @arg object
notes::remove() {
    :;
}
# }}} git notes remove

# {{{ git notes prune
# @cmd
# @flag -n --dry-run    do not remove, show only
# @flag -v --verbose    report pruned notes
notes::prune() {
    :;
}
# }}} git notes prune

# {{{ git notes get-ref
# @cmd
notes::get-ref() {
    :;
}
# }}} git notes get-ref
# }} git notes

# {{ git prune
# @cmd Prune all unreachable objects from the object database
# @flag -n --dry-run                  do not remove, show only
# @flag -v --verbose                  report pruned objects
# @flag --progress                    show progress
# @option --expire <expiry-date>      expire objects older than <time>
# @flag --exclude-promisor-objects    limit traversal to objects outside promisor packfiles
# @arg head*
prune() {
    :;
}
# }} git prune

# {{ git range-diff
# @cmd Compare two commit ranges (e.g. two versions of a branch)
# @option --creation-factor <n>                 percentage by which creation is weighted
# @flag --no-dual-color                         use simple diff colors
# @option --notes <notes>                       passed to 'git log'
# @flag --left-only                             only emit output related to the first range
# @flag --right-only                            only emit output related to the second range
# @flag -p --patch                              generate patch
# @flag -s --no-patch                           suppress diff output
# @flag -u                                      generate patch
# @option -U --unified <n>                      generate diffs with <n> lines context
# @flag -W --function-context                   generate diffs with <n> lines context
# @flag --raw                                   generate the diff in raw format
# @flag --patch-with-raw                        synonym for '-p --raw'
# @flag --patch-with-stat                       synonym for '-p --stat'
# @flag --numstat                               machine friendly --stat
# @flag --shortstat                             output only the last line of --stat
# @option -X --dirstat* <param1,param2>         output the distribution of relative amount of changes for each sub-directory
# @flag --cumulative                            synonym for --dirstat=cumulative
# @option --dirstat-by-file* <param1,param2>    synonym for --dirstat=files,param1,param2...
# @flag --check                                 warn if changes introduce conflict markers or whitespace errors
# @flag --summary                               condensed summary such as creations, renames and mode changes
# @flag --name-only                             show only names of changed files
# @flag --name-status                           show only names and status of changed files
# @option --stat <<width>[,<name-width>[,<count>]]>  generate diffstat
# @option --stat-width <width>                  generate diffstat with a given width
# @option --stat-name-width <width>             generate diffstat with a given name width
# @option --stat-graph-width <width>            generate diffstat with a given graph width
# @option --stat-count <count>                  generate diffstat with limited lines
# @flag --compact-summary                       generate compact summary in diffstat
# @flag --binary                                output a binary diff that can be applied
# @flag --full-index                            show full pre- and post-image object names on the "index" lines
# @option --color <when>                        show colored diff
# @option --ws-error-highlight <kind>           highlight whitespace errors in the 'context', 'old' or 'new' lines in the diff
# @flag -z                                      do not munge pathnames and use NULs as output field terminators in --raw or --numstat
# @option --abbrev <n>                          use <n> digits to display object names
# @option --src-prefix <prefix>                 show the given source prefix instead of "a/"
# @option --dst-prefix <prefix>                 show the given destination prefix instead of "b/"
# @option --line-prefix <prefix>                prepend an additional prefix to every line of output
# @flag --no-prefix                             do not show any source or destination prefix
# @option --inter-hunk-context <n>              show context between diff hunks up to the specified number of lines
# @option --output-indicator-new <char>         specify the character to indicate a new line instead of '+'
# @option --output-indicator-old <char>         specify the character to indicate an old line instead of '-'
# @option --output-indicator-context <char>     specify the character to indicate a context instead of ' '
# @option -B --break-rewrites <<n>[/<m>]>       break complete rewrite changes into pairs of delete and create
# @option -M --find-renames <n>                 detect renames
# @flag -D --irreversible-delete                omit the preimage for deletes
# @option -C --find-copies <n>                  detect copies
# @flag --find-copies-harder                    use unmodified files as source to find copies
# @flag --no-renames                            disable rename detection
# @flag --rename-empty                          use empty blobs as rename source
# @flag --follow                                continue listing the history of a file beyond renames
# @option -l <n>                                prevent rename/copy detection if the number of rename/copy targets exceeds given limit
# @flag --minimal                               produce the smallest possible diff
# @flag -w --ignore-all-space                   ignore whitespace when comparing lines
# @flag -b --ignore-space-change                ignore changes in amount of whitespace
# @flag --ignore-space-at-eol                   ignore changes in whitespace at EOL
# @flag --ignore-cr-at-eol                      ignore carrier-return at the end of line
# @flag --ignore-blank-lines                    ignore changes whose lines are all blank
# @option -I --ignore-matching-lines <regex>    ignore changes whose all lines match <regex>
# @flag --indent-heuristic                      heuristic to shift diff hunk boundaries for easy reading
# @flag --patience                              generate diff using the "patience diff" algorithm
# @flag --histogram                             generate diff using the "histogram diff" algorithm
# @option --diff-algorithm <algorithm>          choose a diff algorithm
# @option --anchored <text>                     generate diff using the "anchored diff" algorithm
# @option --word-diff <mode>                    show word diff, using <mode> to delimit changed words
# @option --word-diff-regex <regex>             use <regex> to decide what a word is
# @option --color-words <regex>                 equivalent to --word-diff=color --word-diff-regex=<regex>
# @option --color-moved <mode>                  moved lines of code are colored differently
# @option --color-moved-ws <mode>               how white spaces are ignored in --color-moved
# @option --relative <prefix>                   when run from subdir, exclude changes outside and show relative paths
# @flag -a --text                               treat all files as text
# @flag -R                                      swap two inputs, reverse the diff
# @flag --exit-code                             exit with 1 if there were differences, 0 otherwise
# @flag --quiet                                 disable all output of the program
# @flag --ext-diff                              allow an external diff helper to be executed
# @flag --textconv                              run external text conversion filters when comparing binary files
# @option --ignore-submodules <when>            ignore changes to submodules in the diff generation
# @option --submodule <format>                  specify how differences in submodules are shown
# @flag --ita-invisible-in-index                hide 'git add -N' entries from the index
# @flag --ita-visible-in-index                  treat 'git add -N' entries as real in the index
# @option -S <string>                           look for differences that change the number of occurrences of the specified string
# @option -G <regex>                            look for differences that change the number of occurrences of the specified regex
# @flag --pickaxe-all                           show all changes in the changeset with -S or -G
# @flag --pickaxe-regex                         treat <string> in -S as extended POSIX regular expression
# @option -O <file>                             control the order in which files appear in the output
# @option --rotate-to <path>                    show the change in the specified path first
# @option --skip-to <path>                      skip the output to the specified path
# @option --find-object <object-id>             look for differences that change the number of occurrences of the specified object
# @option --diff-filter <(A|C|D|M|R|T|U|X|B)...[*]>  select files by diff type
# @option --output <file>                       Output to a specific file
# @arg base![`_choice_branch`]
# @arg new![`_choice_branch`]
range-diff() {
    :;
}
# }} git range-diff

# {{ git reflog
# @cmd Manage reflog information
reflog() {
    :;
}

# {{{ git reflog show
# @cmd
# @flag -q --quiet                             suppress diff output
# @flag --source                               show source
# @flag --use-mailmap                          use mail map file
# @flag --mailmap                              alias of --use-mailmap
# @option --decorate-refs <pattern>            only decorate refs that match <pattern>
# @option --decorate-refs-exclude <pattern>    do not decorate refs that match <pattern>
# @flag --decorate*                            decorate options
# @option -L <range:file>                      trace the evolution of line range <start>,<end> or function :<funcname> in <file>
# @arg revision-range
# @arg path*
reflog::show() {
    :;
}
# }}} git reflog show

# {{{ git reflog expire
# @cmd
# @option --expire <time>
# @option --expire-unreachable <time>
# @flag --rewrite
# @flag --updateref
# @flag --stale-fix
# @flag -n --dry-run
# @flag --verbose
# @flag --all
# @arg refs+
reflog::expire() {
    :;
}
# }}} git reflog expire

# {{{ git reflog delete
# @cmd
# @flag --rewrite
# @flag --updateref
# @flag -n --dry-run
# @flag --verbose
# @arg refs+
reflog::delete() {
    :;
}
# }}} git reflog delete

# {{{ git reflog exists
# @cmd
reflog::exists() {
    :;
}
# }}} git reflog exists
# }} git reflog

# {{ git remote
# @cmd Manage set of tracked repositories
# @flag -v --verbose    be verbose; must be placed before a subcommand
remote() {
    :;
}

# {{{ git remote add
# @cmd
# @flag -f --fetch                 fetch the remote branches
# @flag --tags                     import all tags and associated objects when fetching or do not fetch any tag at all (--no-tags)
# @option -t --track <branch>      branch(es) to track
# @option -m --master <branch>     master branch
# @option --mirror <push|fetch>    set up remote as a mirror to push to or fetch from
# @arg name![`_choice_remote`]
# @arg url!
remote::add() {
    :;
}
# }}} git remote add

# {{{ git remote rename
# @cmd
# @arg old![`_choice_remote`]
# @arg new![`_choice_remote`]
remote::rename() {
    :;
}
# }}} git remote rename

# {{{ git remote remove
# @cmd
# @arg name![`_choice_remote`]
remote::remove() {
    :;
}
# }}} git remote remove

# {{{ git remote set-head
# @cmd
# @flag -a --auto      set refs/remotes/<name>/HEAD according to remote
# @flag -d --delete    delete refs/remotes/<name>/HEAD
# @arg name![`_choice_remote`]
remote::set-head() {
    :;
}
# }}} git remote set-head

# {{{ git remote show
# @cmd
# @flag -n    do not query remotes
# @arg name![`_choice_remote`]
remote::show() {
    :;
}
# }}} git remote show

# {{{ git remote prune
# @cmd
# @flag -n --dry-run    dry run
# @arg name![`_choice_remote`]
remote::prune() {
    :;
}
# }}} git remote prune

# {{{ git remote update
# @cmd
# @flag -p --prune    prune remotes after fetching
# @arg group-remote* <<group>|<remote>>
remote::update() {
    :;
}
# }}} git remote update

# {{{ git remote set-branches
# @cmd
# @flag --add    add branch
# @arg name![`_choice_remote`]
# @arg branch+
remote::set-branches() {
    :;
}
# }}} git remote set-branches

# {{{ git remote get-url
# @cmd
# @flag --push    query push URLs rather than fetch URLs
# @flag --all     return all URLs
# @arg name![`_choice_remote`]
remote::get-url() {
    :;
}
# }}} git remote get-url

# {{{ git remote set-url
# @cmd
# @flag --push      manipulate push URLs
# @flag --add       add URL
# @flag --delete    delete URLs
# @arg name![`_choice_remote`]
# @arg newurl!
# @arg oldurl
remote::set-url() {
    :;
}
# }}} git remote set-url
# }} git remote

# {{ git repack
# @cmd Pack unpacked objects in a repository
# @flag -a                                      pack everything in a single pack
# @flag -A                                      same as -a, and turn unreachable objects loose
# @flag -d                                      remove redundant packs, and run git-prune-packed
# @flag -f                                      pass --no-reuse-delta to git-pack-objects
# @flag -F                                      pass --no-reuse-object to git-pack-objects
# @flag -n                                      do not run git-update-server-info
# @flag -q --quiet                              be quiet
# @flag -l --local                              pass --local to git-pack-objects
# @flag -b --write-bitmap-index                 write bitmap index
# @flag -i --delta-islands                      pass --delta-islands to git-pack-objects
# @option --unpack-unreachable <approxidate>    with -A, do not loosen objects older than this
# @flag -k --keep-unreachable                   with -a, repack unreachable objects
# @option --window <n>                          size of the window used for delta compression
# @option --window-memory <bytes>               same as the above, but limit memory size instead of entries count
# @option --depth <n>                           limits the maximum delta depth
# @option --threads <n>                         limits the maximum number of threads
# @option --max-pack-size <bytes>               maximum size of each packfile
# @flag --pack-kept-objects                     repack objects in packs marked with .keep
# @option --keep-pack <name>                    do not repack this pack
# @option -g --geometric <n>                    find a geometric progression with factor <N>
# @flag -m --write-midx                         write a multi-pack index of the resulting packs
repack() {
    :;
}
# }} git repack

# {{ git replace
# @cmd Create, list, delete refs to replace objects
# @flag -l --list               list replace refs
# @flag -d --delete             delete replace refs
# @flag -e --edit               edit existing object
# @flag -g --graft              change a commit's parents
# @flag --convert-graft-file    convert existing graft file
# @flag -f --force              replace the ref if it exists
# @flag --raw                   do not pretty-print contents for --edit
# @option --format <format>     use this format
# @arg object!
# @arg replacement!
replace() {
    :;
}
# }} git replace

# {{ git request-pull
# @cmd Generates a summary of pending changes
# @flag -p    show patch text as well
# @arg start
# @arg url
# @arg end
request-pull() {
    :;
}
# }} git request-pull

# {{ git restore
# @cmd Restore working tree files
# @option -s --source <tree-ish>             which tree-ish to checkout from
# @flag -S --staged                          restore the index
# @flag -W --worktree                        restore the working tree (default)
# @flag --ignore-unmerged                    ignore unmerged entries
# @flag --overlay                            use overlay mode
# @flag -q --quiet                           suppress progress reporting
# @option --recurse-submodules <checkout>    control recursive updating of submodules
# @flag --progress                           force progress reporting
# @flag -m --merge                           perform a 3-way merge with the new branch
# @option --conflict <style>                 conflict style (merge or diff3)
# @flag -2 --ours                            checkout our version for unmerged files
# @flag -3 --theirs                          checkout their version for unmerged files
# @flag -p --patch                           select hunks interactively
# @flag --ignore-skip-worktree-bits          do not limit pathspecs to sparse entries only
# @option --pathspec-from-file <file>        read pathspec from file
# @flag --pathspec-file-nul                  with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg file+[`_choice_restore_file`]
restore() {
    :;
}
# }} git restore

# {{ git revert
# @cmd Revert some existing commits
# @flag --quit                             end revert or cherry-pick sequence
# @flag --continue                         resume revert or cherry-pick sequence
# @flag --abort                            cancel revert or cherry-pick sequence
# @flag --skip                             skip current commit and continue
# @option --cleanup <mode>                 how to strip spaces and ♯comments from message
# @flag -n --no-commit                     don't automatically commit
# @flag -e --edit                          edit the commit message
# @flag -s --signoff                       add a Signed-off-by trailer
# @option -m --mainline <parent-number>    select mainline parent
# @flag --rerere-autoupdate                update the index with reused conflict resolution if possible
# @option --strategy <strategy>            merge strategy
# @option -X --strategy-option <option>    option for merge strategy
# @option -S --gpg-sign <key-id>           GPG sign commit
# @arg commit-ish+
revert() {
    :;
}
# }} git revert

# {{ git shortlog
# @cmd Summarize 'git log' output
# @flag -c --committer              group by committer rather than author
# @flag -n --numbered               sort output according to the number of commits per author
# @flag -s --summary                suppress commit descriptions, only provides commit count
# @flag -e --email                  show the email address of each author
# @option -w <<w>[,<i1>[,<i2>]]>    linewrap output
# @option --group <field>           group by field
# @arg commit-path*[`_choice_log`]
shortlog() {
    :;
}
# }} git shortlog

# {{ git show-branch
# @cmd Show branches and their commits
# @flag -a --all                        show remote-tracking and local branches
# @flag -r --remotes                    show remote-tracking branches
# @option --color <when>                color '*!+-' corresponding to the branch
# @option --more <n>                    show <n> more commits after the common ancestor
# @flag --list                          synonym to more=-1
# @flag --no-name                       suppress naming strings
# @flag --current                       include the current branch
# @flag --sha1-name                     name commits with their object names
# @flag --merge-base                    show possible merge bases
# @flag --independent                   show refs unreachable from any other ref
# @flag --topo-order                    show commits in topological order
# @flag --topics                        show only commits not on the first branch
# @flag --sparse                        show merges reachable from only one tip
# @flag --date-order                    topologically sort, maintaining date order where possible
# @option -g --reflog <<n>[,<base>]>    show <n> most recent ref-log entries starting at base
# @arg rev-glob* <<rev>|<glob>>
show-branch() {
    :;
}
# }} git show-branch

# {{ git sparse-checkout
# @cmd Initialize and modify the sparse-checkout configuration, which reduces the checkout to a set of
sparse-checkout() {
    :;
}

# {{{ git sparse-checkout init
# @cmd
# @flag --cone            initialize the sparse-checkout in cone mode
# @flag --sparse-index    toggle the use of a sparse index
sparse-checkout::init() {
    :;
}
# }}} git sparse-checkout init

# {{{ git sparse-checkout list
# @cmd
sparse-checkout::list() {
    :;
}
# }}} git sparse-checkout list

# {{{ git sparse-checkout set
# @cmd
# @flag --stdin    read patterns from standard in
# @arg pattern!
sparse-checkout::set() {
    :;
}
# }}} git sparse-checkout set

# {{{ git sparse-checkout add
# @cmd
# @flag --stdin    read patterns from standard in
# @arg pattern!
sparse-checkout::add() {
    :;
}
# }}} git sparse-checkout add

# {{{ git sparse-checkout reapply
# @cmd
sparse-checkout::reapply() {
    :;
}
# }}} git sparse-checkout reapply

# {{{ git sparse-checkout disable
# @cmd
sparse-checkout::disable() {
    :;
}
# }}} git sparse-checkout disable
# }} git sparse-checkout

# {{ git stage
# @cmd Add file contents to the staging area
# @flag -n --dry-run                     dry run
# @flag -v --verbose                     be verbose
# @flag -i --interactive                 interactive picking
# @flag -p --patch                       select hunks interactively
# @flag -e --edit                        edit current diff and apply
# @flag -f --force                       allow adding otherwise ignored files
# @flag -u --update                      update tracked files
# @flag --renormalize                    renormalize EOL of tracked files (implies -u)
# @flag -N --intent-to-add               record only the fact that the path will be added later
# @flag -A --all                         add changes from all tracked and untracked files
# @flag --ignore-removal                 ignore paths removed in the working tree (same as --no-all)
# @flag --refresh                        don't add, only refresh the index
# @flag --ignore-errors                  just skip files which cannot be added because of errors
# @flag --ignore-missing                 check if - even missing - files are ignored in dry run
# @flag --sparse                         allow updating entries outside of the sparse-checkout cone
# @option --chmod <(+|-)x>               override the executable bit of the listed files
# @option --pathspec-from-file <file>    read pathspec from file
# @flag --pathspec-file-nul              with --pathspec-from-file, pathspec elements are separated with NUL character
# @arg pathspec+
stage() {
    :;
}
# }} git stage

# {{ git stash
# @cmd Stash the changes in a dirty working directory away
stash() {
    :;
}

# {{{ git stash list
# @cmd
stash::list() {
    :;
}
# }}} git stash list

# {{{ git stash show
# @cmd
# @arg stash![`_choice_stash`]
stash::show() {
    :;
}
# }}} git stash show

# {{{ git stash drop
# @cmd
# @flag -q --quiet
# @arg stash![`_choice_stash`]
stash::drop() {
    :;
}
# }}} git stash drop

# {{{ git stash pop
# @cmd
# @flag --index
# @flag -q --quiet
# @arg stash[`_choice_stash`]
stash::pop() {
    :;
}
# }}} git stash pop

# {{{ git stash apply
# @cmd
# @flag --index
# @flag -q --quiet
# @arg stash[`_choice_stash`]
stash::apply() {
    :;
}
# }}} git stash apply

# {{{ git stash branch
# @cmd
# @arg branchname!
# @arg stash[`_choice_stash`]
stash::branch() {
    :;
}
# }}} git stash branch

# {{{ git stash clear
# @cmd
stash::clear() {
    :;
}
# }}} git stash clear

# {{{ git stash push
# @cmd
# @flag -p --patch
# @flag -k --keep-index
# @flag --no-keep-index
# @flag -q --quiet
# @flag -u --include-untracked
# @flag -a --all
# @option -m --message <message>
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg pathspec*
stash::push() {
    :;
}
# }}} git stash push

# {{{ git stash save
# @cmd
# @flag -p --patch
# @flag -k --keep-index
# @flag --no-keep-index
# @flag -q --quiet
# @flag -u --include-untracked
# @flag -a --all
# @arg message
stash::save() {
    :;
}
# }}} git stash save
# }} git stash

# {{ git submodule
# @cmd Initialize, update or inspect submodules
# @flag --quiet
# @flag --cached
submodule() {
    :;
}

# {{{ git submodule add
# @cmd
# @option -b <branch>
# @flag -f --force
# @option --name <name>
# @option --reference <repository>
# @arg repository!
# @arg path
submodule::add() {
    :;
}
# }}} git submodule add

# {{{ git submodule status
# @cmd
# @flag --recursive
# @arg path*
submodule::status() {
    :;
}
# }}} git submodule status

# {{{ git submodule init
# @cmd
# @arg path*
submodule::init() {
    :;
}
# }}} git submodule init

# {{{ git submodule deinit
# @cmd
# @flag -f --force
# @flag --all
# @arg path*
submodule::deinit() {
    :;
}
# }}} git submodule deinit

# {{{ git submodule update
# @cmd
# @flag --init
# @flag --remote
# @flag -N --no-fetch
# @flag -f --force
# @flag --checkout
# @flag --merge
# @flag --rebase
# @flag --recommend-shallow
# @flag --no-recommend-shallow
# @option --reference <repository>
# @flag --single-branch
# @flag --no-single-branch
# @arg path*
submodule::update() {
    :;
}
# }}} git submodule update

# {{{ git submodule set-branch
# @cmd
# @flag --default
# @option --branch <branch>
# @arg path!
submodule::set-branch() {
    :;
}
# }}} git submodule set-branch

# {{{ git submodule set-url
# @cmd
# @arg path!
# @arg newurl!
submodule::set-url() {
    :;
}
# }}} git submodule set-url

# {{{ git submodule summary
# @cmd
# @flag --cached
# @flag --files
# @option --summary-limit <n>
# @arg commit
# @arg path*
submodule::summary() {
    :;
}
# }}} git submodule summary

# {{{ git submodule foreach
# @cmd
# @flag --recursive
# @arg cmd!
submodule::foreach() {
    :;
}
# }}} git submodule foreach

# {{{ git submodule sync
# @cmd
# @flag --recursive
# @arg path*
submodule::sync() {
    :;
}
# }}} git submodule sync

# {{{ git submodule absorbgitdirs
# @cmd
# @arg path*
submodule::absorbgitdirs() {
    :;
}
# }}} git submodule absorbgitdirs
# }} git submodule

# {{ git tag
# @cmd Create, list, delete or verify a tag object signed with GPG
# @flag -l --list                     list tag names
# @option -n <n>                      print <n> lines of each tag message
# @flag -d --delete                   delete tags
# @flag -v --verify                   verify tags
# @flag -a --annotate                 annotated tag, needs a message
# @option -m --message <message>      tag message
# @option -F --file <file>            read message from file
# @flag -e --edit                     force edit of tag message
# @flag -s --sign                     annotated and GPG-signed tag
# @option --cleanup <mode>            how to strip spaces and ♯comments from message
# @option -u --local-user <key-id>    use another key to sign the tag
# @flag -f --force                    replace the tag if exists
# @flag --create-reflog               create a reflog
# @option --column <style>            show tag list in columns
# @option --contains <commit>         print only tags that contain the commit
# @option --no-contains <commit>      print only tags that don't contain the commit
# @option --merged <commit>           print only tags that are merged
# @option --no-merged <commit>        print only tags that are not merged
# @option --sort <key>                field name to sort on
# @option --points-at <object>        print only tags of the object
# @option --format <format>           format to use for the output
# @option --color <when>              respect format colors
# @flag -i --ignore-case              sorting and filtering are case insensitive
# @arg tagname![`_choice_tag`]
tag() {
    :;
}
# }} git tag

# {{ git whatchanged
# @cmd Show logs with difference each commit introduces
# @flag -q --quiet                             suppress diff output
# @flag --source                               show source
# @flag --use-mailmap                          use mail map file
# @flag --mailmap                              alias of --use-mailmap
# @option --decorate-refs <pattern>            only decorate refs that match <pattern>
# @option --decorate-refs-exclude <pattern>    do not decorate refs that match <pattern>
# @flag --decorate*                            decorate options
# @option -L <range:file>                      trace the evolution of line range <start>,<end> or function :<funcname> in <file>
# @arg revision-range
# @arg path*
whatchanged() {
    :;
}
# }} git whatchanged

# {{ git worktree
# @cmd Manage multiple working trees
worktree() {
    :;
}

# {{{ git worktree add
# @cmd
# @flag -f --force             checkout <branch> even if already checked out in other worktree
# @option -b <branch>          create a new branch
# @option -B <branch>          create or reset a branch
# @flag -d --detach            detach HEAD at named commit
# @flag --checkout             populate the new working tree
# @flag --lock                 keep the new working tree locked
# @option --reason <string>    reason for locking
# @flag -q --quiet             suppress progress reporting
# @flag --track                set up tracking mode (see git-branch(1))
# @flag --guess-remote         try to match the new branch name with a remote-tracking branch
# @arg path!
# @arg commit-ish
worktree::add() {
    :;
}
# }}} git worktree add

# {{{ git worktree list
# @cmd
# @flag --porcelain                 machine-readable output
# @flag -v --verbose                show extended annotations and reasons, if available
# @option --expire <expiry-date>    add 'prunable' annotation to worktrees older than <time>
worktree::list() {
    :;
}
# }}} git worktree list

# {{{ git worktree lock
# @cmd
# @option --reason <string>    reason for locking
# @arg path!
worktree::lock() {
    :;
}
# }}} git worktree lock

# {{{ git worktree move
# @cmd
# @flag -f --force    force move even if worktree is dirty or locked
# @arg worktree!
# @arg new-path!
worktree::move() {
    :;
}
# }}} git worktree move

# {{{ git worktree prune
# @cmd
# @flag -n --dry-run                do not remove, show only
# @flag -v --verbose                report pruned working trees
# @option --expire <expiry-date>    expire working trees older than <time>
worktree::prune() {
    :;
}
# }}} git worktree prune

# {{{ git worktree remove
# @cmd
# @flag -f --force    force removal even if worktree is dirty or locked
# @arg worktree!
worktree::remove() {
    :;
}
# }}} git worktree remove

# {{{ git worktree unlock
# @cmd
# @arg path!
worktree::unlock() {
    :;
}
# }}} git worktree unlock
# }} git worktree

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

_choice_cmd() {
    _git config --get-regexp 'alias.*' | gawk '{print substr($1, 7)}'
}

_choice_config_key() {
    _git config --get-regexp '.*' | gawk '{print $1}'
}

_choice_unstaged_file() {
    _git status --porcelain | gawk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
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

_choice_changed_file() {
    _git status --porcelain | gawk '{
    if (match($0, "->")) {
        print substr($0, RSTART + RLENGTH + 1)
    } else {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
}

_choice_restore_file() {
    if [[ -n "$argc_staged" ]]; then
        _choice_staged_file
    else
        _choice_changed_file
    fi
}

_choice_checkout() {
    if [[ -n "$argc__dashes" ]]; then
        if [[ "${argc__dashes[0]}" -gt 0 ]]; then
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


_choice_reset() {
    if [[ -n "$argc__dashes" ]]; then
        _choice_changed_file
    elif [[ ${#argc__positionals[@]} -gt 1 ]]; then
        :;
    else
        _choice_ref
    fi
}

_choice_branch() {
    _argc_util_parallel _choice_tag ::: _choice_local_branch ::: _choice_remote_branch
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

_choice_tag() {
    git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
}

_choice_push() {
    _argc_util_mode_kv ':'
    _choice_branch
}

_choice_remote() {
    _git remote
}

_choice_local_branch() {
    _git branch --format '%(refname:short)	%(subject)'
}

_choice_remote_branch() {
    _git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_choice_head_commit() {
    _git log --no-notes --pretty='tformat:%h	%<(64,trunc)%s' --max-count=100 | gawk -F '\t' '{
        if (NR == 1) { head="HEAD" } else { head=sprintf("HEAD~%02d", NR - 1) }
        print $1 "\t" $2
        print head "\t" $2
    }'
}

_choice_ref() {
    _argc_util_parallel _choice_tag ::: _choice_head_commit ::: _choice_local_branch ::: _choice_remote_branch
}

_choice_range() {
    _argc_util_mode_kv '..'
    _choice_ref 
}

_choice_stash() {
    _git stash list --format='%gd	%gs'
}

_helper_ref_change() {
    _git diff-tree --name-only --no-commit-id -r "$1"
}

_module_os_command() {
    if _argc_util_has_path_prefix "$ARGC_FILTER"; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32[^:]*:||Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_string() {
    _module_os_command
}

command eval "$(argc --argc-eval "$0" "$@")"