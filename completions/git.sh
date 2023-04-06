#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg cmd![`_choice_cmd`]
# @flag --version
# @flag --help
# @option -C <path>
# @option -c <name:value>
# @option --exec-path <path>
# @flag --html-path
# @flag --man-path
# @flag --info-path
# @flag -p --paginate
# @flag -P --no-pager
# @flag --no-replace-objects
# @flag --bare
# @option --git-dir <path>
# @option --work-tree <path>
# @option --namespace <name>
# @option --super-prefix <path>
# @option --config-env <name:envvar>

# {{ git add
# @cmd
# @flag -n --dry-run
# @flag -v --verbose
# @flag -i --interactive
# @flag -p --patch
# @flag -e --edit
# @flag -f --force
# @flag -u --update
# @flag --renormalize
# @flag -N --intent-to-add
# @flag -A --all
# @flag --ignore-removal
# @flag --refresh
# @flag --ignore-errors
# @flag --ignore-missing
# @flag --sparse
# @option --chmod <+x,-x>
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg pathspec+[`_choice_unstaged_file`]
add() {
    :;
}
# }} git add


# {{ git cherry-pick
# @cmd
# @flag --quit
# @flag --continue
# @flag --abort
# @flag --skip
# @option --cleanup <mode>
# @flag -n --no-commit
# @flag -e --edit
# @flag -s --signoff
# @option -m --mainline <parent-num>
# @flag --rerere-autoupdate
# @option --strategy <strategy>
# @option -X --strategy-option <opt>
# @option -S --gpg-sign <key-id>
# @flag -x
# @flag --ff
# @flag --allow-empty
# @flag --allow-empty-message
# @flag --keep-redundant-commits
# @arg commit+
cherry-pick() {
    :;
}
# }} git cherry-pick


# {{ git fetch
# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @flag --all
# @flag --set-upstream
# @flag -a --append
# @flag --atomic
# @option --upload-pack <path>
# @flag -f --force
# @flag -m --multiple
# @flag -t --tags
# @flag -n
# @option -j --jobs <n>
# @flag --prefetch
# @flag -p --prune
# @flag -P --prune-tags
# @option --recurse-submodules <on-demand>
# @flag --dry-run
# @flag --write-fetch-head
# @flag -k --keep
# @flag -u --update-head-ok
# @flag --progress
# @option --depth <depth>
# @option --shallow-since <time>
# @option --shallow-exclude <revision>
# @option --deepen <n>
# @flag --unshallow
# @flag --update-shallow
# @option --refmap <refmap>
# @option -o --server-option <server-specific>
# @flag -4 --ipv4
# @flag -6 --ipv6
# @option --negotiation-tip <revision>
# @flag --negotiate-only
# @option --filter <args>
# @flag --auto-maintenance
# @flag --auto-gc
# @flag --show-forced-updates
# @flag --write-commit-graph
# @flag --stdin
# @arg repository[`_choice_remote`]
# @arg refspec*[`_choice_branch`]
fetch() {
    :;
}
# }} git fetch


# {{ git range-diff
# @cmd
# @arg base[`_choice_branch`]
# @arg newbase[`_choice_branch`]
# @option --creation-factor <n>
# @flag --no-dual-color
# @option --notes <notes>
# @flag --left-only
# @flag --right-only
# @flag -p --patch
# @flag -s --no-patch
# @flag -u
# @option -U --unified <n>
# @flag -W --function-context
# @flag --raw
# @flag --patch-with-raw
# @flag --patch-with-stat
# @flag --numstat
# @flag --shortstat
# @option -X --dirstat* <param1,param2>
# @flag --cumulative
# @option --dirstat-by-file* <param1,param2>
# @flag --check
# @flag --summary
# @flag --name-only
# @flag --name-status
# @option --stat <<width>[,<name-width>[,<count>]]>
# @option --stat-width <width>
# @option --stat-name-width <width>
# @option --stat-graph-width <width>
# @option --stat-count <count>
# @flag --compact-summary
# @flag --binary
# @flag --full-index
# @option --color <when>
# @option --ws-error-highlight <kind>
# @flag -z
# @option --abbrev <n>
# @option --src-prefix <prefix>
# @option --dst-prefix <prefix>
# @option --line-prefix <prefix>
# @flag --no-prefix
# @option --inter-hunk-context <n>
# @option --output-indicator-new <char>
# @option --output-indicator-old <char>
# @option --output-indicator-context <char>
# @option -B --break-rewrites <<n>[/<m>]>
# @option -M --find-renames <n>
# @flag -D --irreversible-delete
# @option -C --find-copies <n>
# @flag --find-copies-harder
# @flag --no-renames
# @flag --rename-empty
# @flag --follow
# @option -l <n>
# @flag --minimal
# @flag -w --ignore-all-space
# @flag -b --ignore-space-change
# @flag --ignore-space-at-eol
# @flag --ignore-cr-at-eol
# @flag --ignore-blank-lines
# @option -I --ignore-matching-lines <regex>
# @flag --indent-heuristic
# @flag --patience
# @flag --histogram
# @option --diff-algorithm <algorithm>
# @option --anchored <text>
# @option --word-diff <mode>
# @option --word-diff-regex <regex>
# @option --color-words <regex>
# @option --color-moved <mode>
# @option --color-moved-ws <mode>
# @option --relative <prefix>
# @flag -a --text
# @flag -R
# @flag --exit-code
# @flag --quiet
# @flag --ext-diff
# @flag --textconv
# @option --ignore-submodules <when>
# @option --submodule <format>
# @flag --ita-invisible-in-index
# @flag --ita-visible-in-index
# @option -S <string>
# @option -G <regex>
# @flag --pickaxe-all
# @flag --pickaxe-regex
# @option -O <file>
# @option --rotate-to <path>
# @option --skip-to <path>
# @option --find-object <object-id>
# @option --diff-filter <value>
# @option --output <file>
range-diff() {
    :;
}
# }} git range-diff


