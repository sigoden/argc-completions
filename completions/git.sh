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
# @flag -l --local                               When the repository to clone from is on a local machine, this flag bypasses the normal "Git aware" transport mechanism and clones the repository by making a copy of HEAD and everything under objects and refs directories.
# @flag --no-hardlinks                           Force the cloning process from a repository on a local filesystem to copy the files under the .git/objects directory instead of using hardlinks.
# @flag -s --shared                              When the repository to clone is on the local machine, instead of using hard links, automatically setup .git/objects/info/alternates to share the objects with the source repository.
# @option --reference <-if-able> <repository>    If the reference repository is on the local machine, automatically setup .git/objects/info/alternates to obtain objects from the reference repository.
# @flag --dissociate                             Borrow the objects from reference repositories specified with the --reference options only to reduce network transfer, and stop borrowing from them after a clone is made by making necessary local copies of borrowed objects.
# @flag -q --quiet                               Operate quietly.
# @flag -v --verbose                             Run verbosely.
# @flag --progress                               Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @option --server-option <option>               Transmit the given string to the server when communicating using protocol version 2.
# @flag -n --no-checkout                         No checkout of HEAD is performed after the clone is complete.
# @flag --reject-shallow                         Fail if the source repository is a shallow repository.
# @flag --no-reject-shallow                      Fail if the source repository is a shallow repository.
# @flag --bare                                   Make a bare Git repository.
# @flag --sparse                                 Initialize the sparse-checkout file so the working directory starts with only the files in the root of the repository.
# @option --filter <filter-spec>                 Use the partial clone feature and request that the server sends a subset of reachable objects according to a given object filter.
# @flag --mirror                                 Set up a mirror of the source repository.
# @option -o --origin <name>                     Instead of using the remote name origin to keep track of the upstream repository, use <name>.
# @option -b --branch <name>                     Instead of pointing the newly created HEAD to the branch pointed to by the cloned repository’s HEAD, point to <name> branch instead.
# @option -u --upload-pack <upload-pack>         When given, and the repository to clone from is accessed via ssh, this specifies a non-default path for the command run on the other end.
# @option --template <template_directory>        Specify the directory from which templates will be used; (See the "TEMPLATE DIRECTORY" section of git-init(1).)
# @option -c --config <<key>=<value>>            Set a configuration variable in the newly-created repository; this takes effect immediately after the repository is initialized, but before the remote history is fetched or any files checked out.
# @option --depth <depth>                        Create a shallow clone with a history truncated to the specified number of commits.
# @option --shallow-since <date>                 Create a shallow clone with a history after the specified time.
# @option --shallow-exclude <revision>           Create a shallow clone with a history, excluding commits reachable from a specified remote branch or tag.
# @flag --single-branch                          Clone only the history leading to the tip of a single branch, either specified by the --branch option or the primary branch remote’s HEAD points at.
# @flag --no-single-branch                       Clone only the history leading to the tip of a single branch, either specified by the --branch option or the primary branch remote’s HEAD points at.
# @flag --no-tags                                Don’t clone any tags, and set remote.<remote>.tagOpt=--no-tags in the config, ensuring that future git pull and git fetch operations won’t follow any tags.
# @option --recurse-submodules <pathspec>        After the clone is created, initialize and clone submodules within based on the provided pathspec.
# @flag --shallow-submodules                     All submodules which are cloned will be shallow with a depth of 1.
# @flag --no-shallow-submodules                  All submodules which are cloned will be shallow with a depth of 1.
# @flag --remote-submodules                      All submodules which are cloned will use the status of the submodule’s remote-tracking branch to update the submodule, rather than the superproject’s recorded SHA-1.
# @flag --no-remote-submodules                   All submodules which are cloned will use the status of the submodule’s remote-tracking branch to update the submodule, rather than the superproject’s recorded SHA-1.
# @option --separate-git-dir <git dir>           Instead of placing the cloned repository where it is supposed to be, place the cloned repository at the specified directory, then make a filesystem-agnostic Git symbolic link to there.
# @option -j --jobs <n>                          The number of submodules fetched at the same time.
# @arg repository!
# @arg directory
clone() {
    :;
}
# }} git clone

# {{ git init
# @cmd Create an empty Git repository or reinitialize an existing one
# @flag -q --quiet                             Only print error and warning messages; all other output will be suppressed.
# @flag --bare                                 Create a bare repository.
# @option --object-format <format>             Specify the given object format (hash algorithm) for the repository.
# @option --template <template_directory>      Specify the directory from which templates will be used.
# @option --separate-git-dir <git dir>         Instead of initializing the repository as a directory to either $GIT_DIR or ./.git/, create a text file there containing the path to the actual repository.
# @option -b --initial-branch <branch-name>    Use the specified name for the initial branch in the newly created repository.
# @option --shared[false|true|umask|group|all|world|everybody|0xxx]  Specify that the Git repository is to be shared amongst several users.
# @arg directory
init() {
    :;
}
# }} git init

# {{ git add
# @cmd Add file contents to the index
# @flag -n --dry-run                     Don’t actually add the file(s), just show if they exist and/or will be ignored.
# @flag -v --verbose                     Be verbose.
# @flag -f --force                       Allow adding otherwise ignored files.
# @flag --sparse                         Allow updating index entries outside of the sparse-checkout cone.
# @flag -i --interactive                 Add modified contents in the working tree interactively to the index.
# @flag -p --patch                       Interactively choose hunks of patch between the index and the work tree and add them to the index.
# @flag -e --edit                        Open the diff vs.
# @flag -u --update                      Update the index just where it already has an entry matching <pathspec>.
# @flag -A                               Update the index not only where the working tree has a file matching <pathspec> but also where the index already has an entry.
# @flag --all                            Update the index not only where the working tree has a file matching <pathspec> but also where the index already has an entry.
# @flag --no-ignore-removal              Update the index not only where the working tree has a file matching <pathspec> but also where the index already has an entry.
# @flag --no-all                         Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree.
# @flag --ignore-removal                 Update the index by adding new files that are unknown to the index and files modified in the working tree, but ignore files that have been removed from the working tree.
# @flag -N --intent-to-add               Record only the fact that the path will be added later.
# @flag --refresh                        Don’t add the file(s), but only refresh their stat() information in the index.
# @flag --ignore-errors                  If some files could not be added because of errors indexing them, do not abort the operation, but continue adding the others.
# @flag --ignore-missing                 This option can only be used together with --dry-run.
# @flag --no-warn-embedded-repo          By default, git add will warn when adding an embedded repository to the index without using git submodule add to create an entry in .gitmodules.
# @flag --renormalize                    Apply the "clean" process freshly to all tracked files to forcibly add them again to the index.
# @option --chmod <(+|-)x>               Override the executable bit of the added files.
# @option --pathspec-from-file <file>    Pathspec is passed in <file> instead of commandline args.
# @flag --pathspec-file-nul              Only meaningful with --pathspec-from-file.
# @arg pathspec*[`_choice_unstaged_file`]
add() {
    :;
}
# }} git add

# {{ git mv
# @cmd Move or rename a file, a directory, or a symlink
# @flag -f --force      Force renaming or moving of a file even if the target exists
# @flag -k              Skip move or rename actions which would lead to an error condition.
# @flag -n --dry-run    Do nothing; only show what would happen
# @flag -v --verbose    Report the names of files as they are moved.
# @arg args+
mv() {
    :;
}
# }} git mv

# {{ git rm
# @cmd Remove files from the working tree and from the index
# @flag -f --force                       Override the up-to-date check.
# @flag -n --dry-run                     Don’t actually remove any file(s).
# @flag -r                               Allow recursive removal when a leading directory name is given.
# @flag --cached                         Use this option to unstage and remove paths only from the index.
# @flag --ignore-unmatch                 Exit with a zero status even if no files matched.
# @flag --sparse                         Allow updating index entries outside of the sparse-checkout cone.
# @flag -q --quiet                       git rm normally outputs one line (in the form of an rm command) for each file removed.
# @option --pathspec-from-file <file>    Pathspec is passed in <file> instead of commandline args.
# @flag --pathspec-file-nul              Only meaningful with --pathspec-from-file.
# @arg pathspec*
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
# @arg rev
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
# @cmd old revisions before change in a given property.
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
# @flag -p                                      Generate patch (see section on generating patches).
# @flag -u                                      Generate patch (see section on generating patches).
# @flag --patch                                 Generate patch (see section on generating patches).
# @flag -s --no-patch                           Suppress diff output.
# @option -U --unified <n>                      Generate diffs with <n> lines of context instead of the usual three.
# @option --output <file>                       Output to a specific file instead of stdout.
# @option --output-indicator-new <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-old <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-context <char>     Specify the character used to indicate new, old or context lines in the generated patch.
# @flag --raw                                   Generate the diff in raw format.
# @flag --patch-with-raw                        Synonym for -p --raw.
# @flag --indent-heuristic                      Enable the heuristic that shifts diff hunk boundaries to make patches easier to read.
# @flag --no-indent-heuristic                   Disable the indent heuristic.
# @flag --minimal                               Spend extra time to make sure the smallest possible diff is produced.
# @flag --patience                              Generate a diff using the "patience diff" algorithm.
# @flag --histogram                             Generate a diff using the "histogram diff" algorithm.
# @option --anchored <text>                     Generate a diff using the "anchored diff" algorithm.
# @option --diff-algorithm[patience|minimal|histogram|myers]  Choose a diff algorithm.
# @option --stat <<width>[,<name-width>[,<count>]]>  Generate a diffstat.
# @flag --compact-summary                       Output a condensed summary of extended header information such as file creations or deletions ("new" or "gone", optionally "+l" if it’s a symlink) and mode changes ("+x" or "-x" for adding or removing executable bit respectively) in diffstat.
# @flag --numstat                               Similar to --stat, but shows number of added and deleted lines in decimal notation and pathname without abbreviation, to make it more machine friendly.
# @flag --shortstat                             Output only the last line of the --stat format containing total number of modified files, as well as number of added and deleted lines.
# @option -X --dirstat* <param1,param2,>        Output the distribution of relative amount of changes for each sub-directory.
# @flag --cumulative                            Synonym for --dirstat=cumulative
# @option --dirstat-by-file* <param1,param2>    Synonym for --dirstat=files,param1,param2...
# @flag --summary                               Output a condensed summary of extended header information such as creations, renames and mode changes.
# @flag --patch-with-stat                       Synonym for -p --stat.
# @flag -z                                      When --raw, --numstat, --name-only or --name-status has been given, do not munge pathnames and use NULs as output field terminators.
# @flag --name-only                             Show only names of changed files.
# @flag --name-status                           Show only names and status of changed files.
# @option --submodule <format>                  Specify how differences in submodules are shown.
# @option --color <when>                        Show colored diff.
# @flag --no-color                              Turn off colored diff.
# @option --color-moved <mode>                  Moved lines of code are colored differently.
# @flag --no-color-moved                        Turn off move detection.
# @option --color-moved-ws <modes>              This configures how whitespace is ignored when performing the move detection for --color-moved.
# @flag --no-color-moved-ws                     Do not ignore whitespace when performing move detection.
# @option --word-diff <mode>                    Show a word diff, using the <mode> to delimit changed words.
# @option --word-diff-regex <regex>             Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word.
# @option --color-words <regex>                 Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.
# @flag --no-renames                            Turn off rename detection, even when the configuration file gives the default to do so.
# @flag --rename-empty                          Whether to use empty blobs as rename source.
# @flag --no-rename-empty                       Whether to use empty blobs as rename source.
# @flag --check                                 Warn if changes introduce conflict markers or whitespace errors.
# @option --ws-error-highlight <kind>           Highlight whitespace errors in the context, old or new lines of the diff.
# @flag --full-index                            Instead of the first handful of characters, show the full pre- and post-image blob object names on the "index" line when generating patch format output.
# @flag --binary                                In addition to --full-index, output a binary diff that can be applied with git-apply.
# @option --abbrev <n>                          Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object.
# @option -B --break-rewrites <[<n>][/<m>]>     Break complete rewrite changes into pairs of delete and create.
# @option -M --find-renames <n>                 Detect renames.
# @option -C --find-copies <n>                  Detect copies as well as renames.
# @flag --find-copies-harder                    For performance reasons, by default, -C option finds copies only if the original file of the copy was modified in the same changeset.
# @flag -D --irreversible-delete                Omit the preimage for deletes, i.e.
# @option -l <num>                              The -M and -C options involve some preliminary steps that can detect subsets of renames/copies cheaply, followed by an exhaustive fallback portion that compares all remaining unpaired destinations to all relevant sources.
# @option --diff-filter <(A|C|D|M|R|T|U|X|B)...[*]>  Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e.
# @option -S <string>                           Look for differences that change the number of occurrences of the specified string (i.e.
# @option -G <regex>                            Look for differences whose patch text contains added/removed lines that match <regex>.
# @option --find-object <object-id>             Look for differences that change the number of occurrences of the specified object.
# @flag --pickaxe-all                           When -S or -G finds a change, show all the changes in that changeset, not just the files that contain the change in <string>.
# @flag --pickaxe-regex                         Treat the <string> given to -S as an extended POSIX regular expression to match.
# @option -O <orderfile>                        Control the order in which files appear in the output.
# @option --skip-to <file>                      Discard the files before the named <file> from the output (i.e.
# @option --rotate-to <file>                    Discard the files before the named <file> from the output (i.e.
# @flag -R                                      Swap two inputs; that is, show differences from index or on-disk file to tree contents.
# @option --relative <path>                     When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @option --no-relative <path>                  When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @flag -a --text                               Treat all files as text.
# @flag --ignore-cr-at-eol                      Ignore carriage-return at the end of line when doing a comparison.
# @flag --ignore-space-at-eol                   Ignore changes in whitespace at EOL.
# @flag -b --ignore-space-change                Ignore changes in amount of whitespace.
# @flag -w --ignore-all-space                   Ignore whitespace when comparing lines.
# @flag --ignore-blank-lines                    Ignore changes whose lines are all blank.
# @option -I --ignore-matching-lines <regex>    Ignore changes whose all lines match <regex>.
# @option --inter-hunk-context <lines>          Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other.
# @flag -W --function-context                   Show whole function as context lines for each change.
# @flag --exit-code                             Make the program exit with codes similar to diff(1).
# @flag --quiet                                 Disable all output of the program.
# @flag --ext-diff                              Allow an external diff helper to be executed.
# @flag --no-ext-diff                           Disallow external diff drivers.
# @flag --textconv                              Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @flag --no-textconv                           Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @option --ignore-submodules <when>            Ignore changes to submodules in the diff generation.
# @option --src-prefix <prefix>                 Show the given source prefix instead of "a/".
# @option --dst-prefix <prefix>                 Show the given destination prefix instead of "b/".
# @flag --no-prefix                             Do not show any source or destination prefix.
# @option --line-prefix <prefix>                Prepend an additional prefix to every line of output.
# @flag --ita-invisible-in-index                By default entries added by "git add -N" appear as an existing empty file in "git diff" and a new file in "git diff --cached".
# @flag -1                                      Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag -2                                      Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag -3                                      Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag --base                                  Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag --ours                                  Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag --theirs                                Compare the working tree with the "base" version (stage ♯1), "our branch" (stage ♯2) or "their branch" (stage ♯3).
# @flag -0                                      Omit diff output for unmerged entries and just show "Unmerged".
# @arg commit-path*[`_choice_diff`]
diff() {
    :;
}
# }} git diff