# {{ git rm
# @cmd
# @flag -n --dry-run
# @flag -q --quiet
# @flag --cached
# @flag -f --force
# @flag -r
# @flag --ignore-unmatch
# @flag --sparse
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg file+
rm() {
    :;
}
# }} git rm


# {{ git switch
# @cmd
# @option -c --create <branch>
# @option -C --force-create <branch>
# @flag --guess
# @flag --discard-changes
# @flag -q --quiet
# @option --recurse-submodules <checkout>
# @flag --progress
# @flag -m --merge
# @option --conflict[merge|diff3] <style>
# @flag -d --detach
# @flag -t --track
# @flag -f --force
# @option --orphan <new-branch>
# @flag --overwrite-ignore
# @flag --ignore-other-worktrees
# @arg branch![`_choice_branch`]
switch() {
    :;
}
# }} git switch


# {{ git am
# @cmd
# @flag -i --interactive
# @flag -3 --3way
# @flag -q --quiet
# @flag -s --signoff
# @flag -u --utf8
# @flag -k --keep
# @flag --keep-non-patch
# @flag -m --message-id
# @flag --keep-cr
# @flag --no-keep-cr
# @flag -c --scissors
# @option --quoted-cr <action>
# @option --whitespace <action>
# @flag --ignore-space-change
# @flag --ignore-whitespace
# @option --directory <root>
# @option --exclude <path>
# @option --include <path>
# @option -C <n>
# @option -p <num>
# @option --patch-format[mbox|mboxrd|stgit|stgit-series|hg] <format>
# @flag --reject
# @flag --resolvemsg*
# @flag --continue
# @flag -r --resolved
# @flag --skip
# @flag --abort
# @flag --quit
# @option --show-current-patch[diff|raw]
# @flag --committer-date-is-author-date
# @flag --ignore-date
# @flag --rerere-autoupdate
# @option -S --gpg-sign <key-id>
# @arg maildir*
am() {
    :;
}
# }} git am


# {{ git format-patch
# @cmd
# @flag -n --numbered
# @flag -N --no-numbered
# @flag -s --signoff
# @flag --stdout
# @flag --cover-letter
# @flag --numbered-files
# @option --suffix <sfx>
# @option --start-number <n>
# @option -v --reroll-count <reroll-count>
# @option --filename-max-length <n>
# @flag --rfc
# @option --cover-from-description <mode>
# @option --subject-prefix <prefix>
# @option -o --output-directory <dir>
# @flag -k --keep-subject
# @flag --no-binary
# @flag --zero-commit
# @flag --ignore-if-in-upstream
# @flag -p --no-stat
# @option --add-header <header>
# @option --to <email>
# @option --cc <email>
# @option --from <ident>
# @option --in-reply-to <message-id>
# @option --attach <boundary>
# @option --inline <boundary>
# @option --thread[shallow|deep] <style>
# @option --signature <signature>
# @option --base <base-commit>
# @option --signature-file <file>
# @flag -q --quiet
# @flag --progress
# @option --interdiff <rev>
# @option --range-diff <refspec>
# @option --creation-factor <n>
format-patch() {
    :;
}
# }} git format-patch


# {{ git log
# @cmd
# @flag -q --quiet
# @flag --source
# @flag --use-mailmap
# @flag --mailmap
# @option --decorate-refs <pattern>
# @option --decorate-refs-exclude <pattern>
# @flag --decorate*
# @option -L <range:file>
# @arg commit-path*[`_choice_log`]
log() {
    :;
}
# }} git log


# {{ git rebase
# @cmd
# @option --onto <revision>
# @flag --keep-base
# @flag --no-verify
# @flag -q --quiet
# @flag -v --verbose
# @flag -n --no-stat
# @flag --signoff
# @flag --committer-date-is-author-date
# @flag --reset-author-date
# @option -C <n>
# @flag --ignore-whitespace
# @option --whitespace <action>
# @flag -f --force-rebase
# @flag --no-ff
# @flag --continue
# @flag --skip
# @flag --abort
# @flag --quit
# @flag --edit-todo
# @flag --show-current-patch
# @flag --apply
# @flag -m --merge
# @flag -i --interactive
# @flag --rerere-autoupdate
# @option --empty <{drop,keep,ask}>
# @flag --autosquash
# @option -S --gpg-sign <key-id>
# @flag --autostash
# @option -x --exec <exec>
# @option -r --rebase-merges <mode>
# @flag --fork-point
# @option -s --strategy <strategy>
# @option -X --strategy-option <option>
# @flag --root
# @flag --reschedule-failed-exec
# @flag --reapply-cherry-picks
# @arg base[`_choice_branch`]
# @arg newbase[`_choice_branch`]
rebase() {
    :;
}
# }} git rebase