# {{ git grep
# @cmd Print lines matching a pattern
# @flag --cached                              Instead of searching tracked files in the working tree, search blobs registered in the index file.
# @flag --no-index                            Search files in the current directory that is not managed by Git.
# @flag --untracked                           In addition to searching in the tracked files in the working tree, search also in untracked files.
# @flag --no-exclude-standard                 Also search in ignored files by not honoring the .gitignore mechanism.
# @flag --exclude-standard                    Do not pay attention to ignored files specified via the .gitignore mechanism.
# @flag --recurse-submodules                  Recursively search in each submodule that is active and checked out in the repository.
# @flag -a --text                             Process binary files as if they were text.
# @flag --textconv                            Honor textconv filter settings.
# @flag --no-textconv                         Do not honor textconv filter settings.
# @flag -i --ignore-case                      Ignore case differences between the patterns and the files.
# @flag -I                                    Don’t match the pattern in binary files.
# @option --max-depth <depth>                 For each <pathspec> given on command line, descend at most <depth> levels of directories.
# @flag -r --recursive                        Same as --max-depth=-1; this is the default.
# @flag --no-recursive                        Same as --max-depth=0.
# @flag -w --word-regexp                      Match the pattern only at word boundary (either begin at the beginning of a line, or preceded by a non-word character; end at the end of a line or followed by a non-word character).
# @flag -v --invert-match                     Select non-matching lines.
# @flag -h                                    By default, the command shows the filename for each match.
# @flag -H                                    By default, the command shows the filename for each match.
# @flag --full-name                           When run from a subdirectory, the command usually outputs paths relative to the current directory.
# @flag -E                                    Use POSIX extended/basic regexp for patterns.
# @flag -G                                    Use POSIX extended/basic regexp for patterns.
# @flag --extended-regexp                     Use POSIX extended/basic regexp for patterns.
# @flag --basic-regexp                        Use POSIX extended/basic regexp for patterns.
# @flag -P --perl-regexp                      Use Perl-compatible regular expressions for patterns.
# @flag -F --fixed-strings                    Use fixed strings for patterns (don’t interpret pattern as a regex).
# @flag -n --line-number                      Prefix the line number to matching lines.
# @flag --column                              Prefix the 1-indexed byte-offset of the first match from the start of the matching line.
# @flag -l                                    Instead of showing every matched line, show only the names of files that contain (or do not contain) matches.
# @flag -L                                    Instead of showing every matched line, show only the names of files that contain (or do not contain) matches.
# @flag --files-with-matches                  Instead of showing every matched line, show only the names of files that contain (or do not contain) matches.
# @flag --name-only                           Instead of showing every matched line, show only the names of files that contain (or do not contain) matches.
# @flag --files-without-match                 Instead of showing every matched line, show only the names of files that contain (or do not contain) matches.
# @option -O --open-files-in-pager <pager>    Open the matching files in the pager (not the output of grep).
# @flag -z --null                             Use \0 as the delimiter for pathnames in the output, and print them verbatim.
# @flag -o --only-matching                    Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.
# @flag -c --count                            Instead of showing every matched line, show the number of lines that match.
# @option --color <when>                      Show colored matches.
# @flag --no-color                            Turn off match highlighting, even when the configuration file gives the default to color output.
# @flag --break                               Print an empty line between matches from different files.
# @flag --heading                             Show the filename above the matches in that file instead of at the start of each shown line.
# @flag -p --show-function                    Show the preceding line that contains the function name of the match, unless the matching line is a function name itself.
# @option -A --after-context <num>            Show <num> trailing lines, and place a line containing -- between contiguous groups of matches.
# @option -B --before-context <num>           Show <num> leading lines, and place a line containing -- between contiguous groups of matches.
# @flag -W --function-context                 Show the surrounding text from the previous line containing a function name up to the one before the next function name, effectively showing the whole function in which the match was found.
# @option --threads <num>                     Number of grep worker threads to use.
# @option -f <file>                           Read patterns from <file>, one per line.
# @flag -e                                    The next parameter is the pattern.
# @flag --and*                                Specify how multiple patterns are combined using Boolean expressions.
# @flag --or*                                 Specify how multiple patterns are combined using Boolean expressions.
# @flag --not*                                Specify how multiple patterns are combined using Boolean expressions.
# @flag --all-match                           When giving multiple pattern expressions combined with --or, this flag is specified to limit the match to files that have lines to match all of them.
# @flag -q --quiet                            Do not output matched lines; instead, exit with status 0 when there is a match and with non-zero status when there isn’t.
# @arg pattern!
# @arg pathspec*
grep() {
    :;
}
# }} git grep

# {{ git log
# @cmd Show commit logs
# @flag --follow                                Continue listing the history of a file beyond renames (works only for a single file).
# @option --no-decorate[short|full|auto|no]     Print out the ref names of any commits that are shown.
# @option --decorate[short|full|auto|no]        Print out the ref names of any commits that are shown.
# @option --decorate-refs <pattern>             If no --decorate-refs is given, pretend as if all refs were included.
# @option --decorate-refs-exclude <pattern>     If no --decorate-refs is given, pretend as if all refs were included.
# @flag --source                                Print out the ref name given on the command line by which each commit was reached.
# @flag --mailmap                               Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses.
# @flag --no-mailmap                            Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses.
# @flag --use-mailmap                           Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses.
# @flag --no-use-mailmap                        Use mailmap file to map author and committer names and email addresses to canonical real names and email addresses.
# @flag --full-diff                             Without this flag, git log -p <path>...  shows commits that touch the specified paths, and diffs about the same specified paths.
# @flag --log-size                              Include a line “log size <number>” in the output for each commit, where <number> is the length of that commit’s message in bytes.
# @option -L <<start>,<end>:<file>>             Trace the evolution of the line range given by <start>,<end>, or by the function name regex <funcname>, within the <file>.
# @option --skip <number>                       Skip number commits before starting to show the commit output.
# @option --since <date>                        Show commits more recent than a specific date.
# @option --after <date>                        Show commits more recent than a specific date.
# @option --until <date>                        Show commits older than a specific date.
# @option --before <date>                       Show commits older than a specific date.
# @option --author <pattern>                    Limit the commits output to ones with author/committer header lines that match the specified pattern (regular expression).
# @option --committer <pattern>                 Limit the commits output to ones with author/committer header lines that match the specified pattern (regular expression).
# @option --grep-reflog <pattern>               Limit the commits output to ones with reflog entries that match the specified pattern (regular expression).
# @option --grep <pattern>                      Limit the commits output to ones with log message that matches the specified pattern (regular expression).
# @flag --all-match                             Limit the commits output to ones that match all given --grep, instead of ones that match at least one.
# @flag --invert-grep                           Limit the commits output to ones with log message that do not match the pattern specified with --grep=<pattern>.
# @flag -i --regexp-ignore-case                 Match the regular expression limiting patterns without regard to letter case.
# @flag --basic-regexp                          Consider the limiting patterns to be basic regular expressions; this is the default.
# @flag -E --extended-regexp                    Consider the limiting patterns to be extended regular expressions instead of the default basic regular expressions.
# @flag -F --fixed-strings                      Consider the limiting patterns to be fixed strings (don’t interpret pattern as a regular expression).
# @flag -P --perl-regexp                        Consider the limiting patterns to be Perl-compatible regular expressions.
# @flag --remove-empty                          Stop when a given path disappears from the tree.
# @flag --merges                                Print only merge commits.
# @flag --no-merges                             Do not print commits with more than one parent.
# @option --min-parents <number>                Show only commits which have at least (or at most) that many parent commits.
# @option --max-parents <number>                Show only commits which have at least (or at most) that many parent commits.
# @option --no-min-parents <number>             Show only commits which have at least (or at most) that many parent commits.
# @option --no-max-parents <number>             Show only commits which have at least (or at most) that many parent commits.
# @flag --first-parent                          Follow only the first parent commit upon seeing a merge commit.
# @flag --not                                   Reverses the meaning of the ^ prefix (or lack thereof) for all following revision specifiers, up to the next --not.
# @flag --all                                   Pretend as if all the refs in refs/, along with HEAD, are listed on the command line as <commit>.
# @option --branches <pattern>                  Pretend as if all the refs in refs/heads are listed on the command line as <commit>.
# @option --tags <pattern>                      Pretend as if all the refs in refs/tags are listed on the command line as <commit>.
# @option --remotes <pattern>                   Pretend as if all the refs in refs/remotes are listed on the command line as <commit>.
# @option --glob <glob-pattern>                 Pretend as if all the refs matching shell glob <glob-pattern> are listed on the command line as <commit>.
# @option --exclude <glob-pattern>              Do not include refs matching <glob-pattern> that the next --all, --branches, --tags, --remotes, or --glob would otherwise consider.
# @flag --reflog                                Pretend as if all objects mentioned by reflogs are listed on the command line as <commit>.
# @flag --alternate-refs                        Pretend as if all objects mentioned as ref tips of alternate repositories were listed on the command line.
# @flag --single-worktree                       By default, all working trees will be examined by the following options when there are more than one (see git-worktree(1)): --all, --reflog and --indexed-objects.
# @flag --ignore-missing                        Upon seeing an invalid object name in the input, pretend as if the bad input was not given.
# @flag --bisect                                Pretend as if the bad bisection ref refs/bisect/bad was listed and as if it was followed by --not and the good bisection refs refs/bisect/good-* on the command line.
# @flag --stdin                                 In addition to the <commit> listed on the command line, read them from the standard input.
# @flag --cherry-mark                           Like --cherry-pick (see below) but mark equivalent commits with = rather than omitting them, and inequivalent ones with +.
# @flag --cherry-pick                           Omit any commit that introduces the same change as another commit on the “other side” when the set of commits are limited with symmetric difference.
# @flag --left-only                             List only commits on the respective side of a symmetric difference, i.e.
# @flag --right-only                            List only commits on the respective side of a symmetric difference, i.e.
# @flag --cherry                                A synonym for --right-only --cherry-mark --no-merges; useful to limit the output to the commits on our side and mark those that have been applied to the other side of a forked history with git log --cherry upstream...mybranch, similar to git cherry upstream mybranch.
# @flag -g --walk-reflogs                       Instead of walking the commit ancestry chain, walk reflog entries from the most recent one to older ones.
# @flag --merge                                 After a failed merge, show refs that touch files having a conflict and don’t exist on all heads to merge.
# @flag --boundary                              Output excluded boundary commits.
# @flag --date-order                            Show no parents before all of its children are shown, but otherwise show commits in the commit timestamp order.
# @flag --author-date-order                     Show no parents before all of its children are shown, but otherwise show commits in the author timestamp order.
# @flag --topo-order                            Show no parents before all of its children are shown, and avoid showing commits on multiple lines of history intermixed.
# @flag --reverse                               Output the commits chosen to be shown (see Commit Limiting section above) in reverse order.
# @option --no-walk <sorted|unsorted>           Only show the given commits, but do not traverse their ancestors.
# @flag --do-walk                               Overrides a previous --no-walk.
# @option --pretty <format>                     Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>.
# @option --format <format>                     Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>.
# @flag --abbrev-commit                         Instead of showing the full 40-byte hexadecimal commit object name, show a prefix that names the object uniquely.
# @flag --no-abbrev-commit                      Show the full 40-byte hexadecimal commit object name.
# @flag --oneline                               This is a shorthand for "--pretty=oneline --abbrev-commit" used together.
# @option --encoding <encoding>                 Commit objects record the character encoding used for the log message in their encoding header; this option can be used to tell the command to re-code the commit log message in the encoding preferred by the user.
# @option --expand-tabs <n>                     Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output.
# @option --no-expand-tabs <n>                  Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output.
# @option --notes <ref>                         Show the notes (see git-notes(1)) that annotate the commit, when showing the commit log message.
# @flag --no-notes                              Do not show notes.
# @option --show-notes <ref>                    These options are deprecated.
# @option --standard-notes <ref>                These options are deprecated.
# @option --no-standard-notes <ref>             These options are deprecated.
# @flag --show-signature                        Check the validity of a signed commit object by passing the signature to gpg --verify and show the output.
# @flag --relative-date                         Synonym for --date=relative.
# @option --date <format>                       Only takes effect for dates shown in human-readable format, such as when using --pretty.
# @flag --parents                               Print also the parents of the commit (in the form "commit parent...").
# @flag --children                              Print also the children of the commit (in the form "commit child...").
# @flag --left-right                            Mark which side of a symmetric difference a commit is reachable from.
# @flag --graph                                 Draw a text-based graphical representation of the commit history on the left hand side of the output.
# @option --show-linear-break <barrier>         When --graph is not used, all history branches are flattened which can make it hard to see that the two consecutive commits do not belong to a linear branch.
# @flag -p                                      Generate patch (see section on generating patches).
# @flag -u                                      Generate patch (see section on generating patches).
# @flag --patch                                 Generate patch (see section on generating patches).
# @flag -s --no-patch                           Suppress diff output.
# @option --diff-merges <off|none|on|first-parent|1|separate|m|combined|c|dense-combined|cc>  Specify diff format to be used for merge commits.
# @option --no-diff-merges <off|none|on|first-parent|1|separate|m|combined|c|dense-combined|cc>  Specify diff format to be used for merge commits.
# @flag --combined-all-paths                    This flag causes combined diffs (used for merge commits) to list the name of the file from all parents.
# @option -U --unified <n>                      Generate diffs with <n> lines of context instead of the usual three.
# @option --output <file>                       Output to a specific file instead of stdout.
# @option --output-indicator-new <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-old <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-context <char>     Specify the character used to indicate new, old or context lines in the generated patch.
# @flag --raw                                   For each commit, show a summary of changes using the raw diff format.
# @flag --patch-with-raw                        Synonym for -p --raw.
# @flag -t                                      Show the tree objects in the diff output.
# @flag --indent-heuristic                      Enable the heuristic that shifts diff hunk boundaries to make patches easier to read.
# @flag --no-indent-heuristic                   Disable the indent heuristic.
# @flag --minimal                               Spend extra time to make sure the smallest possible diff is produced.
# @flag --patience                              Generate a diff using the "patience diff" algorithm.
# @flag --histogram                             Generate a diff using the "histogram diff" algorithm.
# @option --anchored <text>                     Generate a diff using the "anchored diff" algorithm.
# @option --diff-algorithm[patience|minimal|histogram|myers]  Choose a diff algorithm.
# @option --stat <<width>[,<name-width>[,<count>]]>  Generate a diffstat.
# @flag --compact-summary                       Output a condensed summary of extended header information such as file creations or deletions ("new" or "gone", optionally "+l" if it’s a symlink) and mode changes ("+x" or "-x" for adding or removing executable bit respectively) in diffstat.
# @flag --numstat                               Similar to --stat, but shows number of added and deleted lines in decimal notation and pathname without abbreviation, to make it more machine friendly.
# @flag --shortstat                             Output only the last line of the --stat format containing total number of modified files, as well as number of added and deleted lines.
# @option -X --dirstat* <param1,param2,>        Output the distribution of relative amount of changes for each sub-directory.
# @flag --cumulative                            Synonym for --dirstat=cumulative
# @option --dirstat-by-file* <param1,param2>    Synonym for --dirstat=files,param1,param2...
# @flag --summary                               Output a condensed summary of extended header information such as creations, renames and mode changes.
# @flag --patch-with-stat                       Synonym for -p --stat.
# @flag -z                                      Separate the commits with NULs instead of with new newlines.
# @flag --name-only                             Show only names of changed files.
# @flag --name-status                           Show only names and status of changed files.
# @option --submodule <format>                  Specify how differences in submodules are shown.
# @option --color <when>                        Show colored diff.
# @flag --no-color                              Turn off colored diff.
# @option --color-moved <mode>                  Moved lines of code are colored differently.
# @flag --no-color-moved                        Turn off move detection.
# @option --color-moved-ws <modes>              This configures how whitespace is ignored when performing the move detection for --color-moved.
# @flag --no-color-moved-ws                     Do not ignore whitespace when performing move detection.
# @option --word-diff <mode>                    Show a word diff, using the <mode> to delimit changed words.
# @option --word-diff-regex <regex>             Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word.
# @option --color-words <regex>                 Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.
# @flag --no-renames                            Turn off rename detection, even when the configuration file gives the default to do so.
# @flag --rename-empty                          Whether to use empty blobs as rename source.
# @flag --no-rename-empty                       Whether to use empty blobs as rename source.
# @flag --check                                 Warn if changes introduce conflict markers or whitespace errors.
# @option --ws-error-highlight <kind>           Highlight whitespace errors in the context, old or new lines of the diff.
# @flag --full-index                            Instead of the first handful of characters, show the full pre- and post-image blob object names on the "index" line when generating patch format output.
# @flag --binary                                In addition to --full-index, output a binary diff that can be applied with git-apply.
# @option --abbrev <n>                          Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object.
# @option -B --break-rewrites <[<n>][/<m>]>     Break complete rewrite changes into pairs of delete and create.
# @option -M --find-renames <n>                 If generating diffs, detect and report renames for each commit.
# @option -C --find-copies <n>                  Detect copies as well as renames.
# @flag --find-copies-harder                    For performance reasons, by default, -C option finds copies only if the original file of the copy was modified in the same changeset.
# @flag -D --irreversible-delete                Omit the preimage for deletes, i.e.
# @option -l <num>                              The -M and -C options involve some preliminary steps that can detect subsets of renames/copies cheaply, followed by an exhaustive fallback portion that compares all remaining unpaired destinations to all relevant sources.
# @option --diff-filter <(A|C|D|M|R|T|U|X|B)...[*]>  Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e.
# @option -S <string>                           Look for differences that change the number of occurrences of the specified string (i.e.
# @option -G <regex>                            Look for differences whose patch text contains added/removed lines that match <regex>.
# @option --find-object <object-id>             Look for differences that change the number of occurrences of the specified object.
# @flag --pickaxe-all                           When -S or -G finds a change, show all the changes in that changeset, not just the files that contain the change in <string>.
# @flag --pickaxe-regex                         Treat the <string> given to -S as an extended POSIX regular expression to match.
# @option -O <orderfile>                        Control the order in which files appear in the output.
# @option --skip-to <file>                      Discard the files before the named <file> from the output (i.e.
# @option --rotate-to <file>                    Discard the files before the named <file> from the output (i.e.
# @flag -R                                      Swap two inputs; that is, show differences from index or on-disk file to tree contents.
# @option --relative <path>                     When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @option --no-relative <path>                  When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @flag -a --text                               Treat all files as text.
# @flag --ignore-cr-at-eol                      Ignore carriage-return at the end of line when doing a comparison.
# @flag --ignore-space-at-eol                   Ignore changes in whitespace at EOL.
# @flag -b --ignore-space-change                Ignore changes in amount of whitespace.
# @flag -w --ignore-all-space                   Ignore whitespace when comparing lines.
# @flag --ignore-blank-lines                    Ignore changes whose lines are all blank.
# @option -I --ignore-matching-lines <regex>    Ignore changes whose all lines match <regex>.
# @option --inter-hunk-context <lines>          Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other.
# @flag -W --function-context                   Show whole function as context lines for each change.
# @flag --ext-diff                              Allow an external diff helper to be executed.
# @flag --no-ext-diff                           Disallow external diff drivers.
# @flag --textconv                              Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @flag --no-textconv                           Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @option --ignore-submodules <when>            Ignore changes to submodules in the diff generation.
# @option --src-prefix <prefix>                 Show the given source prefix instead of "a/".
# @option --dst-prefix <prefix>                 Show the given destination prefix instead of "b/".
# @flag --no-prefix                             Do not show any source or destination prefix.
# @option --line-prefix <prefix>                Prepend an additional prefix to every line of output.
# @flag --ita-invisible-in-index                By default entries added by "git add -N" appear as an existing empty file in "git diff" and a new file in "git diff --cached".
# @arg commit-path*[`_choice_log`]
log() {
    :;
}
# }} git log