# {{ git send-email
# @cmd
send-email() {
    :;
}
# }} git send-email


# {{ git tag
# @cmd
# @arg tagname![`_choice_tag`]
# @flag -a --annotate
# @flag -s --sign
# @option -u --local-user <key-id>
# @flag -f --force
# @flag --create-reflog
# @option -n --message <message>
# @option -F --file <file>
# @flag -e --edit
# @option --cleanup <mode>
# @option --column <style>
# @option --contains <commit>
# @option --no-contains <commit>
# @option --merged <commit>
# @option --no-merged <commit>
# @option --sort <key>
# @option --points-at <object>
# @option --format <format>
# @option --color <when>
# @flag -i --ignore-case
# @flag -l --list
# @flag -d --delete
# @flag -v --verify
tag() {
    :;
}
# }} git tag


# {{ git apply
# @cmd
# @option --exclude <path>
# @option --include <path>
# @option -p <num>
# @flag --no-add
# @flag --stat
# @flag --numstat
# @flag --summary
# @flag --check
# @flag --index
# @flag -N --intent-to-add
# @flag --cached
# @flag --unsafe-paths
# @flag --apply
# @flag -3 --3way
# @option --build-fake-ancestor <file>
# @flag -z
# @option -C <n>
# @option --whitespace <action>
# @flag --ignore-space-change
# @flag --ignore-whitespace
# @flag -R --reverse
# @flag --unidiff-zero
# @flag --reject
# @flag --allow-overlap
# @flag -v --verbose
# @flag --inaccurate-eof
# @flag --recount
# @option --directory <root>
# @arg patch+
apply() {
    :;
}
# }} git apply


# {{ git clean
# @cmd
# @flag -q --quiet
# @flag -n --dry-run
# @flag -f --force
# @flag -i --interactive
# @flag -d
# @option -e --exclude <pattern>
# @flag -x
# @flag -X
# @arg paths+[`_choice_unstaged_file`]
clean() {
    :;
}
# }} git clean


# {{ git fsck
# @cmd
# @flag -v --verbose
# @flag --unreachable
# @flag --dangling
# @flag --tags
# @flag --root
# @flag --cache
# @flag --reflogs
# @flag --full
# @flag --connectivity-only
# @flag --strict
# @flag --lost-found
# @flag --progress
# @flag --name-objects
# @arg object*
fsck() {
    :;
}
# }} git fsck


# {{ git maintenance
# @cmd
maintenance() {
    :;
}
# }} git maintenance


# {{ git reflog
# @cmd
reflog() {
    :;
}

# @cmd
# @flag -q --quiet
# @flag --source
# @flag --use-mailmap
# @flag --mailmap
# @option --decorate-refs <pattern>
# @option --decorate-refs-exclude <pattern>
# @option --decorate*
# @option -L <range:file>
reflog::show() {
    :;
}

# @cmd
# @arg refs+
# @option --expire <time>
# @option --expire-unreachable <time>
# @flag --rewrite
# @flag --updateref
# @flag --stale-fix
# @flag -n --dry-run
# @flag --verbose
# @flag --all
reflog::expire() {
    :;
}

# @cmd
# @arg refs+
# @flag --rewrite
# @flag --updateref
# @flag -n --dry-run
# @flag --verbose
reflog::delete() {
    :;
}

# @cmd
# @arg ref!
reflog::exists() {
    :;
}
# }} git reflog


# {{ git shortlog
# @cmd
# @flag -c --committer
# @flag -n --numbered
# @flag -s --summary
# @flag -e --email
# @option -w <<w>[,<i1>[,<i2>]]>
# @option --group <field>
# @arg commit-path*[`_choice_log`]
shortlog() {
    :;
}
# }} git shortlog


# {{ git whatchanged
# @cmd
# @flag -q --quiet
# @flag --source
# @flag --use-mailmap
# @flag --mailmap
# @option --decorate-refs <pattern>
# @option --decorate-refs-exclude <pattern>
# @flag --decorate*
# @option -L <range:file>
# @arg commit-path*
whatchanged() {
    :;
}
# }} git whatchanged


# {{ git archive
# @cmd
# @option --format <fmt>
# @option --prefix <prefix>
# @option --add-file <file>
# @option -o --output <file>
# @flag --worktree-attributes
# @flag -v --verbose
# @flag -l --list
# @option --remote <repo>
# @option --exec <command>
# @arg tree-ish!
# @arg path*
archive() {
    :;
}
# }} git archive


# {{ git gc
# @cmd
# @flag -q --quiet
# @option --prune <date>
# @flag --aggressive
# @flag --auto
# @flag --force
# @flag --keep-largest-pack
gc() {
    :;
}
# }} git gc


# {{ git merge
# @cmd
# @flag -n
# @flag --stat
# @flag --summary
# @option --log <n>
# @flag --squash
# @flag --commit
# @flag -e --edit
# @option --cleanup <mode>
# @flag --ff
# @flag --ff-only
# @flag --rerere-autoupdate
# @flag --verify-signatures
# @option -s --strategy <strategy>
# @option -X --strategy-option <option=value>
# @option -m --message <message>
# @option -F --file <path>
# @flag -v --verbose
# @flag -q --quiet
# @flag --abort
# @flag --quit
# @flag --continue
# @flag --allow-unrelated-histories
# @flag --progress
# @option -S --gpg-sign <key-id>
# @flag --autostash
# @flag --overwrite-ignore
# @flag --signoff
# @flag --no-verify
# @arg pathspecs*[`_choice_branch`]
merge() {
    :;
}
# }} git merge


# {{ git remote
# @cmd
# @flag -v --verbose
remote() {
    :;
}

# @cmd
# @flag -f --fetch
# @flag --tags
# @option -t --track <branch>
# @option -m --master <branch>
# @option --mirror <push,fetch>
# @arg name![`_choice_remote`]
# @arg url!
remote::add() {
    :;
}

# @cmd
# @arg old![`_choice_remote`]
# @arg new![`_choice_remote`]
remote::rename() {
    :;
}

# @cmd
# @arg name![`_choice_remote`]
remote::remove() {
    :;
}

# @cmd
# @flag -a --auto
# @flag -d --delete
# @arg name![`_choice_remote`]
# @arg branch
remote::set-head() {
    :;
}

# @cmd
# @flag -n
# @arg name![`_choice_remote`]
remote::show() {
    :;
}

# @cmd
# @flag -n --dry-run
# @arg name![`_choice_remote`]
remote::prune() {
    :;
}


# @cmd
# @flag -p --prune
# @arg remote*
remote::update() {
    :;
}

# @cmd
# @flag --add
# @arg name![`_choice_remote`]
# @arg branch+
remote::set-branches() {
    :;
}

# @cmd
# @flag --push
# @flag --all
# @arg name![`_choice_remote`]
remote::get-url() {
    :;
}

# @cmd
# @flag --push
# @flag --add
# @flag --delete
# @arg name![`_choice_remote`]
# @arg newurl!
# @arg oldurl
remote::set-url() {
    :;
}
# }} git remote


# {{ git show
# @cmd
# @flag -q --quiet
# @flag --source
# @flag --use-mailmap
# @flag --mailmap
# @option --decorate-refs <pattern>
# @option --decorate-refs-exclude <pattern>
# @flag --decorate*
# @option -L <range:file>
# @arg object!
# @arg commit-path*[`_choice_show`]
show() {
    :;
}
# }} git show


# {{ git worktree
# @cmd
worktree() {
    :;
}

# @cmd
# @arg path!
# @arg commit-ish
# @flag -f --force
# @option -b <branch>
# @option -B <branch>
# @flag -d --detach
# @flag --checkout
# @flag --lock
# @option --reason <string>
# @flag -q --quiet
# @flag --track
# @flag --guess-remote
worktree::add() {
    :;
}

# @cmd
# @flag --porcelain
# @flag -v --verbose
# @option --expire <expiry-date>
worktree::list() {
    :;
}

# @cmd
# @arg path!
# @option --reason <string>
worktree::lock() {
    :;
}

# @cmd
# @arg worktree!
# @arg new-path!
# @flag -f --force
worktree::move() {
    :;
}

# @cmd
# @flag -n --dry-run
# @flag -v --verbose
# @option --expire <expiry-date>
worktree::prune() {
    :;
}

# @cmd
# @arg worktree!
# @flag -f --force
worktree::remove() {
    :;
}

# @cmd
# @arg path!
worktree::unlock() {
    :;
}
# }} git worktree


# {{ git bisect
# @cmd
bisect() {
    :;
}

# @cmd
# @option --term-new term
# @option --term-bad term
# @option --term-old term
# @option --term-good term
# @flag --no-checkout
# @flag --first-parent
bisect::start() {
    :;
}

# @cmd
# @arg rev
bisect::bad() {
    :;
}

# @cmd
# @arg rev
bisect::new() {
    :;
}

# @cmd
# @arg rev*
bisect::good() {
    :;
}

# @cmd
# @arg rev*
bisect::old() {
    :;
}

# @cmd
# @flag --term-good
# @flag --term-bad
bisect::terms() {
    :;
}

# @cmd
# @arg rev-range*
bisect::skip() {
    :;
}

# @cmd
bisect::next() {
    :;
}

# @cmd
# @arg commit
bisect::reset() {
    :;
}

# @cmd
bisect::visualize() {
    :;
}

# @cmd
bisect::view() {
    :;
}

# @cmd
# @arg logfile!
bisect::replay() {
    :;
}

# @cmd
bisect::log() {
    :;
}

# @cmd
# @arg cmd*
bisect::run() {
    :;
}

# }} git bisect