# {{ git show
# @cmd Show various types of objects
# @option --pretty <format>                     Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>.
# @option --format <format>                     Pretty-print the contents of the commit logs in a given format, where <format> can be one of oneline, short, medium, full, fuller, reference, email, raw, format:<string> and tformat:<string>.
# @flag --abbrev-commit                         Instead of showing the full 40-byte hexadecimal commit object name, show a prefix that names the object uniquely.
# @flag --no-abbrev-commit                      Show the full 40-byte hexadecimal commit object name.
# @flag --oneline                               This is a shorthand for "--pretty=oneline --abbrev-commit" used together.
# @option --encoding <encoding>                 Commit objects record the character encoding used for the log message in their encoding header; this option can be used to tell the command to re-code the commit log message in the encoding preferred by the user.
# @option --expand-tabs <n>                     Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output.
# @option --no-expand-tabs <n>                  Perform a tab expansion (replace each tab with enough spaces to fill to the next display column that is multiple of <n>) in the log message before showing it in the output.
# @option --notes <ref>                         Show the notes (see git-notes(1)) that annotate the commit, when showing the commit log message.
# @flag --no-notes                              Do not show notes.
# @option --show-notes <ref>                    These options are deprecated.
# @option --standard-notes <ref>                These options are deprecated.
# @option --no-standard-notes <ref>             These options are deprecated.
# @flag --show-signature                        Check the validity of a signed commit object by passing the signature to gpg --verify and show the output.
# @flag -p                                      Generate patch (see section on generating patches).
# @flag -u                                      Generate patch (see section on generating patches).
# @flag --patch                                 Generate patch (see section on generating patches).
# @flag -s --no-patch                           Suppress diff output.
# @option --diff-merges <off|none|on|first-parent|1|separate|m|combined|c|dense-combined|cc>  Specify diff format to be used for merge commits.
# @option --no-diff-merges <off|none|on|first-parent|1|separate|m|combined|c|dense-combined|cc>  Specify diff format to be used for merge commits.
# @flag --combined-all-paths                    This flag causes combined diffs (used for merge commits) to list the name of the file from all parents.
# @option -U --unified <n>                      Generate diffs with <n> lines of context instead of the usual three.
# @option --output <file>                       Output to a specific file instead of stdout.
# @option --output-indicator-new <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-old <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-context <char>     Specify the character used to indicate new, old or context lines in the generated patch.
# @flag --raw                                   For each commit, show a summary of changes using the raw diff format.
# @flag --patch-with-raw                        Synonym for -p --raw.
# @flag -t                                      Show the tree objects in the diff output.
# @flag --indent-heuristic                      Enable the heuristic that shifts diff hunk boundaries to make patches easier to read.
# @flag --no-indent-heuristic                   Disable the indent heuristic.
# @flag --minimal                               Spend extra time to make sure the smallest possible diff is produced.
# @flag --patience                              Generate a diff using the "patience diff" algorithm.
# @flag --histogram                             Generate a diff using the "histogram diff" algorithm.
# @option --anchored <text>                     Generate a diff using the "anchored diff" algorithm.
# @option --diff-algorithm[patience|minimal|histogram|myers]  Choose a diff algorithm.
# @option --stat <<width>[,<name-width>[,<count>]]>  Generate a diffstat.
# @flag --compact-summary                       Output a condensed summary of extended header information such as file creations or deletions ("new" or "gone", optionally "+l" if it’s a symlink) and mode changes ("+x" or "-x" for adding or removing executable bit respectively) in diffstat.
# @flag --numstat                               Similar to --stat, but shows number of added and deleted lines in decimal notation and pathname without abbreviation, to make it more machine friendly.
# @flag --shortstat                             Output only the last line of the --stat format containing total number of modified files, as well as number of added and deleted lines.
# @option -X --dirstat* <param1,param2,>        Output the distribution of relative amount of changes for each sub-directory.
# @flag --cumulative                            Synonym for --dirstat=cumulative
# @option --dirstat-by-file* <param1,param2>    Synonym for --dirstat=files,param1,param2...
# @flag --summary                               Output a condensed summary of extended header information such as creations, renames and mode changes.
# @flag --patch-with-stat                       Synonym for -p --stat.
# @flag -z                                      Separate the commits with NULs instead of with new newlines.
# @flag --name-only                             Show only names of changed files.
# @flag --name-status                           Show only names and status of changed files.
# @option --submodule <format>                  Specify how differences in submodules are shown.
# @option --color <when>                        Show colored diff.
# @flag --no-color                              Turn off colored diff.
# @option --color-moved <mode>                  Moved lines of code are colored differently.
# @flag --no-color-moved                        Turn off move detection.
# @option --color-moved-ws <modes>              This configures how whitespace is ignored when performing the move detection for --color-moved.
# @flag --no-color-moved-ws                     Do not ignore whitespace when performing move detection.
# @option --word-diff <mode>                    Show a word diff, using the <mode> to delimit changed words.
# @option --word-diff-regex <regex>             Use <regex> to decide what a word is, instead of considering runs of non-whitespace to be a word.
# @option --color-words <regex>                 Equivalent to --word-diff=color plus (if a regex was specified) --word-diff-regex=<regex>.
# @flag --no-renames                            Turn off rename detection, even when the configuration file gives the default to do so.
# @flag --rename-empty                          Whether to use empty blobs as rename source.
# @flag --no-rename-empty                       Whether to use empty blobs as rename source.
# @flag --check                                 Warn if changes introduce conflict markers or whitespace errors.
# @option --ws-error-highlight <kind>           Highlight whitespace errors in the context, old or new lines of the diff.
# @flag --full-index                            Instead of the first handful of characters, show the full pre- and post-image blob object names on the "index" line when generating patch format output.
# @flag --binary                                In addition to --full-index, output a binary diff that can be applied with git-apply.
# @option --abbrev <n>                          Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object.
# @option -B --break-rewrites <[<n>][/<m>]>     Break complete rewrite changes into pairs of delete and create.
# @option -M --find-renames <n>                 If generating diffs, detect and report renames for each commit.
# @option -C --find-copies <n>                  Detect copies as well as renames.
# @flag --find-copies-harder                    For performance reasons, by default, -C option finds copies only if the original file of the copy was modified in the same changeset.
# @flag -D --irreversible-delete                Omit the preimage for deletes, i.e.
# @option -l <num>                              The -M and -C options involve some preliminary steps that can detect subsets of renames/copies cheaply, followed by an exhaustive fallback portion that compares all remaining unpaired destinations to all relevant sources.
# @option --diff-filter <(A|C|D|M|R|T|U|X|B)...[*]>  Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e.
# @option -S <string>                           Look for differences that change the number of occurrences of the specified string (i.e.
# @option -G <regex>                            Look for differences whose patch text contains added/removed lines that match <regex>.
# @option --find-object <object-id>             Look for differences that change the number of occurrences of the specified object.
# @flag --pickaxe-all                           When -S or -G finds a change, show all the changes in that changeset, not just the files that contain the change in <string>.
# @flag --pickaxe-regex                         Treat the <string> given to -S as an extended POSIX regular expression to match.
# @option -O <orderfile>                        Control the order in which files appear in the output.
# @option --skip-to <file>                      Discard the files before the named <file> from the output (i.e.
# @option --rotate-to <file>                    Discard the files before the named <file> from the output (i.e.
# @flag -R                                      Swap two inputs; that is, show differences from index or on-disk file to tree contents.
# @option --relative <path>                     When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @option --no-relative <path>                  When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @flag -a --text                               Treat all files as text.
# @flag --ignore-cr-at-eol                      Ignore carriage-return at the end of line when doing a comparison.
# @flag --ignore-space-at-eol                   Ignore changes in whitespace at EOL.
# @flag -b --ignore-space-change                Ignore changes in amount of whitespace.
# @flag -w --ignore-all-space                   Ignore whitespace when comparing lines.
# @flag --ignore-blank-lines                    Ignore changes whose lines are all blank.
# @option -I --ignore-matching-lines <regex>    Ignore changes whose all lines match <regex>.
# @option --inter-hunk-context <lines>          Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other.
# @flag -W --function-context                   Show whole function as context lines for each change.
# @flag --ext-diff                              Allow an external diff helper to be executed.
# @flag --no-ext-diff                           Disallow external diff drivers.
# @flag --textconv                              Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @flag --no-textconv                           Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @option --ignore-submodules <when>            Ignore changes to submodules in the diff generation.
# @option --src-prefix <prefix>                 Show the given source prefix instead of "a/".
# @option --dst-prefix <prefix>                 Show the given destination prefix instead of "b/".
# @flag --no-prefix                             Do not show any source or destination prefix.
# @option --line-prefix <prefix>                Prepend an additional prefix to every line of output.
# @flag --ita-invisible-in-index                By default entries added by "git add -N" appear as an existing empty file in "git diff" and a new file in "git diff --cached".
# @arg commit-path*[`_choice_show`]
show() {
    :;
}
# }} git show

# {{ git status
# @cmd Show the working tree status
# @flag -s --short                       Give the output in the short-format.
# @flag -b --branch                      Show the branch and tracking info even in short-format.
# @flag --show-stash                     Show the number of entries currently stashed away.
# @option --porcelain <version>          Give the output in an easy-to-parse format for scripts.
# @flag --long                           Give the output in the long-format.
# @flag -v --verbose                     In addition to the names of files that have been changed, also show the textual changes that are staged to be committed (i.e., like the output of git diff --cached).
# @option -u --untracked-files <mode>    Show untracked files.
# @option --ignore-submodules <when>     Ignore changes to submodules when looking for changes.
# @option --ignored <mode>               Show ignored files as well.
# @flag -z                               Terminate entries with NUL, instead of LF.
# @option --column <options>             Display untracked files in columns.
# @option --no-column <options>          Display untracked files in columns.
# @flag --ahead-behind                   Display or do not display detailed ahead/behind counts for the branch relative to its upstream branch.
# @flag --no-ahead-behind                Display or do not display detailed ahead/behind counts for the branch relative to its upstream branch.
# @flag --renames                        Turn on/off rename detection regardless of user configuration.
# @flag --no-renames                     Turn on/off rename detection regardless of user configuration.
# @option --find-renames <n>             Turn on rename detection, optionally setting the similarity threshold.
# @arg pathspec*
status() {
    :;
}
# }} git status

# {{ git commit
# @cmd Record changes to the repository
# @flag -a --all                                 Tell the command to automatically stage files that have been modified and deleted, but new files you have not told Git about are not affected.
# @flag -p --patch                               Use the interactive patch selection interface to choose which changes to commit.
# @option -C --reuse-message <commit>            Take an existing commit object, and reuse the log message and the authorship information (including the timestamp) when creating the commit.
# @option -c --reedit-message <commit>           Like -C, but with -c the editor is invoked, so that the user can further edit the commit message.
# @option --fixup <[(amend|reword):]<commit>>    Create a new commit which "fixes up" <commit> when applied with git rebase --autosquash.
# @option --squash <commit>                      Construct a commit message for use with rebase --autosquash.
# @flag --reset-author                           When used with -C/-c/--amend options, or when committing after a conflicting cherry-pick, declare that the authorship of the resulting commit now belongs to the committer.
# @flag --short                                  When doing a dry-run, give the output in the short-format.
# @flag --branch                                 Show the branch and tracking info even in short-format.
# @flag --porcelain                              When doing a dry-run, give the output in a porcelain-ready format.
# @flag --long                                   When doing a dry-run, give the output in the long-format.
# @flag -z --null                                When showing short or porcelain status output, print the filename verbatim and terminate the entries with NUL, instead of LF.
# @option -F --file <file>                       Take the commit message from the given file.
# @option --author <author>                      Override the commit author.
# @option --date <date>                          Override the author date used in the commit.
# @option -m --message <msg>                     Use the given <msg> as the commit message.
# @option -t --template <file>                   When editing the commit message, start the editor with the contents in the given file.
# @flag -s                                       Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag --signoff                                Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag --no-signoff                             Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @option --trailer <<token>[(=|:)<value>]>      Specify a (<token>, <value>) pair that should be applied as a trailer.
# @flag -n                                       By default, the pre-commit and commit-msg hooks are run.
# @flag --verify                                 By default, the pre-commit and commit-msg hooks are run.
# @flag --no-verify                              By default, the pre-commit and commit-msg hooks are run.
# @flag --allow-empty                            Usually recording a commit that has the exact same tree as its sole parent commit is a mistake, and the command prevents you from making such a commit.
# @flag --allow-empty-message                    Like --allow-empty this command is primarily for use by foreign SCM interface scripts.
# @option --cleanup <mode>                       This option determines how the supplied commit message should be cleaned up before committing.
# @flag -e --edit                                The message taken from file with -F, command line with -m, and from commit object with -C are usually used as the commit log message unmodified.
# @flag --no-edit                                Use the selected commit message without launching an editor.
# @flag --amend                                  Replace the tip of the current branch by creating a new commit.
# @flag --no-post-rewrite                        Bypass the post-rewrite hook.
# @flag -i --include                             Before making a commit out of staged contents so far, stage the contents of paths given on the command line as well.
# @flag -o --only                                Make a commit by taking the updated working tree contents of the paths specified on the command line, disregarding any contents that have been staged for other paths.
# @option --pathspec-from-file <file>            Pathspec is passed in <file> instead of commandline args.
# @flag --pathspec-file-nul                      Only meaningful with --pathspec-from-file.
# @option -u --untracked-files <mode>            Show untracked files.
# @flag -v --verbose                             Show unified diff between the HEAD commit and what would be committed at the bottom of the commit message template to help the user describe the commit by reminding what changes the commit has.
# @flag -q --quiet                               Suppress commit summary message.
# @flag --dry-run                                Do not create a commit, but show a list of paths that are to be committed, paths with local changes that will be left uncommitted and paths that are untracked.
# @flag --status                                 Include the output of git-status(1) in the commit message template when using an editor to prepare the commit message.
# @flag --no-status                              Do not include the output of git-status(1) in the commit message template when using an editor to prepare the default commit message.
# @option -S <keyid>                             GPG-sign commits.
# @option --gpg-sign <keyid>                     GPG-sign commits.
# @option --no-gpg-sign <keyid>                  GPG-sign commits.
# @arg pathspec*
commit() {
    :;
}
# }} git commit

# {{ git merge
# @cmd Join two or more development histories together
# @flag --commit                           Perform the merge and commit the result.
# @flag --no-commit                        Perform the merge and commit the result.
# @flag -e                                 Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @flag --edit                             Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @flag --no-edit                          Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @option --cleanup <mode>                 This option determines how the merge message will be cleaned up before committing.
# @flag --ff                               Specifies how a merge is handled when the merged-in history is already a descendant of the current history.
# @flag --no-ff                            Specifies how a merge is handled when the merged-in history is already a descendant of the current history.
# @flag --ff-only                          Specifies how a merge is handled when the merged-in history is already a descendant of the current history.
# @option -S <keyid>                       GPG-sign the resulting merge commit.
# @option --gpg-sign <keyid>               GPG-sign the resulting merge commit.
# @option --no-gpg-sign <keyid>            GPG-sign the resulting merge commit.
# @option --log <n>                        In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged.
# @option --no-log <n>                     In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged.
# @flag --signoff                          Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag --no-signoff                       Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag -n                                 Show a diffstat at the end of the merge.
# @flag --stat                             Show a diffstat at the end of the merge.
# @flag --no-stat                          Show a diffstat at the end of the merge.
# @flag --squash                           Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit).
# @flag --no-squash                        Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit).
# @flag --verify                           By default, the pre-merge and commit-msg hooks are run.
# @flag --no-verify                        By default, the pre-merge and commit-msg hooks are run.
# @option -s --strategy <strategy>         Use the given merge strategy; can be supplied more than once to specify them in the order they should be tried.
# @option -X --strategy-option <option>    Pass merge strategy specific option through to the merge strategy.
# @flag --verify-signatures                Verify that the tip commit of the side branch being merged is signed with a valid key, i.e.
# @flag --no-verify-signatures             Verify that the tip commit of the side branch being merged is signed with a valid key, i.e.
# @flag --summary                          Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.
# @flag --no-summary                       Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.
# @flag -q --quiet                         Operate quietly.
# @flag -v --verbose                       Be verbose.
# @flag --progress                         Turn progress on/off explicitly.
# @flag --no-progress                      Turn progress on/off explicitly.
# @flag --autostash                        Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends.
# @flag --no-autostash                     Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends.
# @flag --allow-unrelated-histories        By default, git merge command refuses to merge histories that do not share a common ancestor.
# @option -m <msg>                         Set the commit message to be used for the merge commit (in case one is created).
# @option -F --file <file>                 Read the commit message to be used for the merge commit (in case one is created).
# @flag --rerere-autoupdate                Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --no-rerere-autoupdate             Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --overwrite-ignore                 Silently overwrite ignored files from the merge result.
# @flag --no-overwrite-ignore              Silently overwrite ignored files from the merge result.
# @flag --abort                            Abort the current conflict resolution process, and try to reconstruct the pre-merge state.
# @flag --quit                             Forget about the current merge in progress.
# @flag --continue                         After a git merge stops due to conflicts you can conclude the merge by running git merge --continue (see "HOW TO RESOLVE CONFLICTS" section below).
# @arg commit*[`_choice_branch`]
merge() {
    :;
}
# }} git merge

# {{ git rebase
# @cmd Reapply commits on top of another base tip
# @option --onto <newbase>                 Starting point at which to create the new commits.
# @flag --keep-base                        Set the starting point at which to create the new commits to the merge base of <upstream> <branch>.
# @flag --continue                         Restart the rebasing process after having resolved a merge conflict.
# @flag --abort                            Abort the rebase operation and reset HEAD to the original branch.
# @flag --quit                             Abort the rebase operation but HEAD is not reset back to the original branch.
# @flag --apply                            Use applying strategies to rebase (calling git-am internally).
# @option --empty[drop|keep|ask]           How to handle commits that are not empty to start and are not clean cherry-picks of any upstream commit, but which become empty after rebasing (because they contain a subset of already upstream changes).
# @flag --no-keep-empty                    Do not keep commits that start empty before the rebase (i.e.
# @flag --keep-empty                       Do not keep commits that start empty before the rebase (i.e.
# @flag --reapply-cherry-picks             Reapply all clean cherry-picks of any upstream commit instead of preemptively dropping them.
# @flag --no-reapply-cherry-picks          Reapply all clean cherry-picks of any upstream commit instead of preemptively dropping them.
# @flag --allow-empty-message              No-op.
# @flag --skip                             Restart the rebasing process by skipping the current patch.
# @flag --edit-todo                        Edit the todo list during an interactive rebase.
# @flag --show-current-patch               Show the current patch in an interactive rebase or when rebase is stopped because of conflicts.
# @flag -m --merge                         Using merging strategies to rebase (default).
# @option -s --strategy <strategy>         Use the given merge strategy, instead of the default ort.
# @option -X --strategy-option <strategy-option>  Pass the <strategy-option> through to the merge strategy.
# @flag --rerere-autoupdate                Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --no-rerere-autoupdate             Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @option -S <keyid>                       GPG-sign commits.
# @option --gpg-sign <keyid>               GPG-sign commits.
# @option --no-gpg-sign <keyid>            GPG-sign commits.
# @flag -q --quiet                         Be quiet.
# @flag -v --verbose                       Be verbose.
# @flag --stat                             Show a diffstat of what changed upstream since the last rebase.
# @flag -n --no-stat                       Do not show a diffstat as part of the rebase process.
# @flag --no-verify                        This option bypasses the pre-rebase hook.
# @flag --verify                           Allows the pre-rebase hook to run, which is the default.
# @option -C <n>                           Ensure at least <n> lines of surrounding context match before and after each change.
# @flag -f                                 Individually replay all rebased commits instead of fast-forwarding over the unchanged ones.
# @flag --no-ff                            Individually replay all rebased commits instead of fast-forwarding over the unchanged ones.
# @flag --force-rebase                     Individually replay all rebased commits instead of fast-forwarding over the unchanged ones.
# @flag --fork-point                       Use reflog to find a better common ancestor between <upstream> and <branch> when calculating which commits have been introduced by <branch>.
# @flag --no-fork-point                    Use reflog to find a better common ancestor between <upstream> and <branch> when calculating which commits have been introduced by <branch>.
# @flag --ignore-whitespace                Ignore whitespace differences when trying to reconcile differences.
# @option --whitespace <option>            This flag is passed to the git apply program (see git-apply(1)) that applies the patch.
# @flag --committer-date-is-author-date    Instead of using the current time as the committer date, use the author date of the commit being rebased as the committer date.
# @flag --ignore-date                      Instead of using the author date of the original commit, use the current time as the author date of the rebased commit.
# @flag --reset-author-date                Instead of using the author date of the original commit, use the current time as the author date of the rebased commit.
# @flag --signoff                          Add a Signed-off-by trailer to all the rebased commits.
# @flag -i --interactive                   Make a list of the commits which are about to be rebased.
# @option -r --rebase-merges <rebase-cousins|no-rebase-cousins>  By default, a rebase will simply drop merge commits from the todo list, and put the rebased commits into a single, linear branch.
# @option -x --exec <cmd>                  Append "exec <cmd>" after each line creating a commit in the final history.
# @flag --root                             Rebase all commits reachable from <branch>, instead of limiting them with an <upstream>.
# @flag --autosquash                       When the commit log message begins with "squash! ..." or "fixup! ..." or "amend! ...", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively.
# @flag --no-autosquash                    When the commit log message begins with "squash! ..." or "fixup! ..." or "amend! ...", and there is already a commit in the todo list that matches the same ..., automatically modify the todo list of rebase -i, so that the commit marked for squashing comes right after the commit to be modified, and change the action of the moved commit from pick to squash or fixup or fixup -C respectively.
# @flag --autostash                        Automatically create a temporary stash entry before the operation begins, and apply it after the operation ends.
# @flag --no-autostash                     Automatically create a temporary stash entry before the operation begins, and apply it after the operation ends.
# @flag --reschedule-failed-exec           Automatically reschedule exec commands that failed.
# @flag --no-reschedule-failed-exec        Automatically reschedule exec commands that failed.
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
# @option -c --create <new-branch>          Create a new branch named <new-branch> starting at <start-point> before switching to the branch.
# @option -C --force-create <new-branch>    Similar to --create except that if <new-branch> already exists, it will be reset to <start-point>.
# @flag -d --detach                         Switch to a commit for inspection and discardable experiments.
# @flag --guess                             If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to
# @flag --no-guess                          If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to
# @flag -f --force                          An alias for --discard-changes.
# @flag --discard-changes                   Proceed even if the index or the working tree differs from HEAD.
# @flag -m --merge                          If you have local modifications to one or more files that are different between the current branch and the branch to which you are switching, the command refuses to switch branches in order to preserve your modifications in context.
# @option --conflict <style>                The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable.
# @flag -q --quiet                          Quiet, suppress feedback messages.
# @flag --progress                          Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag --no-progress                       Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag -t --track                          When creating a new branch, set up "upstream" configuration.
# @flag --no-track                          Do not set up "upstream" configuration, even if the branch.autoSetupMerge configuration variable is true.
# @option --orphan <new-branch>             Create a new orphan branch, named <new-branch>.
# @flag --ignore-other-worktrees            git switch refuses when the wanted ref is already checked out by another worktree.
# @flag --recurse-submodules                Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject.
# @flag --no-recurse-submodules             Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject.
# @arg branch![`_choice_branch`]
switch() {
    :;
}
# }} git switch

# {{ git fetch
# @cmd Download objects and refs from another repository
# @flag --all                                Fetch all remotes.
# @flag -a --append                          Append ref names and object names of fetched refs to the existing contents of .git/FETCH_HEAD.
# @flag --atomic                             Use an atomic transaction to update local refs.
# @option --depth <depth>                    Limit fetching to the specified number of commits from the tip of each remote branch history.
# @option --deepen <depth>                   Similar to --depth, except it specifies the number of commits from the current shallow boundary instead of from the tip of each remote branch history.
# @option --shallow-since <date>             Deepen or shorten the history of a shallow repository to include all reachable commits after <date>.
# @option --shallow-exclude <revision>       Deepen or shorten the history of a shallow repository to exclude commits reachable from a specified remote branch or tag.
# @flag --unshallow                          If the source repository is complete, convert a shallow repository to a complete one, removing all the limitations imposed by shallow repositories.
# @flag --update-shallow                     By default when fetching from a shallow repository, git fetch refuses refs that require updating .git/shallow.
# @option --negotiation-tip <commit|glob>    By default, Git will report, to the server, commits reachable from all local refs to find common commits in an attempt to reduce the size of the to-be-received packfile.
# @flag --negotiate-only                     Do not fetch anything from the server, and instead print the ancestors of the provided --negotiation-tip=* arguments, which we have in common with the server.
# @flag --dry-run                            Show what would be done, without making any changes.
# @flag --write-fetch-head                   Write the list of remote refs fetched in the FETCH_HEAD file directly under $GIT_DIR.
# @flag --no-write-fetch-head                Write the list of remote refs fetched in the FETCH_HEAD file directly under $GIT_DIR.
# @flag -f --force                           When git fetch is used with <src>:<dst> refspec it may refuse to update the local branch as discussed in the <refspec> part below.
# @flag -k --keep                            Keep downloaded pack.
# @flag --multiple                           Allow several <repository> and <group> arguments to be specified.
# @flag --auto-maintenance                   Run git maintenance run --auto at the end to perform automatic repository maintenance if needed.
# @flag --no-auto-maintenance                Run git maintenance run --auto at the end to perform automatic repository maintenance if needed.
# @flag --auto-gc                            Run git maintenance run --auto at the end to perform automatic repository maintenance if needed.
# @flag --no-auto-gc                         Run git maintenance run --auto at the end to perform automatic repository maintenance if needed.
# @flag --write-commit-graph                 Write a commit-graph after fetching.
# @flag --no-write-commit-graph              Write a commit-graph after fetching.
# @flag --prefetch                           Modify the configured refspec to place all refs into the refs/prefetch/ namespace.
# @flag -p --prune                           Before fetching, remove any remote-tracking references that no longer exist on the remote.
# @flag -P --prune-tags                      Before fetching, remove any local tags that no longer exist on the remote if --prune is enabled.
# @flag -n --no-tags                         By default, tags that point at objects that are downloaded from the remote repository are fetched and stored locally.
# @option --refmap <refspec>                 When fetching refs listed on the command line, use the specified refspec (can be given more than once) to map the refs to remote-tracking branches, instead of the values of remote.*.fetch configuration variables for the remote repository.
# @flag -t --tags                            Fetch all tags from the remote (i.e., fetch remote tags refs/tags/* into local tags with the same name), in addition to whatever else would otherwise be fetched.
# @option --recurse-submodules[yes|on-demand|no]  This option controls if and under what conditions new commits of populated submodules should be fetched too.
# @option -j --jobs <n>                      Number of parallel children to be used for all forms of fetching.
# @flag --no-recurse-submodules              Disable recursive fetching of submodules (this has the same effect as using the --recurse-submodules=no option).
# @flag --set-upstream                       If the remote is fetched successfully, add upstream (tracking) reference, used by argument-less git-pull(1) and other commands.
# @option --submodule-prefix <path>          Prepend <path> to paths printed in informative messages such as "Fetching submodule foo".
# @option --recurse-submodules-default <yes|on-demand>  This option is used internally to temporarily provide a non-negative default value for the --recurse-submodules option.
# @flag -u --update-head-ok                  By default git fetch refuses to update the head which corresponds to the current branch.
# @option --upload-pack <upload-pack>        When given, and the repository to fetch from is handled by git fetch-pack, --exec=<upload-pack> is passed to the command to specify non-default path for the command run on the other end.
# @flag -q --quiet                           Pass --quiet to git-fetch-pack and silence any other internally used git commands.
# @flag -v --verbose                         Be verbose.
# @flag --progress                           Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified.
# @option -o --server-option <option>        Transmit the given string to the server when communicating using protocol version 2.
# @flag --show-forced-updates                By default, git checks if a branch is force-updated during fetch.
# @flag --no-show-forced-updates             By default, git checks if a branch is force-updated during fetch.
# @flag -4 --ipv4                            Use IPv4 addresses only, ignoring IPv6 addresses.
# @flag -6 --ipv6                            Use IPv6 addresses only, ignoring IPv4 addresses.
# @flag --stdin                              Read refspecs, one per line, from stdin in addition to those provided as arguments.
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_branch`]
fetch() {
    :;
}
# }} git fetch

# {{ git pull
# @cmd Fetch from and integrate with another repository or a local branch
# @flag -q --quiet                           This is passed to both underlying git-fetch to squelch reporting of during transfer, and underlying git-merge to squelch output during merging.
# @flag -v --verbose                         Pass --verbose to git-fetch and git-merge.
# @option --recurse-submodules[yes|on-demand|no]  This option controls if new commits of populated submodules should be fetched, and if the working trees of active submodules should be updated, too (see git-fetch(1), git-config(1) and gitmodules(5)).
# @option --no-recurse-submodules[yes|on-demand|no]  This option controls if new commits of populated submodules should be fetched, and if the working trees of active submodules should be updated, too (see git-fetch(1), git-config(1) and gitmodules(5)).
# @flag --commit                             Perform the merge and commit the result.
# @flag --no-commit                          Perform the merge and commit the result.
# @flag -e                                   Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @flag --edit                               Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @flag --no-edit                            Invoke an editor before committing successful mechanical merge to further edit the auto-generated merge message, so that the user can explain and justify the merge.
# @option --cleanup <mode>                   This option determines how the merge message will be cleaned up before committing.
# @flag --ff-only                            Only update to the new history if there is no divergent local history.
# @flag --ff                                 When merging rather than rebasing, specifies how a merge is handled when the merged-in history is already a descendant of the current history.
# @flag --no-ff                              When merging rather than rebasing, specifies how a merge is handled when the merged-in history is already a descendant of the current history.
# @option -S <keyid>                         GPG-sign the resulting merge commit.
# @option --gpg-sign <keyid>                 GPG-sign the resulting merge commit.
# @option --no-gpg-sign <keyid>              GPG-sign the resulting merge commit.
# @option --log <n>                          In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged.
# @option --no-log <n>                       In addition to branch names, populate the log message with one-line descriptions from at most <n> actual commits that are being merged.
# @flag --signoff                            Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag --no-signoff                         Add a Signed-off-by trailer by the committer at the end of the commit log message.
# @flag -n                                   Show a diffstat at the end of the merge.
# @flag --stat                               Show a diffstat at the end of the merge.
# @flag --no-stat                            Show a diffstat at the end of the merge.
# @flag --squash                             Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit).
# @flag --no-squash                          Produce the working tree and index state as if a real merge happened (except for the merge information), but do not actually make a commit, move the HEAD, or record $GIT_DIR/MERGE_HEAD (to cause the next git commit command to create a merge commit).
# @flag --verify                             By default, the pre-merge and commit-msg hooks are run.
# @flag --no-verify                          By default, the pre-merge and commit-msg hooks are run.
# @option -s --strategy <strategy>           Use the given merge strategy; can be supplied more than once to specify them in the order they should be tried.
# @option -X --strategy-option <option>      Pass merge strategy specific option through to the merge strategy.
# @flag --verify-signatures                  Verify that the tip commit of the side branch being merged is signed with a valid key, i.e.
# @flag --no-verify-signatures               Verify that the tip commit of the side branch being merged is signed with a valid key, i.e.
# @flag --summary                            Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.
# @flag --no-summary                         Synonyms to --stat and --no-stat; these are deprecated and will be removed in the future.
# @flag --autostash                          Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends.
# @flag --no-autostash                       Automatically create a temporary stash entry before the operation begins, record it in the special ref MERGE_AUTOSTASH and apply it after the operation ends.
# @flag --allow-unrelated-histories          By default, git merge command refuses to merge histories that do not share a common ancestor.
# @option -r --rebase[false|true|merges|interactive]  When true, rebase the current branch on top of the upstream branch after fetching.
# @flag --no-rebase                          This is shorthand for --rebase=false.
# @flag --all                                Fetch all remotes.
# @flag -a --append                          Append ref names and object names of fetched refs to the existing contents of .git/FETCH_HEAD.
# @flag --atomic                             Use an atomic transaction to update local refs.
# @option --depth <depth>                    Limit fetching to the specified number of commits from the tip of each remote branch history.
# @option --deepen <depth>                   Similar to --depth, except it specifies the number of commits from the current shallow boundary instead of from the tip of each remote branch history.
# @option --shallow-since <date>             Deepen or shorten the history of a shallow repository to include all reachable commits after <date>.
# @option --shallow-exclude <revision>       Deepen or shorten the history of a shallow repository to exclude commits reachable from a specified remote branch or tag.
# @flag --unshallow                          If the source repository is complete, convert a shallow repository to a complete one, removing all the limitations imposed by shallow repositories.
# @flag --update-shallow                     By default when fetching from a shallow repository, git fetch refuses refs that require updating .git/shallow.
# @option --negotiation-tip <commit|glob>    By default, Git will report, to the server, commits reachable from all local refs to find common commits in an attempt to reduce the size of the to-be-received packfile.
# @flag --negotiate-only                     Do not fetch anything from the server, and instead print the ancestors of the provided --negotiation-tip=* arguments, which we have in common with the server.
# @flag --dry-run                            Show what would be done, without making any changes.
# @flag -f --force                           When git fetch is used with <src>:<dst> refspec it may refuse to update the local branch as discussed in the <refspec> part of the git-fetch(1) documentation.
# @flag -k --keep                            Keep downloaded pack.
# @flag --prefetch                           Modify the configured refspec to place all refs into the refs/prefetch/ namespace.
# @flag -p --prune                           Before fetching, remove any remote-tracking references that no longer exist on the remote.
# @flag --no-tags                            By default, tags that point at objects that are downloaded from the remote repository are fetched and stored locally.
# @option --refmap <refspec>                 When fetching refs listed on the command line, use the specified refspec (can be given more than once) to map the refs to remote-tracking branches, instead of the values of remote.*.fetch configuration variables for the remote repository.
# @flag -t --tags                            Fetch all tags from the remote (i.e., fetch remote tags refs/tags/* into local tags with the same name), in addition to whatever else would otherwise be fetched.
# @option -j --jobs <n>                      Number of parallel children to be used for all forms of fetching.
# @flag --set-upstream                       If the remote is fetched successfully, add upstream (tracking) reference, used by argument-less git-pull(1) and other commands.
# @option --upload-pack <upload-pack>        When given, and the repository to fetch from is handled by git fetch-pack, --exec=<upload-pack> is passed to the command to specify non-default path for the command run on the other end.
# @flag --progress                           Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified.
# @option -o --server-option <option>        Transmit the given string to the server when communicating using protocol version 2.
# @flag --show-forced-updates                By default, git checks if a branch is force-updated during fetch.
# @flag --no-show-forced-updates             By default, git checks if a branch is force-updated during fetch.
# @flag -4 --ipv4                            Use IPv4 addresses only, ignoring IPv6 addresses.
# @flag -6 --ipv6                            Use IPv6 addresses only, ignoring IPv4 addresses.
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_branch`]
pull() {
    :;
}
# }} git pull