# {{ git clone
# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @flag --progress
# @flag --reject-shallow
# @flag -n --no-checkout
# @flag --bare
# @flag --mirror
# @flag -l --local
# @flag --no-hardlinks
# @flag -s --shared
# @option --recurse-submodules <pathspec>
# @option --recursive <pathspec>
# @option -j --jobs <n>
# @option --template <template-directory>
# @option --reference <repo>
# @option --reference-if-able <repo>
# @flag --dissociate
# @option -o --origin <name>
# @option -b --branch <branch>
# @option -u --upload-pack <path>
# @option --depth <depth>
# @option --shallow-since <time>
# @option --shallow-exclude <revision>
# @flag --single-branch
# @flag --no-tags
# @flag --shallow-submodules
# @option --separate-git-dir <gitdir>
# @option -c --config <key=value>
# @option --server-option <server-specific>
# @flag -4 --ipv4
# @flag -6 --ipv6
# @option --filter <args>
# @flag --remote-submodules
# @flag --sparse
# @arg repo!
# @arg dir
clone() {
    :;
}
# }} git clone


# {{ git mergetool
# @cmd
# @option --tool <tool>
# @flag --tool-help
# @flag -y
# @flag --no-prompt
# @flag --prompt
# @flag -g
# @flag --gui
# @flag --no-gui
# @option -O <orderfile>
# @arg files*
mergetool() {
    :;
}
# }} git mergetool


# {{ git repack
# @cmd
# @flag -a
# @flag -A
# @flag -d
# @flag -f
# @flag -F
# @flag -n
# @flag -q --quiet
# @flag -l --local
# @flag -b --write-bitmap-index
# @flag -i --delta-islands
# @option --unpack-unreachable <approxidate>
# @flag -k --keep-unreachable
# @option --window <n>
# @option --window-memory <bytes>
# @option --depth <n>
# @option --threads <n>
# @option --max-pack-size <bytes>
# @flag --pack-kept-objects
# @option --keep-pack <name>
# @option -g --geometric <n>
# @flag -m --write-midx
repack() {
    :;
}
# }} git repack


# {{ git show-branch
# @cmd
# @flag -a --all
# @flag -r --remotes
# @option --color <when>
# @option --more <n>
# @flag --list
# @flag --no-name
# @flag --current
# @flag --sha1-name
# @flag --merge-base
# @flag --independent
# @flag --topo-order
# @flag --topics
# @flag --sparse
# @flag --date-order
# @option -g --reflog <<n>[,<base>]>
# @arg commit-path*[`_choice_show`]
show-branch() {
    :;
}
# }} git show-branch


# {{ git blame
# @cmd
# @flag --incremental
# @flag -b
# @flag --root
# @flag --show-stats
# @flag --progress
# @flag --score-debug
# @option -f --show-name[auto]
# @option -n --show-number[off]
# @flag -p --porcelain
# @flag --line-porcelain
# @option -c[off]
# @option -t[off]
# @option -l[off]
# @option -s[off]
# @option -e --show-email[off]
# @flag -w
# @option --ignore-rev <rev>
# @option --ignore-revs-file <file>
# @flag --color-lines
# @flag --color-by-age
# @flag --minimal
# @option -S <file>
# @option --contents <file>
# @option -C <score>
# @option -M <score>
# @option -L <range>
# @option --abbrev <n>
# @arg file!
blame() {
    :;
}
# }} git blame


# {{ git commit
# @cmd
# @flag -q --quiet
# @flag -v --verbose
# @option -F --file <file>
# @option --author <author>
# @option --date <date>
# @option -m --message <message>
# @option -c --reedit-message <commit>
# @option -C --reuse-message <commit>
# @option --fixup <commit>
# @option --squash <commit>
# @flag --reset-author
# @option --trailer <trailer>
# @flag -s --signoff
# @option -t --template <file>
# @flag -e --edit
# @option --cleanup <mode>
# @flag --status
# @option -S --gpg-sign <key-id>
# @flag -a --all
# @flag -i --include
# @flag --interactive
# @flag -p --patch
# @flag -o --only
# @flag -n --no-verify
# @flag --dry-run
# @flag --short
# @flag --branch
# @flag --ahead-behind
# @flag --porcelain
# @flag --long
# @flag -z --null
# @flag --amend
# @flag --no-post-rewrite
# @option -u --untracked-files[all|normal|no] <mode>
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg pathspec+
commit() {
    :;
}
# }} git commit


# {{ git grep
# @cmd
# @flag --cached
# @flag --no-index
# @flag --untracked
# @flag --exclude-standard
# @flag --recurse-submodules
# @flag -v --invert-match
# @flag -i --ignore-case
# @flag -w --word-regexp
# @flag -a --text
# @flag -I
# @flag --textconv
# @flag -r --recursive
# @option --max-depth <depth>
# @flag -E --extended-regexp
# @flag -G --basic-regexp
# @flag -F --fixed-strings
# @flag -P --perl-regexp
# @flag -n --line-number
# @flag --column
# @flag -h
# @flag -H
# @flag --full-name
# @flag -l --files-with-matches
# @flag --name-only
# @flag -L --files-without-match
# @flag -z --null
# @flag -o --only-matching
# @flag -c --count
# @option --color <when>
# @flag --break
# @flag --heading
# @option -C --context <n>
# @option -B --before-context <n>
# @option -A --after-context <n>
# @option --threads <n>
# @flag -p --show-function
# @flag -W --function-context
# @option -f <file>
# @option -e <pattern>
# @flag --and
# @flag --or
# @flag --not
# @flag -q --quiet
# @flag --all-match
# @option -O --open-files-in-pager <pager>
# @flag --ext-grep
# @arg _pattern!
# @arg paths*
grep() {
    :;
}
# }} git grep