# {{ git push
# @cmd Update remote refs along with associated objects
# @flag --all                                  Push all branches (i.e.
# @flag --prune                                Remove remote branches that don’t have a local counterpart.
# @flag --mirror                               Instead of naming each ref to push, specifies that all refs under refs/ (which includes but is not limited to refs/heads/, refs/remotes/, and refs/tags/) be mirrored to the remote repository.
# @flag -n --dry-run                           Do everything except actually send the updates.
# @flag --porcelain                            Produce machine-readable output.
# @flag -d --delete                            All listed refs are deleted from the remote repository.
# @flag --tags                                 All refs under refs/tags are pushed, in addition to refspecs explicitly listed on the command line.
# @flag --follow-tags                          Push all the refs that would be pushed without this option, and also push annotated tags in refs/tags that are missing from the remote but are pointing at commit-ish that are reachable from the refs being pushed.
# @option --no-signed[true|false|if-asked]     GPG-sign the push request to update refs on the receiving side, to allow it to be checked by the hooks and/or be logged.
# @option --signed[true|false|if-asked]        GPG-sign the push request to update refs on the receiving side, to allow it to be checked by the hooks and/or be logged.
# @flag --atomic                               Use an atomic transaction on the remote side if available.
# @flag --no-atomic                            Use an atomic transaction on the remote side if available.
# @option -o --push-option <option>            Transmit the given string to the server, which passes them to the pre-receive as well as the post-receive hook.
# @option --receive-pack <git-receive-pack>    Path to the git-receive-pack program on the remote end.
# @option --exec <git-receive-pack>            Path to the git-receive-pack program on the remote end.
# @option --no-force-with-lease <<refname>:<expect>>  Usually, "git push" refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it.
# @option --force-with-lease <<refname>:<expect>>  Usually, "git push" refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it.
# @flag -f --force                             Usually, the command refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it.
# @flag --force-if-includes                    Force an update only if the tip of the remote-tracking ref has been integrated locally.
# @flag --no-force-if-includes                 Force an update only if the tip of the remote-tracking ref has been integrated locally.
# @option --repo <repository>                  This option is equivalent to the <repository> argument.
# @flag -u --set-upstream                      For every branch that is up to date or successfully pushed, add upstream (tracking) reference, used by argument-less git-pull(1) and other commands.
# @flag --thin                                 These options are passed to git-send-pack(1).
# @flag --no-thin                              These options are passed to git-send-pack(1).
# @flag -q --quiet                             Suppress all output, including the listing of updated refs, unless an error occurs.
# @flag -v --verbose                           Run verbosely.
# @flag --progress                             Progress status is reported on the standard error stream by default when it is attached to a terminal, unless -q is specified.
# @option --no-recurse-submodules[check|on-demand|only|no]  May be used to make sure all submodule commits used by the revisions to be pushed are available on a remote-tracking branch.
# @option --recurse-submodules[check|on-demand|only|no]  May be used to make sure all submodule commits used by the revisions to be pushed are available on a remote-tracking branch.
# @flag --verify                               Toggle the pre-push hook (see githooks(5)).
# @flag --no-verify                            Toggle the pre-push hook (see githooks(5)).
# @flag -4 --ipv4                              Use IPv4 addresses only, ignoring IPv6 addresses.
# @flag -6 --ipv6                              Use IPv6 addresses only, ignoring IPv4 addresses.
# @arg remote![`_choice_remote`]
# @arg refspec+[`_choice_push`]
push() {
    :;
}
# }} git push

# {{ git am
# @cmd Apply a series of patches from a mailbox
# @flag -s --signoff                         Add a Signed-off-by trailer to the commit message, using the committer identity of yourself.
# @flag -k --keep                            Pass -k flag to git mailinfo (see git-mailinfo(1)).
# @flag --keep-non-patch                     Pass -b flag to git mailinfo (see git-mailinfo(1)).
# @flag --keep-cr                            With --keep-cr, call git mailsplit (see git-mailsplit(1)) with the same option, to prevent it from stripping CR at the end of lines.
# @flag --no-keep-cr                         With --keep-cr, call git mailsplit (see git-mailsplit(1)) with the same option, to prevent it from stripping CR at the end of lines.
# @flag -c --scissors                        Remove everything in body before a scissors line (see git-mailinfo(1)).
# @flag --no-scissors                        Ignore scissors lines (see git-mailinfo(1)).
# @option --quoted-cr <action>               This flag will be passed down to git mailinfo (see git-mailinfo(1)).
# @flag -m --message-id                      Pass the -m flag to git mailinfo (see git-mailinfo(1)), so that the Message-ID header is added to the commit message.
# @flag --no-message-id                      Do not add the Message-ID header to the commit message.
# @flag -q --quiet                           Be quiet.
# @flag -u --utf8                            Pass -u flag to git mailinfo (see git-mailinfo(1)).
# @flag --no-utf8                            Pass -n flag to git mailinfo (see git-mailinfo(1)).
# @flag -3                                   When the patch does not apply cleanly, fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally.
# @flag --3way                               When the patch does not apply cleanly, fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally.
# @flag --no-3way                            When the patch does not apply cleanly, fall back on 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally.
# @flag --rerere-autoupdate                  Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --no-rerere-autoupdate               Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @option -C <path>                          These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option -p <path>                          These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --ignore-space-change <path>       These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --ignore-whitespace <path>         These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --whitespace <path>                These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --directory <path>                 These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --exclude <path>                   These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --include <path>                   These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @option --reject <path>                    These flags are passed to the git apply (see git-apply(1)) program that applies the patch.
# @flag --patch-format                       By default the command will try to detect the patch format automatically.
# @flag -i --interactive                     Run interactively.
# @flag --committer-date-is-author-date      By default the command records the date from the e-mail message as the commit author date, and uses the time of commit creation as the committer date.
# @flag --ignore-date                        By default the command records the date from the e-mail message as the commit author date, and uses the time of commit creation as the committer date.
# @flag --skip                               Skip the current patch.
# @option -S <keyid>                         GPG-sign commits.
# @option --gpg-sign <keyid>                 GPG-sign commits.
# @option --no-gpg-sign <keyid>              GPG-sign commits.
# @flag -r                                   After a patch failure (e.g. attempting to apply conflicting patch), the user has applied it by hand and the index file stores the result of the application.
# @flag --continue                           After a patch failure (e.g. attempting to apply conflicting patch), the user has applied it by hand and the index file stores the result of the application.
# @flag --resolved                           After a patch failure (e.g. attempting to apply conflicting patch), the user has applied it by hand and the index file stores the result of the application.
# @option --resolvemsg <msg>                 When a patch failure occurs, <msg> will be printed to the screen before exiting.
# @flag --abort                              Restore the original branch and abort the patching operation.
# @flag --quit                               Abort the patching operation but keep HEAD and the index untouched.
# @option --show-current-patch <diff|raw>    Show the message at which git am has stopped due to conflicts.
# @arg mbox-maildir <<mbox>|<Maildir>...>
am() {
    :;
}
# }} git am

# {{ git apply
# @cmd Apply a patch to files and/or to the index
# @flag --stat                            Instead of applying the patch, output diffstat for the input.
# @flag --numstat                         Similar to --stat, but shows the number of added and deleted lines in decimal notation and the pathname without abbreviation, to make it more machine friendly.
# @flag --summary                         Instead of applying the patch, output a condensed summary of information obtained from git diff extended headers, such as creations, renames and mode changes.
# @flag --check                           Instead of applying the patch, see if the patch is applicable to the current working tree and/or the index file and detects errors.
# @flag --index                           Apply the patch to both the index and the working tree (or merely check that it would apply cleanly to both if --check is in effect).
# @flag --cached                          Apply the patch to just the index, without touching the working tree.
# @flag --intent-to-add                   When applying the patch only to the working tree, mark new files to be added to the index later (see --intent-to-add option in git-add(1)).
# @flag -3 --3way                         Attempt 3-way merge if the patch records the identity of blobs it is supposed to apply to and we have those blobs available locally, possibly leaving the conflict markers in the files in the working tree for the user to resolve.
# @option --build-fake-ancestor <file>    Newer git diff output has embedded index information for each blob to help identify the original version that the patch applies to.
# @flag -R --reverse                      Apply the patch in reverse.
# @flag --reject                          For atomicity, git apply by default fails the whole patch and does not touch the working tree when some of the hunks do not apply.
# @flag -z                                When --numstat has been given, do not munge pathnames, but use a NUL-terminated machine-readable format.
# @option -p <n>                          Remove <n> leading path components (separated by slashes) from traditional diff paths.
# @option -C <n>                          Ensure at least <n> lines of surrounding context match before and after each change.
# @flag --unidiff-zero                    By default, git apply expects that the patch being applied is a unified diff with at least one line of context.
# @flag --apply                           If you use any of the options marked "Turns off apply" above, git apply reads and outputs the requested information without actually applying the patch.
# @flag --no-add                          When applying a patch, ignore additions made by the patch.
# @flag --allow-binary-replacement        Historically we did not allow binary patch applied without an explicit permission from the user, and this flag was the way to do so.
# @flag --binary                          Historically we did not allow binary patch applied without an explicit permission from the user, and this flag was the way to do so.
# @option --exclude <path-pattern>        Don’t apply changes to files matching the given path pattern.
# @option --include <path-pattern>        Apply changes to files matching the given path pattern.
# @flag --ignore-space-change             When applying a patch, ignore changes in whitespace in context lines if necessary.
# @flag --ignore-whitespace               When applying a patch, ignore changes in whitespace in context lines if necessary.
# @option --whitespace <action>           When applying a patch, detect a new or modified line that has whitespace errors.
# @flag --inaccurate-eof                  Under certain circumstances, some versions of diff do not correctly detect a missing new-line at the end of the file.
# @flag -v --verbose                      Report progress to stderr.
# @flag --recount                         Do not trust the line counts in the hunk headers, but infer them by inspecting the patch (e.g. after editing the patch without adjusting the hunk headers appropriately).
# @option --directory <root>              Prepend <root> to all filenames.
# @flag --unsafe-paths                    By default, a patch that affects outside the working area (either a Git controlled working tree, or the current working directory when "git apply" is used as a replacement of GNU patch) is rejected as a mistake (or a mischief).
# @arg patch*
apply() {
    :;
}
# }} git apply

# {{ git archive
# @cmd Create an archive of files from a named tree
# @option --format <fmt>                 Format of the resulting archive: tar or zip.
# @flag -l --list                        Show all available formats.
# @flag -v --verbose                     Report progress to stderr.
# @option --prefix <<prefix>/>           Prepend <prefix>/ to each filename in the archive.
# @option -o --output <file>             Write the archive to <file> instead of stdout.
# @option --add-file <file>              Add a non-tracked file to the archive.
# @flag --worktree-attributes            Look for attributes in .gitattributes files in the working tree as well (see the section called “ATTRIBUTES”).
# @option --remote <repo>                Instead of making a tar archive from the local repository, retrieve a tar archive from a remote repository.
# @option --exec <git-upload-archive>    Used with --remote to specify the path to the git-upload-archive on the remote side.
# @arg extra
# @arg tree-ish!
# @arg path*
archive() {
    :;
}

# {{{ git archive zip
# @cmd
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
archive::zip() {
    :;
}
# }}} git archive zip

# {{{ git archive export-ignore
# @cmd Files and directories with the attribute export-ignore won’t be added to archive files.
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
archive::export-ignore() {
    :;
}
# }}} git archive export-ignore