# {{ git mv
# @cmd
# @flag -v --verbose
# @flag -n --dry-run
# @flag -f --force
# @flag -k
# @flag --sparse
# @arg source-file!
# @arg dest-dir!
mv() {
    :;
}
# }} git mv


# {{ git replace
# @cmd
# @flag -l --list
# @flag -d --delete
# @flag -e --edit
# @flag -g --graft
# @flag --convert-graft-file
# @flag -f --force
# @flag --raw
# @option --format <format>
replace() {
    :;
}
# }} git replace


# {{ git sparse-checkout
# @cmd
sparse-checkout() {
    :;
}

# @cmd
# @flag --cone
# @flag --sparse-index
sparse-checkout::init() {
    :;
}

# @cmd
sparse-checkout::list() {
    :;
}

# @cmd
# @flag --stdin
sparse-checkout::set() {
    :;
}

# @cmd
# @flag --stdin
sparse-checkout::add() {
    :;
}

# @cmd
sparse-checkout::reapply() {
    :;
}

# @cmd
sparse-checkout::disable() {
    :;
}

# }} git sparse-checkout


# {{ git branch
# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @option -t --track <branch> <commit>
# @option -u --set-upstream-to[`_choice_branch`][`_choice_branch`] <branch>
# @option --unset-upstream[`_choice_branch`] <branch>
# @option --color <when>
# @flag -r --remotes
# @option --contains <commit>
# @option --no-contains <commit>
# @option --abbrev <n>
# @flag -a --all
# @option -d --delete[`_choice_branch`] <branch>
# @option -D[`_choice_branch`] <branch>
# @option -m --move[`_choice_branch`] <branch> <branch>
# @flag -M
# @flag -c --copy
# @flag -C
# @flag -l --list
# @flag --show-current
# @flag --create-reflog
# @option --edit-description[`_choice_branch`] <branch>
# @flag -f --force
# @option --merged <commit>
# @option --no-merged <commit>
# @option --column <style>
# @option --sort <key>
# @option --points-at <object>
# @flag -i --ignore-case
# @option --format <format>
branch() {
    :;
}
# }} git branch


# {{ git config
# @cmd
# @flag --global
# @flag --system
# @flag --local
# @flag --worktree
# @option -f --file <file>
# @option --blob <blob-id>
# @flag --get
# @flag --get-all
# @flag --get-regexp
# @flag --get-urlmatch
# @flag --replace-all
# @flag --add
# @flag --unset
# @flag --unset-all
# @flag --rename-section
# @flag --remove-section
# @flag -l --list
# @flag --fixed-value
# @flag -e --edit
# @flag --get-color
# @flag --get-colorbool
# @flag -t --type
# @flag --bool
# @flag --int
# @flag --bool-or-int
# @flag --bool-or-str
# @flag --path
# @flag --expiry-date
# @flag -z --null
# @flag --name-only
# @flag --includes
# @flag --show-origin
# @flag --show-scope
# @option --default <value>
# @arg key![`_choice_config_key`]
# @arg vlaue!
config() {
    :;
}
# }} git config


# {{ git notes
# @cmd
# @option --ref <notes-ref>
notes() {
    :;
}

# @cmd
notes::list() {
    :;
}

# @cmd
# @option -m --message <message>
# @option -F --file <file>
# @option -c --reedit-message <object>
# @option -C --reuse-message <object>
# @flag --allow-empty
# @flag -f --force
# @arg object
notes::add() {
    :;
}

# @cmd
# @flag -f --force
# @flag --stdin
# @option --for-rewrite <command>
# @arg from-object!
# @arg to-object!
notes::copy() {
    :;
}

# @cmd
# @option -m --message <message>
# @option -F --file <file>
# @option -c --reedit-message <object>
# @option -C --reuse-message <object>
# @flag --allow-empty
# @arg object
notes::append() {
    :;
}

# @cmd
# @option -m --message <message>
# @option -F --file <file>
# @option -c --reedit-message <object>
# @option -C --reuse-message <object>
# @flag --allow-empty
# @arg object
notes::edit() {
    :;
}

# @cmd
# @arg object
notes::show() {
    :;
}

# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @flag --commit
# @flag --abort
# @arg note-ref
notes::merge() {
    :;
}


# @cmd
# @flag --ignore-missing
# @flag --stdin
# @arg object
notes::remove() {
    :;
}

# @cmd
# @flag -n --dry-run
# @flag -v --verbose
notes::prune() {
    :;
}

# @cmd
notes::get-ref() {
    :;
}

# }} git notes


# {{ git request-pull
# @cmd
# @flag -p
request-pull() {
    :;
}
# }} git request-pull