# {{{ git archive export-subst
# @cmd If the attribute export-subst is set for a file then Git will expand several placeholders when adding this file to an archive.
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
archive::export-subst() {
    :;
}
# }}} git archive export-subst
# }} git archive

# {{ git blame
# @cmd Show what revision and author last modified each line of a file
# @flag -b                             Show blank SHA-1 for boundary commits.
# @flag --root                         Do not treat root commits as boundaries.
# @flag --show-stats                   Include additional statistics at the end of blame output.
# @option -L <:<funcname>>             Annotate only the line range given by <start>,<end>, or by the function name regex <funcname>.
# @flag -l                             Show long rev (Default: off).
# @flag -t                             Show raw timestamp (Default: off).
# @option -S <revs-file>               Use revisions from revs-file instead of calling git-rev-list(1).
# @option --reverse <<rev>..<rev>>     Walk history forward instead of backward.
# @flag --first-parent                 Follow only the first parent commit upon seeing a merge commit.
# @flag -p --porcelain                 Show in a format designed for machine consumption.
# @flag --line-porcelain               Show the porcelain format, but output commit information for each line, not just the first time a commit is referenced.
# @flag --incremental                  Show the result incrementally in a format designed for machine consumption.
# @option --encoding <encoding>        Specifies the encoding used to output author names and commit summaries.
# @option --contents <file>            When <rev> is not specified, the command annotates the changes starting backwards from the working tree copy.
# @option --date <format>              Specifies the format used to output dates.
# @flag --progress                     Progress status is reported on the standard error stream by default when it is attached to a terminal.
# @flag --no-progress                  Progress status is reported on the standard error stream by default when it is attached to a terminal.
# @option -M <num>                     Detect moved or copied lines within a file.
# @option -C <num>                     In addition to -M, detect lines moved or copied from other files that were modified in the same commit.
# @option --ignore-rev <rev>           Ignore changes made by the revision when assigning blame, as if the change never happened.
# @option --ignore-revs-file <file>    Ignore revisions listed in file, which must be in the same format as an fsck.skipList.
# @flag --color-lines                  Color line annotations in the default format differently if they come from the same commit as the preceding line.
# @flag --color-by-age                 Color line annotations depending on the age of the line in the default format.
# @flag -h                             Show help message.
# @flag -c                             Use the same output mode as git-annotate(1) (Default: off).
# @flag --score-debug                  Include debugging information related to the movement of lines between files (see -C) and lines moved within a file (see -M).
# @flag -f --show-name                 Show the filename in the original commit.
# @flag -n --show-number               Show the line number in the original commit (Default: off).
# @flag -s                             Suppress the author name and timestamp from the output.
# @flag -e --show-email                Show the author email instead of author name (Default: off).
# @flag -w                             Ignore whitespace when comparing the parent’s version and the child’s to find where the lines came from.
# @option --abbrev <n>                 Instead of using the default 7+1 hexadecimal digits as the abbreviated object name, use <m>+1 digits, where <m> is at least <n> but ensures the commit object names are unique.
# @arg rev
# @arg file!
blame() {
    :;
}
# }} git blame

# {{ git branch
# @cmd List, create, or delete branches
# @flag -d --delete                          Delete a branch.
# @flag -D                                   Shortcut for --delete --force.
# @flag --create-reflog                      Create the branch’s reflog.
# @flag -f --force                           Reset <branchname> to <startpoint>, even if <branchname> exists already.
# @flag -m --move                            Move/rename a branch, together with its config and reflog.
# @flag -M                                   Shortcut for --move --force.
# @flag -c --copy                            Copy a branch, together with its config and reflog.
# @flag -C                                   Shortcut for --copy --force.
# @option --color <when>                     Color branches to highlight current, local, and remote-tracking branches.
# @flag --no-color                           Turn off branch colors, even when the configuration file gives the default to color output.
# @flag -i --ignore-case                     Sorting and filtering branches are case insensitive.
# @option --column <options>                 Display branch listing in columns.
# @option --no-column <options>              Display branch listing in columns.
# @flag -r --remotes                         List or delete (if used with -d) the remote-tracking branches.
# @flag -a --all                             List both remote-tracking branches and local branches.
# @flag -l --list                            List branches.
# @flag --show-current                       Print the name of the current branch.
# @flag -v                                   When in list mode, show sha1 and commit subject line for each head, along with relationship to upstream branch (if any).
# @flag -vv                                  When in list mode, show sha1 and commit subject line for each head, along with relationship to upstream branch (if any).
# @flag --verbose                            When in list mode, show sha1 and commit subject line for each head, along with relationship to upstream branch (if any).
# @flag -q --quiet                           Be more quiet when creating or deleting a branch, suppressing non-error messages.
# @option --abbrev <n>                       In the verbose listing that show the commit object name, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object.
# @flag --no-abbrev                          Display the full sha1s in the output listing rather than abbreviating them.
# @flag -t --track                           When creating a new branch, set up branch.<name>.remote and branch.<name>.merge configuration entries to mark the start-point branch as "upstream" from the new branch.
# @flag --no-track                           Do not set up "upstream" configuration, even if the branch.autoSetupMerge configuration variable is true.
# @flag --set-upstream                       As this option had confusing syntax, it is no longer supported.
# @option -u --set-upstream-to <upstream>    Set up <branchname>'s tracking information so <upstream> is considered <branchname>'s upstream branch.
# @flag --unset-upstream                     Remove the upstream information for <branchname>.
# @flag --edit-description                   Open an editor and edit the text to explain what the branch is for, to be used by various other commands (e.g.  format-patch, request-pull, and merge (if enabled)).
# @option --contains <commit>                Only list branches which contain the specified commit (HEAD if not specified).
# @option --no-contains <commit>             Only list branches which don’t contain the specified commit (HEAD if not specified).
# @option --merged <commit>                  Only list branches whose tips are reachable from the specified commit (HEAD if not specified).
# @option --no-merged <commit>               Only list branches whose tips are not reachable from the specified commit (HEAD if not specified).
# @option --sort <key>                       Sort based on the key given.
# @option --points-at <object>               Only list branches of the given object.
# @option --format <format>                  A string that interpolates %(fieldname) from a branch ref being shown and the object it points at.
# @arg branch![`_choice_branch`]
branch() {
    :;
}
# }} git branch

# {{ git checkout
# @cmd Switch branches or restore working tree files
# @flag -q --quiet                       Quiet, suppress feedback messages.
# @flag --progress                       Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag --no-progress                    Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag -f --force                       When switching branches, proceed even if the index or the working tree differs from HEAD, and even if there are untracked files in the way.
# @flag --ours                           When checking out paths from the index, check out stage ♯2 (ours) or ♯3 (theirs) for unmerged paths.
# @flag --theirs                         When checking out paths from the index, check out stage ♯2 (ours) or ♯3 (theirs) for unmerged paths.
# @option -b <new_branch>                Create a new branch named <new_branch> and start it at <start_point>; see git-branch(1) for details.
# @option -B <new_branch>                Creates the branch <new_branch> and start it at <start_point>; if it already exists, then reset it to <start_point>.
# @flag -t --track                       When creating a new branch, set up "upstream" configuration.
# @flag --no-track                       Do not set up "upstream" configuration, even if the branch.autoSetupMerge configuration variable is true.
# @flag --guess                          If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to
# @flag --no-guess                       If <branch> is not found but there does exist a tracking branch in exactly one remote (call it <remote>) with a matching name, treat as equivalent to
# @flag -l                               Create the new branch’s reflog; see git-branch(1) for details.
# @flag -d --detach                      Rather than checking out a branch to work on it, check out a commit for inspection and discardable experiments.
# @option --orphan <new_branch>          Create a new orphan branch, named <new_branch>, started from <start_point> and switch to it.
# @flag --ignore-skip-worktree-bits      In sparse checkout mode, git checkout -- <paths> would update only entries matched by <paths> and sparse patterns in $GIT_DIR/info/sparse-checkout.
# @flag -m --merge                       When switching branches, if you have local modifications to one or more files that are different between the current branch and the branch to which you are switching, the command refuses to switch branches in order to preserve your modifications in context.
# @option --conflict <style>             The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable.
# @flag -p --patch                       Interactively select hunks in the difference between the <tree-ish> (or the index, if unspecified) and the working tree.
# @flag --ignore-other-worktrees         git checkout refuses when the wanted ref is already checked out by another worktree.
# @flag --overwrite-ignore               Silently overwrite ignored files when switching branches.
# @flag --no-overwrite-ignore            Silently overwrite ignored files when switching branches.
# @flag --recurse-submodules             Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject.
# @flag --no-recurse-submodules          Using --recurse-submodules will update the content of all active submodules according to the commit recorded in the superproject.
# @flag --overlay                        In the default overlay mode, git checkout never removes files from the index or the working tree.
# @flag --no-overlay                     In the default overlay mode, git checkout never removes files from the index or the working tree.
# @option --pathspec-from-file <file>    Pathspec is passed in <file> instead of commandline args.
# @flag --pathspec-file-nul              Only meaningful with --pathspec-from-file.
# @arg branch-path*[`_choice_checkout`]
checkout() {
    :;
}
# }} git checkout

# {{ git cherry
# @cmd Find commits yet to be applied to upstream
# @flag -v    Show the commit subjects next to the SHA1s.
# @arg upstream[`_choice_remote_branch`]
# @arg branch
cherry() {
    :;
}
# }} git cherry

# {{ git cherry-pick
# @cmd Apply the changes introduced by some existing commits
# @flag -e --edit                          With this option, git cherry-pick will let you edit the commit message prior to committing.
# @option --cleanup <mode>                 This option determines how the commit message will be cleaned up before being passed on to the commit machinery.
# @flag -x                                 When recording the commit, append a line that says "(cherry picked from commit ...)" to the original commit message in order to indicate which commit this change was cherry-picked from.
# @flag -r                                 It used to be that the command defaulted to do -x described above, and -r was to disable it.
# @option -m --mainline <parent-number>    Usually you cannot cherry-pick a merge because you do not know which side of the merge should be considered the mainline.
# @flag -n --no-commit                     Usually the command automatically creates a sequence of commits.
# @flag -s --signoff                       Add a Signed-off-by trailer at the end of the commit message.
# @option -S <keyid>                       GPG-sign commits.
# @option --gpg-sign <keyid>               GPG-sign commits.
# @option --no-gpg-sign <keyid>            GPG-sign commits.
# @flag --ff                               If the current HEAD is the same as the parent of the cherry-pick’ed commit, then a fast forward to this commit will be performed.
# @flag --allow-empty                      By default, cherry-picking an empty commit will fail, indicating that an explicit invocation of git commit --allow-empty is required.
# @flag --allow-empty-message              By default, cherry-picking a commit with an empty message will fail.
# @flag --keep-redundant-commits           If a commit being cherry picked duplicates a commit already in the current history, it will become empty.
# @option --strategy <strategy>            Use the given merge strategy.
# @option -X --strategy-option <option>    Pass the merge strategy-specific option through to the merge strategy.
# @flag --rerere-autoupdate                Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --no-rerere-autoupdate             Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --continue                         Continue the operation in progress using the information in .git/sequencer.
# @flag --skip                             Skip the current commit and continue with the rest of the sequence.
# @flag --quit                             Forget about the current operation in progress.
# @flag --abort                            Cancel the operation and return to the pre-sequence state.
# @arg commit+[`_choice_range`]
cherry-pick() {
    :;
}
# }} git cherry-pick

# {{ git clean
# @cmd Remove untracked files from the working tree
# @flag -d                          Normally, when no <path> is specified, git clean will not recurse into untracked directories to avoid removing too much.
# @flag -f --force                  If the Git configuration variable clean.requireForce is not set to false, git clean will refuse to delete files or directories unless given -f or -i.
# @flag -i --interactive            Show what would be done and clean files interactively.
# @flag -n --dry-run                Don’t actually remove anything, just show what would be done.
# @flag -q --quiet                  Be quiet, only report errors, but not the files that are successfully removed.
# @option -e --exclude <pattern>    Use the given exclude pattern in addition to the standard ignore rules (see gitignore(5)).
# @flag -x                          Don’t use the standard ignore rules (see gitignore(5)), but still use the ignore rules given with -e options from the command line.
# @flag -X                          Remove only files ignored by Git.
# @arg path+[`_choice_unstaged_file`]
clean() {
    :;
}
# }} git clean

# {{ git config
# @cmd Get and set repository or global options
# @flag --replace-all                     Default behavior is to replace at most one line.
# @flag --add                             Adds a new line to the option without altering any existing values.
# @flag --get                             Get the value for a given key (optionally filtered by a regex matching the value).
# @flag --get-all                         Like get, but returns all values for a multi-valued key.
# @flag --get-regexp                      Like --get-all, but interprets the name as a regular expression and writes out the key names.
# @flag --get-urlmatch                    name URL When given a two-part name section.key, the value for section.<url>.key whose <url> part matches the best to the given URL is returned (if no such key exists, the value for section.key is used as a fallback).
# @flag --global                          For writing options: write to global ~/.gitconfig file rather than the repository .git/config, write to $XDG_CONFIG_HOME/git/config file if this file exists and the ~/.gitconfig file doesn’t.
# @flag --system                          For writing options: write to system-wide $(prefix)/etc/gitconfig rather than the repository .git/config.
# @flag --local                           For writing options: write to the repository .git/config file.
# @flag --worktree                        Similar to --local except that .git/config.worktree is read from or written to if extensions.worktreeConfig is present.
# @option -f --file <config-file>         For writing options: write to the specified file rather than the repository .git/config.
# @option --blob <blob>                   Similar to --file but use the given blob instead of a file.
# @flag --remove-section                  Remove the given section from the configuration file.
# @flag --rename-section                  Rename the given section to a new name.
# @flag --unset                           Remove the line matching the key from config file.
# @flag --unset-all                       Remove all lines matching the key from config file.
# @flag -l --list                         List all variables set in config file, along with their values.
# @flag --fixed-value                     When used with the value-pattern argument, treat value-pattern as an exact string instead of a regular expression.
# @option --type <type>                   git config will ensure that any input or output is valid under the given type constraint(s), and will canonicalize outgoing values in <type>'s canonical form.
# @flag --bool                            Historical options for selecting a type specifier.
# @flag --int                             Historical options for selecting a type specifier.
# @flag --bool-or-int                     Historical options for selecting a type specifier.
# @flag --path                            Historical options for selecting a type specifier.
# @flag --expiry-date                     Historical options for selecting a type specifier.
# @flag --no-type                         Un-sets the previously set type specifier (if one was previously set).
# @flag -z --null                         For all options that output values and/or keys, always end values with the null character (instead of a newline).
# @flag --name-only                       Output only the names of config variables for --list or --get-regexp.
# @flag --show-origin                     Augment the output of all queried config options with the origin type (file, standard input, blob, command line) and the actual origin (config file path, ref, or blob id if applicable).
# @option --show-scope[local|global|system|command]  Similar to --show-origin in that it augments the output of all queried config options with the scope of that value.
# @option --get-colorbool <name> <stdout-is-tty>  Find the color setting for name (e.g.  color.diff) and output "true" or "false".
# @option --get-color <name> <default>    Find the color configured for name (e.g.  color.diff.new) and output it as the ANSI color escape sequence to the standard output.
# @flag -e --edit                         Opens an editor to modify the specified config file; either --system, --global, or repository (default).
# @flag --includes                        Respect include.*  directives in config files when looking up values.
# @flag --no-includes                     Respect include.*  directives in config files when looking up values.
# @option --default <value>               When using --get, and the requested variable is not found, behave as if <value> were the value assigned to the that variable.
# @arg key[`_choice_config_key`]
config() {
    :;
}
# }} git config

# {{ git describe
# @cmd Give an object a human readable name based on an available ref
# @option --dirty <mark>         Describe the state of the working tree.
# @option --broken <mark>        Describe the state of the working tree.
# @flag --all                    Instead of using only the annotated tags, use any ref found in refs/ namespace.
# @flag --tags                   Instead of using only the annotated tags, use any tag found in refs/tags namespace.
# @flag --contains               Instead of finding the tag that predates the commit, find the tag that comes after the commit, and thus contains it.
# @option --abbrev <n>           Instead of using the default number of hexadecimal digits (which will vary according to the number of objects in the repository with a default of 7) of the abbreviated object name, use <n> digits, or as many digits as needed to form a unique object name.
# @option --candidates <n>       Instead of considering only the 10 most recent tags as candidates to describe the input commit-ish consider up to <n> candidates.
# @flag --exact-match            Only output exact matches (a tag directly references the supplied commit).
# @flag --debug                  Verbosely display information about the searching strategy being employed to standard error.
# @flag --long                   Always output the long format (the tag, the number of commits and the abbreviated commit name) even when it matches a tag.
# @option --match <pattern>      Only consider tags matching the given glob(7) pattern, excluding the "refs/tags/" prefix.
# @option --exclude <pattern>    Do not consider tags matching the given glob(7) pattern, excluding the "refs/tags/" prefix.
# @flag --always                 Show uniquely abbreviated commit object as fallback.
# @flag --first-parent           Follow only the first parent commit upon seeing a merge commit.
# @arg commit-ish*[`_choice_ref`]
describe() {
    :;
}
# }} git describe

# {{ git difftool
# @cmd Show changes using common diff tools
# @flag -d --dir-diff           Copy the modified files to a temporary location and perform a directory diff on them.
# @flag -y --no-prompt          Do not prompt before launching a diff tool.
# @flag --prompt                Prompt before each invocation of the diff tool.
# @option --rotate-to <file>    Start showing the diff for the given path, the paths before it will move to end and output.
# @option --skip-to <file>      Start showing the diff for the given path, skipping all the paths before it.
# @option -t --tool <tool>      Use the diff tool specified by <tool>.
# @flag --tool-help             Print a list of diff tools that may be used with --tool.
# @flag --symlinks              git difftool's default behavior is create symlinks to the working tree when run in --dir-diff mode and the right-hand side of the comparison yields the same content as the file in the working tree.
# @flag --no-symlinks           git difftool's default behavior is create symlinks to the working tree when run in --dir-diff mode and the right-hand side of the comparison yields the same content as the file in the working tree.
# @option -x --extcmd[`_module_os_command`] <command>  Specify a custom command for viewing diffs.
# @flag -g                      When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable instead of diff.tool.
# @flag --gui                   When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable instead of diff.tool.
# @flag --no-gui                When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable instead of diff.tool.
# @flag --trust-exit-code       git-difftool invokes a diff tool individually on each file.
# @flag --no-trust-exit-code    git-difftool invokes a diff tool individually on each file.
# @arg commit-commit <<commit> [<commit>]>
# @arg path*
difftool() {
    :;
}
# }} git difftool

# {{ git format-patch
# @cmd Prepare patches for e-mail submission
# @flag -p --no-stat                            Generate plain patches without any diffstats.
# @option -U --unified <n>                      Generate diffs with <n> lines of context instead of the usual three.
# @option --output <file>                       Output to a specific file instead of stdout.
# @option --output-indicator-new <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-old <char>         Specify the character used to indicate new, old or context lines in the generated patch.
# @option --output-indicator-context <char>     Specify the character used to indicate new, old or context lines in the generated patch.
# @flag --indent-heuristic                      Enable the heuristic that shifts diff hunk boundaries to make patches easier to read.
# @flag --no-indent-heuristic                   Disable the indent heuristic.
# @flag --minimal                               Spend extra time to make sure the smallest possible diff is produced.
# @flag --patience                              Generate a diff using the "patience diff" algorithm.
# @flag --histogram                             Generate a diff using the "histogram diff" algorithm.
# @option --anchored <text>                     Generate a diff using the "anchored diff" algorithm.
# @option --diff-algorithm[patience|minimal|histogram|myers]  Choose a diff algorithm.
# @option --stat <<width>[,<name-width>[,<count>]]>  Generate a diffstat.
# @flag --compact-summary                       Output a condensed summary of extended header information such as file creations or deletions ("new" or "gone", optionally "+l" if it’s a symlink) and mode changes ("+x" or "-x" for adding or removing executable bit respectively) in diffstat.
# @flag --numstat                               Similar to --stat, but shows number of added and deleted lines in decimal notation and pathname without abbreviation, to make it more machine friendly.
# @flag --shortstat                             Output only the last line of the --stat format containing total number of modified files, as well as number of added and deleted lines.
# @option -X --dirstat* <param1,param2,>        Output the distribution of relative amount of changes for each sub-directory.
# @flag --cumulative                            Synonym for --dirstat=cumulative
# @option --dirstat-by-file* <param1,param2>    Synonym for --dirstat=files,param1,param2...
# @flag --summary                               Output a condensed summary of extended header information such as creations, renames and mode changes.
# @flag --no-renames                            Turn off rename detection, even when the configuration file gives the default to do so.
# @flag --rename-empty                          Whether to use empty blobs as rename source.
# @flag --no-rename-empty                       Whether to use empty blobs as rename source.
# @flag --full-index                            Instead of the first handful of characters, show the full pre- and post-image blob object names on the "index" line when generating patch format output.
# @flag --binary                                In addition to --full-index, output a binary diff that can be applied with git-apply.
# @option --abbrev <n>                          Instead of showing the full 40-byte hexadecimal object name in diff-raw format output and diff-tree header lines, show the shortest prefix that is at least <n> hexdigits long that uniquely refers the object.
# @option -B --break-rewrites <[<n>][/<m>]>     Break complete rewrite changes into pairs of delete and create.
# @option -M --find-renames <n>                 Detect renames.
# @option -C --find-copies <n>                  Detect copies as well as renames.
# @flag --find-copies-harder                    For performance reasons, by default, -C option finds copies only if the original file of the copy was modified in the same changeset.
# @flag -D --irreversible-delete                Omit the preimage for deletes, i.e.
# @option -l <num>                              The -M and -C options involve some preliminary steps that can detect subsets of renames/copies cheaply, followed by an exhaustive fallback portion that compares all remaining unpaired destinations to all relevant sources.
# @option -O <orderfile>                        Control the order in which files appear in the output.
# @option --skip-to <file>                      Discard the files before the named <file> from the output (i.e.
# @option --rotate-to <file>                    Discard the files before the named <file> from the output (i.e.
# @option --relative <path>                     When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @option --no-relative <path>                  When run from a subdirectory of the project, it can be told to exclude changes outside the directory and show pathnames relative to it with this option.
# @flag -a --text                               Treat all files as text.
# @flag --ignore-cr-at-eol                      Ignore carriage-return at the end of line when doing a comparison.
# @flag --ignore-space-at-eol                   Ignore changes in whitespace at EOL.
# @flag -b --ignore-space-change                Ignore changes in amount of whitespace.
# @flag -w --ignore-all-space                   Ignore whitespace when comparing lines.
# @flag --ignore-blank-lines                    Ignore changes whose lines are all blank.
# @option -I --ignore-matching-lines <regex>    Ignore changes whose all lines match <regex>.
# @option --inter-hunk-context <lines>          Show the context between diff hunks, up to the specified number of lines, thereby fusing hunks that are close to each other.
# @flag -W --function-context                   Show whole function as context lines for each change.
# @flag --ext-diff                              Allow an external diff helper to be executed.
# @flag --no-ext-diff                           Disallow external diff drivers.
# @flag --textconv                              Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @flag --no-textconv                           Allow (or disallow) external text conversion filters to be run when comparing binary files.
# @option --ignore-submodules <when>            Ignore changes to submodules in the diff generation.
# @option --src-prefix <prefix>                 Show the given source prefix instead of "a/".
# @option --dst-prefix <prefix>                 Show the given destination prefix instead of "b/".
# @flag --no-prefix                             Do not show any source or destination prefix.
# @option --line-prefix <prefix>                Prepend an additional prefix to every line of output.
# @flag --ita-invisible-in-index                By default entries added by "git add -N" appear as an existing empty file in "git diff" and a new file in "git diff --cached".
# @option -o --output-directory <dir>           Use <dir> to store the resulting files, instead of the current working directory.
# @flag -n --numbered                           Name output in [PATCH n/m] format, even with a single patch.
# @flag -N --no-numbered                        Name output in [PATCH] format.
# @option --start-number <n>                    Start numbering the patches at <n> instead of 1.
# @flag --numbered-files                        Output file names will be a simple number sequence without the default first line of the commit appended.
# @flag -k --keep-subject                       Do not strip/add [PATCH] from the first line of the commit log message.
# @flag -s --signoff                            Add a Signed-off-by trailer to the commit message, using the committer identity of yourself.
# @flag --stdout                                Print all commits to the standard output in mbox format, instead of creating a file for each one.
# @option --attach <boundary>                   Create multipart/mixed attachment, the first part of which is the commit message and the patch itself in the second part, with Content-Disposition: attachment.
# @flag --no-attach                             Disable the creation of an attachment, overriding the configuration setting.
# @option --inline <boundary>                   Create multipart/mixed attachment, the first part of which is the commit message and the patch itself in the second part, with Content-Disposition: inline.
# @option --thread <style>                      Controls addition of In-Reply-To and References headers to make the second and subsequent mails appear as replies to the first.
# @option --no-thread <style>                   Controls addition of In-Reply-To and References headers to make the second and subsequent mails appear as replies to the first.
# @option --in-reply-to <message id>            Make the first mail (or all the mails with --no-thread) appear as a reply to the given <message id>, which avoids breaking threads to provide a new patch series.
# @flag --ignore-if-in-upstream                 Do not include a patch that matches a commit in <until>..<since>.
# @option --cover-from-description <mode>       Controls which parts of the cover letter will be automatically populated using the branch’s description.
# @option --subject-prefix <subject prefix>     Instead of the standard [PATCH] prefix in the subject line, instead use [<subject prefix>].
# @option --filename-max-length <n>             Instead of the standard 64 bytes, chomp the generated output filenames at around <n> bytes (too short a value will be silently raised to a reasonable length).
# @flag --rfc                                   Alias for --subject-prefix="RFC PATCH".
# @option -v --reroll-count <n>                 Mark the series as the <n>-th iteration of the topic.
# @option --to <email>                          Add a To: header to the email headers.
# @option --cc <email>                          Add a Cc: header to the email headers.
# @option --from <ident>                        Use ident in the From: header of each commit email.
# @option --add-header <header>                 Add an arbitrary header to the email headers.
# @flag --cover-letter                          In addition to the patches, generate a cover letter file containing the branch description, shortlog and the overall diffstat.
# @flag --no-cover-letter                       In addition to the patches, generate a cover letter file containing the branch description, shortlog and the overall diffstat.
# @flag --encode-email-headers                  Encode email headers that have non-ASCII characters with "Q-encoding" (described in RFC 2047), instead of outputting the headers verbatim.
# @flag --no-encode-email-headers               Encode email headers that have non-ASCII characters with "Q-encoding" (described in RFC 2047), instead of outputting the headers verbatim.
# @option --interdiff <previous>                As a reviewer aid, insert an interdiff into the cover letter, or as commentary of the lone patch of a 1-patch series, showing the differences between the previous version of the patch series and the series currently being formatted.
# @option --range-diff <previous>               As a reviewer aid, insert a range-diff (see git-range-diff(1)) into the cover letter, or as commentary of the lone patch of a 1-patch series, showing the differences between the previous version of the patch series and the series currently being formatted.
# @option --creation-factor <percent>           Used with --range-diff, tweak the heuristic which matches up commits between the previous and current series of patches by adjusting the creation/deletion cost fudge factor.
# @option --notes <ref>                         Append the notes (see git-notes(1)) for the commit after the three-dash line.
# @option --no-notes <ref>                      Append the notes (see git-notes(1)) for the commit after the three-dash line.
# @option --signature <signature>               Add a signature to each message produced.
# @option --no-signature <signature>            Add a signature to each message produced.
# @option --signature-file <file>               Works just like --signature except the signature is read from a file.
# @option --suffix <.<sfx>>                     Instead of using .patch as the suffix for generated filenames, use specified suffix.
# @flag -q --quiet                              Do not print the names of the generated files to standard output.
# @flag --no-binary                             Do not output contents of changes in binary files, instead display a notice that those files changed.
# @flag --zero-commit                           Output an all-zero hash in each patch’s From header instead of the hash of the commit.
# @option --base <commit>                       Record the base tree information to identify the state the patch series applies to.
# @option --no-base <commit>                    Record the base tree information to identify the state the patch series applies to.
# @flag --root                                  Treat the revision argument as a <revision range>, even if it is just a single commit (that would normally be treated as a <since>).
# @flag --progress                              Show progress reports on stderr as patches are generated.
# @arg since-revision-range <<since>|<revision range>>
format-patch() {
    :;
}
# }} git format-patch

# {{ git fsck
# @cmd Verifies the connectivity and validity of the objects in the database
# @flag --unreachable          Print out objects that exist but that aren’t reachable from any of the reference nodes.
# @flag --dangling             Print objects that exist but that are never directly used (default).
# @flag --no-dangling          Print objects that exist but that are never directly used (default).
# @flag --root                 Report root nodes.
# @flag --tags                 Report tags.
# @flag --cache                Consider any object recorded in the index also as a head node for an unreachability trace.
# @flag --no-reflogs           Do not consider commits that are referenced only by an entry in a reflog to be reachable.
# @flag --full                 Check not just objects in GIT_OBJECT_DIRECTORY ($GIT_DIR/objects), but also the ones found in alternate object pools listed in GIT_ALTERNATE_OBJECT_DIRECTORIES or $GIT_DIR/objects/info/alternates, and in packed Git archives found in $GIT_DIR/objects/pack and corresponding pack subdirectories in alternate object pools.
# @flag --connectivity-only    Check only the connectivity of reachable objects, making sure that any objects referenced by a reachable tag, commit, or tree is present.
# @flag --strict               Enable more strict checking, namely to catch a file mode recorded with g+w bit set, which was created by older versions of Git.
# @flag --verbose              Be chatty.
# @flag --lost-found           Write dangling objects into .git/lost-found/commit/ or .git/lost-found/other/, depending on type.
# @flag --name-objects         When displaying names of reachable objects, in addition to the SHA-1 also display a name that describes how they are reachable, compatible with git-rev-parse(1), e.g.  HEAD@{1234567890}~25^2:src/.
# @flag --progress             Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --no-progress or --verbose is specified.
# @flag --no-progress          Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --no-progress or --verbose is specified.
# @arg object*
fsck() {
    :;
}
# }} git fsck

# {{ git gc
# @cmd Cleanup unnecessary files and optimize the local repository
# @flag --aggressive           Usually git gc runs very quickly while providing good disk space utilization and performance.
# @flag --auto                 With this option, git gc checks whether any housekeeping is required; if not, it exits without performing any work.
# @option --prune <date>       Prune loose objects older than date (default is 2 weeks ago, overridable by the config variable gc.pruneExpire).
# @flag --no-prune             Do not prune any loose objects.
# @flag --quiet                Suppress all progress reports.
# @flag --force                Force git gc to run even if there may be another git gc instance running on this repository.
# @flag --keep-largest-pack    All packs except the largest pack and those marked with a .keep files are consolidated into a single pack.
gc() {
    :;
}
# }} git gc