# {{ git stage
# @cmd
# @flag -n --dry-run
# @flag -v --verbose
# @flag -i --interactive
# @flag -p --patch
# @flag -e --edit
# @flag -f --force
# @flag -u --update
# @flag --renormalize
# @flag -N --intent-to-add
# @flag -A --all
# @flag --ignore-removal
# @flag --refresh
# @flag --ignore-errors
# @flag --ignore-missing
# @flag --sparse
# @option --chmod <+x,-x>
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg pathspec+
stage() {
    :;
}
# }} git stage


# {{ git describe
# @cmd
# @flag --contains
# @flag --debug
# @flag --all
# @flag --tags
# @flag --long
# @flag --first-parent
# @option --abbrev <n>
# @flag --exact-match
# @option --candidates <n>
# @option --match <pattern>
# @option --exclude <pattern>
# @flag --always
# @option --dirty <mark>
# @option --broken <mark>
# @arg commit-ish*
describe() {
    :;
}
# }} git describe


# {{ git prune
# @cmd
# @flag -n --dry-run
# @flag -v --verbose
# @flag --progress
# @option --expire <expiry-date>
# @flag --exclude-promisor-objects
# @arg head+
prune() {
    :;
}
# }} git prune


# {{ git reset
# @cmd
# @flag -q --quiet
# @flag --mixed
# @flag --soft
# @flag --hard
# @flag --merge
# @flag --keep
# @option --recurse-submodules <reset>
# @flag -p --patch
# @flag -N --intent-to-add
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg treeish-path+
reset() {
    :;
}
# }} git reset


# {{ git stash
# @cmd
stash() {
    :;
}

# @cmd
stash::list() {
    :;
}

# @cmd
# @arg stash[`_choice_stash`]
stash::show() {
    :;
}

# @cmd
# @flag -q --quiet
# @arg stash[`_choice_stash`]
stash::drop() {
    :;
}

# @cmd
# @flag -q --quiet
# @option --index
# @arg stash[`_choice_stash`]
stash::pop() {
    :;
}

# @cmd
# @flag -q --quiet
# @flag --index
# @arg stash[`_choice_stash`]
stash::apply() {
    :;
}

# @cmd
# @arg branch!
# @arg stash[`_choice_stash`]
stash::branch() {
    :;
}

# @cmd
stash::clear() {
    :;
}

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

# }} git stash


# {{ git checkout
# @cmd
# @option -b <branch>
# @option -B <branch>
# @flag -l
# @flag --guess
# @flag --overlay
# @flag -q --quiet
# @option --recurse-submodules <checkout>
# @flag --progress
# @flag -m --merge
# @option --conflict[merge|diff3] <style>
# @flag -d --detach
# @flag -t --track
# @flag -f --force
# @option --orphan <new-branch>
# @flag --overwrite-ignore
# @flag --ignore-other-worktrees
# @flag -2 --ours
# @flag -3 --theirs
# @flag -p --patch
# @flag --ignore-skip-worktree-bits
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg branch-files+[`_choice_checkout`]
checkout() {
    :;
}
# }} git checkout


# {{ git diff
# @cmd
# @arg commit-path*[`_choice_diff`]
# @flag -z
# @flag -p
# @flag -u
# @flag --patch-with-raw
# @flag --stat
# @flag --numstat
# @flag --patch-with-stat
# @flag --name-only
# @flag --name-status
# @flag --full-index
# @option --abbrev <n>
# @flag -R
# @flag -B
# @flag -M
# @flag -C
# @flag --find-copies-harder
# @option -l <n>
# @option -O <file>
# @option -S <string>
# @flag --pickaxe-all
# @flag -a --text
diff() {
    :;
}
# }} git diff


# {{ git init
# @cmd
# @option --template <template-directory>
# @flag --bare
# @option --shared <permissions>
# @flag -q --quiet
# @option --separate-git-dir <gitdir>
# @option -b --initial-branch <name>
# @option --object-format <hash>
# @arg directory
init() {
    :;
}
# }} git init


# {{ git pull
# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @flag --progress
# @option --recurse-submodules <on-demand>
# @option -r --rebase <false|true|merges|interactive>
# @flag -n
# @flag --stat
# @option --log <n>
# @flag --signoff*
# @flag --squash
# @flag --commit
# @flag --edit
# @option --cleanup <mode>
# @flag --ff
# @flag --ff-only
# @flag --verify
# @flag --verify-signatures
# @flag --autostash
# @option -s --strategy <strategy>
# @option -X --strategy-option <option=value>
# @option -S --gpg-sign <key-id>
# @flag --allow-unrelated-histories
# @flag --all
# @flag -a --append
# @option --upload-pack <path>
# @flag -f --force
# @flag -t --tags
# @flag -p --prune
# @option -j --jobs <n>
# @flag --dry-run
# @flag -k --keep
# @option --depth <depth>
# @option --shallow-since <time>
# @option --shallow-exclude <revision>
# @option --deepen <n>
# @flag --unshallow
# @flag --update-shallow
# @option --refmap <refmap>
# @option -o --server-option <server-specific>
# @flag -4 --ipv4
# @flag -6 --ipv6
# @option --negotiation-tip <revision>
# @flag --show-forced-updates
# @flag --set-upstream
# @arg remote[`_choice_remote`]
# @arg refspec[`_choice_remote_branch`]
pull() {
    :;
}
# }} git pull