# {{ git instaweb
# @cmd Instantly browse your working repository in gitweb
# @flag -l --local          Only bind the web server to the local IP (127.0.0.1).
# @flag -d --httpd          The HTTP daemon command-line that will be executed.
# @flag -m --module-path    The module path (only needed if httpd is Apache).
# @flag -p --port           The port number to bind the httpd to.
# @flag -b --browser        The web browser that should be used to view the gitweb page.
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
# @option -t --tool <tool>    Use the merge resolution program specified by <tool>.
# @flag --tool-help           Print a list of merge tools that may be used with --tool.
# @flag -y --no-prompt        Don’t prompt before each invocation of the merge resolution program.
# @flag --prompt              Prompt before each invocation of the merge resolution program to give the user a chance to skip the path.
# @flag -g --gui              When git-mergetool is invoked with the -g or --gui option the default merge tool will be read from the configured merge.guitool variable instead of merge.tool.
# @flag --no-gui              This overrides a previous -g or --gui setting and reads the default merge tool will be read from the configured merge.tool variable.
# @option -O <orderfile>      Process files in the order specified in the <orderfile>, which has one shell glob pattern per line.
# @arg file*
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
# @flag -n --dry-run         Do not remove anything; just report what it would remove.
# @flag -v --verbose         Report all removed objects.
# @flag --progress           Show progress.
# @option --expire <time>    Only expire loose objects older than <time>.
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
# @arg ref!
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
# @flag -a                               Instead of incrementally packing the unpacked objects, pack everything referenced into a single pack.
# @flag -A                               Same as -a, unless -d is used.
# @flag -d                               After packing, if the newly created packs make some existing packs redundant, remove the redundant packs.
# @flag -l                               Pass the --local option to git pack-objects.
# @flag -f                               Pass the --no-reuse-delta option to git-pack-objects, see git-pack-objects(1).
# @flag -F                               Pass the --no-reuse-object option to git-pack-objects, see git-pack-objects(1).
# @flag -q                               Pass the -q option to git pack-objects.
# @flag -n                               Do not update the server information with git update-server-info.
# @option --window <n>                   These two options affect how the objects contained in the pack are stored using delta compression.
# @option --depth <n>                    These two options affect how the objects contained in the pack are stored using delta compression.
# @option --threads <n>                  This option is passed through to git pack-objects.
# @option --window-memory <n>            This option provides an additional limit on top of --window; the window size will dynamically scale down so as to not take up more than <n> bytes in memory.
# @option --max-pack-size <n>            Maximum size of each output pack file.
# @flag -b --write-bitmap-index          Write a reachability bitmap index as part of the repack.
# @flag --pack-kept-objects              Include objects in .keep files when repacking.
# @option --keep-pack <pack-name>        Exclude the given pack from repacking.
# @option --unpack-unreachable <when>    When loosening unreachable objects, do not bother loosening any objects older than <when>.
# @flag -k --keep-unreachable            When used with -ad, any unreachable objects from existing packs will be appended to the end of the packfile instead of being removed.
# @flag -i --delta-islands               Pass the --delta-islands option to git-pack-objects, see git-pack-objects(1).
# @option -g --geometric <factor>        Arrange resulting pack structure so that each successive pack contains at least <factor> times the number of objects as the next-largest pack.
# @flag -m --write-midx                  Write a multi-pack index (see git-multi-pack-index(1)) containing the non-redundant packs.
repack() {
    :;
}
# }} git repack

# {{ git replace
# @cmd Create, list, delete refs to replace objects
# @flag -f --force                      If an existing replace ref for the same object exists, it will be overwritten (instead of failing).
# @flag -d --delete                     Delete existing replace refs for the given objects.
# @option --edit <object>               Edit an object’s content interactively.
# @flag --raw                           When editing, provide the raw object contents rather than pretty-printed ones.
# @option --graft* <commit> <parent>    Create a graft commit.
# @flag --convert-graft-file            Creates graft commits for all entries in $GIT_DIR/info/grafts and deletes that file upon success.
# @option -l --list <pattern>           List replace refs for objects that match the given pattern (or all if no pattern is given).
# @option --format <format>             When listing, use the specified <format>, which can be one of short, medium and long.
# @arg object!
# @arg replacement!
replace() {
    :;
}
# }} git replace

# {{ git request-pull
# @cmd Generates a summary of pending changes
# @flag -p    Include patch text in the output.
# @arg start!
# @arg url!
# @arg end
request-pull() {
    :;
}
# }} git request-pull

# {{ git restore
# @cmd Restore working tree files
# @option -s --source <tree>             Restore the working tree files with the content from the given tree.
# @flag -p --patch                       Interactively select hunks in the difference between the restore source and the restore location.
# @flag -W                               Specify the restore location.
# @flag -S                               Specify the restore location.
# @flag --worktree                       Specify the restore location.
# @flag --staged                         Specify the restore location.
# @flag -q --quiet                       Quiet, suppress feedback messages.
# @flag --progress                       Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag --no-progress                    Progress status is reported on the standard error stream by default when it is attached to a terminal, unless --quiet is specified.
# @flag --ours                           When restoring files in the working tree from the index, use stage ♯2 (ours) or ♯3 (theirs) for unmerged paths.
# @flag --theirs                         When restoring files in the working tree from the index, use stage ♯2 (ours) or ♯3 (theirs) for unmerged paths.
# @flag -m --merge                       When restoring files on the working tree from the index, recreate the conflicted merge in the unmerged paths.
# @option --conflict <style>             The same as --merge option above, but changes the way the conflicting hunks are presented, overriding the merge.conflictStyle configuration variable.
# @flag --ignore-unmerged                When restoring files on the working tree from the index, do not abort the operation if there are unmerged entries and neither --ours, --theirs, --merge or --conflict is specified.
# @flag --ignore-skip-worktree-bits      In sparse checkout mode, by default is to only update entries matched by <pathspec> and sparse patterns in $GIT_DIR/info/sparse-checkout.
# @flag --recurse-submodules             If <pathspec> names an active submodule and the restore location includes the working tree, the submodule will only be updated if this option is given, in which case its working tree will be restored to the commit recorded in the superproject, and any local modifications overwritten.
# @flag --no-recurse-submodules          If <pathspec> names an active submodule and the restore location includes the working tree, the submodule will only be updated if this option is given, in which case its working tree will be restored to the commit recorded in the superproject, and any local modifications overwritten.
# @flag --overlay                        In overlay mode, the command never removes files when restoring.
# @flag --no-overlay                     In overlay mode, the command never removes files when restoring.
# @option --pathspec-from-file <file>    Pathspec is passed in <file> instead of commandline args.
# @flag --pathspec-file-nul              Only meaningful with --pathspec-from-file.
# @arg pathspec+[`_choice_restore_file`]
restore() {
    :;
}
# }} git restore

# {{ git revert
# @cmd Revert some existing commits
# @flag -e --edit                          With this option, git revert will let you edit the commit message prior to committing the revert.
# @option -m --mainline <parent-number>    Usually you cannot revert a merge because you do not know which side of the merge should be considered the mainline.
# @flag --no-edit                          With this option, git revert will not start the commit message editor.
# @option --cleanup <mode>                 This option determines how the commit message will be cleaned up before being passed on to the commit machinery.
# @flag -n --no-commit                     Usually the command automatically creates some commits with commit log messages stating which commits were reverted.
# @option -S <keyid>                       GPG-sign commits.
# @option --gpg-sign <keyid>               GPG-sign commits.
# @option --no-gpg-sign <keyid>            GPG-sign commits.
# @flag -s --signoff                       Add a Signed-off-by trailer at the end of the commit message.
# @option --strategy <strategy>            Use the given merge strategy.
# @option -X --strategy-option <option>    Pass the merge strategy-specific option through to the merge strategy.
# @flag --rerere-autoupdate                Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --no-rerere-autoupdate             Allow the rerere mechanism to update the index with the result of auto-conflict resolution if possible.
# @flag --continue                         Continue the operation in progress using the information in .git/sequencer.
# @flag --skip                             Skip the current commit and continue with the rest of the sequence.
# @flag --quit                             Forget about the current operation in progress.
# @flag --abort                            Cancel the operation and return to the pre-sequence state.
# @arg commit+
revert() {
    :;
}
# }} git revert

# {{ git shortlog
# @cmd Summarize 'git log' output
# @flag -n --numbered                             Sort output according to the number of commits per author instead of author alphabetic order.
# @flag -s --summary                              Suppress commit description and provide a commit count summary only.
# @flag -e --email                                Show the email address of each author.
# @option --format <format>                       Instead of the commit subject, use some other information to describe each commit.
# @option --group <type>                          Group commits based on <type>.
# @option -w <<width>[,<indent1>[,<indent2>]]>    Linewrap the output by wrapping each line at width.
# @option --skip <number>                         Skip number commits before starting to show the commit output.
# @option --since <date>                          Show commits more recent than a specific date.
# @option --after <date>                          Show commits more recent than a specific date.
# @option --until <date>                          Show commits older than a specific date.
# @option --before <date>                         Show commits older than a specific date.
# @option --author <pattern>                      Limit the commits output to ones with author/committer header lines that match the specified pattern (regular expression).
# @option --committer <pattern>                   Limit the commits output to ones with author/committer header lines that match the specified pattern (regular expression).
# @option --grep-reflog <pattern>                 Limit the commits output to ones with reflog entries that match the specified pattern (regular expression).
# @option --grep <pattern>                        Limit the commits output to ones with log message that matches the specified pattern (regular expression).
# @flag --all-match                               Limit the commits output to ones that match all given --grep, instead of ones that match at least one.
# @flag --invert-grep                             Limit the commits output to ones with log message that do not match the pattern specified with --grep=<pattern>.
# @flag -i --regexp-ignore-case                   Match the regular expression limiting patterns without regard to letter case.
# @flag --basic-regexp                            Consider the limiting patterns to be basic regular expressions; this is the default.
# @flag -E --extended-regexp                      Consider the limiting patterns to be extended regular expressions instead of the default basic regular expressions.
# @flag -F --fixed-strings                        Consider the limiting patterns to be fixed strings (don’t interpret pattern as a regular expression).
# @flag -P --perl-regexp                          Consider the limiting patterns to be Perl-compatible regular expressions.
# @flag --remove-empty                            Stop when a given path disappears from the tree.
# @flag --merges                                  Print only merge commits.
# @flag --no-merges                               Do not print commits with more than one parent.
# @option --min-parents <number>                  Show only commits which have at least (or at most) that many parent commits.
# @option --max-parents <number>                  Show only commits which have at least (or at most) that many parent commits.
# @option --no-min-parents <number>               Show only commits which have at least (or at most) that many parent commits.
# @option --no-max-parents <number>               Show only commits which have at least (or at most) that many parent commits.
# @flag --first-parent                            Follow only the first parent commit upon seeing a merge commit.
# @flag --not                                     Reverses the meaning of the ^ prefix (or lack thereof) for all following revision specifiers, up to the next --not.
# @flag --all                                     Pretend as if all the refs in refs/, along with HEAD, are listed on the command line as <commit>.
# @option --branches <pattern>                    Pretend as if all the refs in refs/heads are listed on the command line as <commit>.
# @option --tags <pattern>                        Pretend as if all the refs in refs/tags are listed on the command line as <commit>.
# @option --remotes <pattern>                     Pretend as if all the refs in refs/remotes are listed on the command line as <commit>.
# @option --glob <glob-pattern>                   Pretend as if all the refs matching shell glob <glob-pattern> are listed on the command line as <commit>.
# @option --exclude <glob-pattern>                Do not include refs matching <glob-pattern> that the next --all, --branches, --tags, --remotes, or --glob would otherwise consider.
# @flag --reflog                                  Pretend as if all objects mentioned by reflogs are listed on the command line as <commit>.
# @flag --alternate-refs                          Pretend as if all objects mentioned as ref tips of alternate repositories were listed on the command line.
# @flag --single-worktree                         By default, all working trees will be examined by the following options when there are more than one (see git-worktree(1)): --all, --reflog and --indexed-objects.
# @flag --ignore-missing                          Upon seeing an invalid object name in the input, pretend as if the bad input was not given.
# @flag --bisect                                  Pretend as if the bad bisection ref refs/bisect/bad was listed and as if it was followed by --not and the good bisection refs refs/bisect/good-* on the command line.
# @flag --stdin                                   In addition to the <commit> listed on the command line, read them from the standard input.
# @flag --cherry-mark                             Like --cherry-pick (see below) but mark equivalent commits with = rather than omitting them, and inequivalent ones with +.
# @flag --cherry-pick                             Omit any commit that introduces the same change as another commit on the “other side” when the set of commits are limited with symmetric difference.
# @flag --left-only                               List only commits on the respective side of a symmetric difference, i.e.
# @flag --right-only                              List only commits on the respective side of a symmetric difference, i.e.
# @flag --cherry                                  A synonym for --right-only --cherry-mark --no-merges; useful to limit the output to the commits on our side and mark those that have been applied to the other side of a forked history with git log --cherry upstream...mybranch, similar to git cherry upstream mybranch.
# @flag -g --walk-reflogs                         Instead of walking the commit ancestry chain, walk reflog entries from the most recent one to older ones.
# @flag --merge                                   After a failed merge, show refs that touch files having a conflict and don’t exist on all heads to merge.
# @flag --boundary                                Output excluded boundary commits.
# @arg commit-path*[`_choice_log`]
shortlog() {
    :;
}
# }} git shortlog

# {{ git show-branch
# @cmd Show branches and their commits
# @flag -r --remotes                          Show the remote-tracking branches.
# @flag -a --all                              Show both remote-tracking branches and local branches.
# @flag --current                             With this option, the command includes the current branch to the list of revs to be shown when it is not given on the command line.
# @flag --topo-order                          By default, the branches and their commits are shown in reverse chronological order.
# @flag --date-order                          This option is similar to --topo-order in the sense that no parent comes before all of its children, but otherwise commits are ordered according to their commit date.
# @flag --sparse                              By default, the output omits merges that are reachable from only one tip being shown.
# @option --more <n>                          Usually the command stops output upon showing the commit that is the common ancestor of all the branches.
# @flag --list                                Synonym to --more=-1
# @flag --merge-base                          Instead of showing the commit list, determine possible merge bases for the specified commits.
# @flag --independent                         Among the <reference>s given, display only the ones that cannot be reached from any other <reference>.
# @flag --no-name                             Do not show naming strings for each commit.
# @flag --sha1-name                           Instead of naming the commits using the path to reach them from heads (e.g. "master~2" to mean the grandparent of "master"), name them with the unique prefix of their object names.
# @flag --topics                              Shows only commits that are NOT on the first branch given.
# @option -g --reflog <<n>[,<base>]> <ref>    Shows <n> most recent ref-log entries for the given ref.
# @option --color <when>                      Color the status sign (one of these: * !  + -) of each commit corresponding to the branch it’s in.
# @flag --no-color                            Turn off colored output, even when the configuration file gives the default to color output.
# @arg rev-glob <<rev>|<glob>...>
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
# @flag -a --annotate                Make an unsigned, annotated tag object
# @flag -s --sign                    Make a GPG-signed tag, using the default e-mail address’s key.
# @flag --no-sign                    Override tag.gpgSign configuration variable that is set to force each and every tag to be signed.
# @option -u --local-user <keyid>    Make a GPG-signed tag, using the given key.
# @flag -f --force                   Replace an existing tag with the given name (instead of failing)
# @flag -d --delete                  Delete existing tags with the given names.
# @flag -v --verify                  Verify the GPG signature of the given tag names.
# @option -n <num>                   <num> specifies how many lines from the annotation, if any, are printed when using -l.
# @flag -l --list                    List tags.
# @option --sort <key>               Sort based on the key given.
# @option --color <when>             Respect any colors specified in the --format option.
# @flag -i --ignore-case             Sorting and filtering tags are case insensitive.
# @option --column <options>         Display tag listing in columns.
# @option --no-column <options>      Display tag listing in columns.
# @option --contains <commit>        Only list tags which contain the specified commit (HEAD if not specified).
# @option --no-contains <commit>     Only list tags which don’t contain the specified commit (HEAD if not specified).
# @option --merged <commit>          Only list tags whose commits are reachable from the specified commit (HEAD if not specified).
# @option --no-merged <commit>       Only list tags whose commits are not reachable from the specified commit (HEAD if not specified).
# @option --points-at <object>       Only list tags of the given object (HEAD if not specified).
# @option -m --message <msg>         Use the given tag message (instead of prompting).
# @option -F --file <file>           Take the tag message from the given file.
# @flag -e --edit                    The message taken from file with -F and command line with -m are usually used as the tag message unmodified.
# @option --cleanup <mode>           This option sets how the tag message is cleaned up.
# @flag --create-reflog              Create a reflog for the tag.
# @option --format <format>          A string that interpolates %(fieldname) from a tag ref being shown and the object it points at.
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

_choice_cmd() {
    _git --list-cmds=main,others,alias,nohelpers
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
        _choice_range
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
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch
}

_choice_reset() {
    if [[ -n "$argc__dash" ]]; then
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

_choice_push() {
    _argc_util_mode_kv ':'
    _choice_branch
    _choice_tag
}

_choice_checkout() {
    if [[ -n "$argc__dash" ]]; then
        if [[ "$argc__dash" -gt 0 ]]; then
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

_choice_remote_branch() {
    _git branch --remote --sort=-creatordate --format '%(refname:short)	%(subject)' | head -n 100
}

_choice_range() {
    _argc_util_mode_kv '..'
    _choice_ref 
}

_choice_config_key() {
    _git config --get-regexp '.*' | gawk '{print $1}'
}

_choice_ref() {
    _argc_util_parallel _choice_local_branch ::: _choice_remote_branch ::: _choice_tag
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
    _git tag --sort=-creatordate --format "%(refname)	%(subject)" | sed 's|refs/tags/||' | head -n 100
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

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"