# {{ git restore
# @cmd
# @option -s --source <tree-ish>
# @flag -S --staged
# @flag -W --worktree
# @flag --ignore-unmerged
# @flag --overlay
# @flag -q --quiet
# @option --recurse-submodules <checkout>
# @flag --progress
# @flag -m --merge
# @option --conflict[merge|diff3] <style>
# @flag -2 --ours
# @flag -3 --theirs
# @flag -p --patch
# @flag --ignore-skip-worktree-bits
# @option --pathspec-from-file <file>
# @flag --pathspec-file-nul
# @arg files+[`_choice_restore_file`]
restore() {
    :;
}
# }} git restore


# {{ git status
# @cmd
# @flag -v --verbose
# @flag -s --short
# @flag -b --branch
# @flag --show-stash
# @flag --ahead-behind
# @option --porcelain <version>
# @flag --long
# @flag -z --null
# @option -u --untracked-files[all|normal|no] <mode>
# @option --ignored[traditional|matching|no] <mode>
# @option --ignore-submodules[all|dirty|untracked] <when>
# @option --column <style>
# @flag --no-renames
# @option -M --find-renames <n>
# @arg pathspec+
status() {
    :;
}
# }} git status


# {{ git cherry
# @cmd
# @option --abbrev <n>
# @flag -v --verbose
# @arg head*
cherry() {
    :;
}
# }} git cherry


# {{ git difftool
# @cmd
# @flag -g --gui
# @flag -d --dir-diff
# @flag -y --no-prompt
# @flag --symlinks
# @option -t --tool <tool>
# @flag --tool-help
# @flag --trust-exit-code
# @option -x --extcmd <command>
# @flag --no-index
# @arg commit-path*[`_choice_diff`]
difftool() {
    :;
}
# }} git difftool


# {{ git instaweb
# @cmd
# @flag -l --local
# @flag -p --port*
# @flag -d --httpd*
# @flag -b --browser*
# @flag -m --module-path*
# @flag --stop
# @flag --start
# @flag --restart
instaweb() {
    :;
}
# }} git instaweb


# {{ git push
# @cmd
# @flag -v --verbose
# @flag -q --quiet
# @option --repo <repository>
# @flag --all
# @flag --mirror
# @flag -d --delete
# @flag --tags
# @flag -n --dry-run
# @flag --porcelain
# @flag -f --force
# @option --force-with-lease <<refname>:<expect>>
# @flag --force-if-includes
# @option --recurse-submodules <check,on-demand,no>
# @flag --thin
# @option --receive-pack <receive-pack>
# @option --exec <receive-pack>
# @flag -u --set-upstream
# @flag --progress
# @flag --prune
# @flag --no-verify
# @flag --follow-tags
# @option --signed <yes,no,if-asked>
# @flag --atomic
# @option -o --push-option <server-specific>
# @flag -4 --ipv4
# @flag -6 --ipv6
# @arg remote![`_choice_remote`]
# @arg refspec![`_choice_push`]
push() {
    :;
}
# }} git push


# {{ git revert
# @cmd
# @flag --quit
# @flag --continue
# @flag --abort
# @flag --skip
# @option --cleanup <mode>
# @flag -n --no-commit
# @flag -e --edit
# @flag -s --signoff
# @option -m --mainline <parent-number>
# @flag --rerere-autoupdate
# @option --strategy <strategy>
# @option -X --strategy-option <option>
# @option -S --gpg-sign <key-id>
# @arg commit-ish+
revert() {
    :;
}
# }} git revert


# {{ git submodule
# @cmd
# @flag --quiet
submodule() {
    :;
}

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

# @cmd
# @flag --recursive
# @arg path*
submodule::status() {
    :;
}

# @cmd
# @arg path*
submodule::init() {
    :;
}

# @cmd
# @flag -f --force
# @flag --all
# @arg path*
submodule::deinit() {
    :;
}

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

# @cmd
# @flag --default
# @option --branch <branch>
# @arg path
submodule::set-branch() {
    :;
}

# @cmd
# @arg path!
# @arg newurl!
submodule::set-url() {
    :;
}

# @cmd
# @flag --cached
# @flag --files
# @option --summary-limit <n>
# @arg commit
# @arg path*
submodule::summary() {
    :;
}

# @cmd
# @flag --recursive
# @arg cmd
submodule::foreach() {
    :;
}

# @cmd
# @flag --recursive
# @arg path*
submodule::sync() {
    :;
}

# @cmd
# @arg path*
submodule::absorbgitdirs() {
    :;
}

# }} git submodule


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

_argc_util_platform_path() {
	path="$1"
	if [[ -z "$path" ]]; then
		path="$(cat)"
	fi
	if _argc_util_exist_cygpath; then
		cygpath -w "$path"
	else
		echo "$path"
	fi
}


_argc_util_exist_cygpath() {
    if [[ -z $_argc_var_exist_cygpath ]]; then
        if [[ -x "$(command -v cygpath)" ]]; then
            _argc_var_exist_cygpath=0
        else
            _argc_var_exist_cygpath=1
        fi
    fi
    return $_argc_var_exist_cygpath
}


eval "$(argc --argc-eval "$0" "$@")"