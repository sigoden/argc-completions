#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                 Print help (see a summary with '-h')
# @flag -V --version              Print version
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)

# {{ jj abandon
# @cmd Abandon a revision
# @flag -s --summary              Do not print every abandoned commit on a separate line
# @flag --restore-descendants     Do not modify the content of the children of the abandoned commits
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revisions*                 The revision(s) to abandon
abandon() {
    :;
}
# }} jj abandon

# {{ jj backout
# @cmd Apply the reverse of a revision on top of another revision
# @option -r --revisions          The revision(s) to apply the reverse of
# @option -d --destination        The revision to apply the reverse changes on top of
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
backout() {
    :;
}
# }} jj backout

# {{ jj bookmark
# @cmd Manage bookmarks
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
bookmark() {
    :;
}

# {{{ jj bookmark create
# @cmd Create a new bookmark [aliases: c]
# @option -r --revision              The bookmark's target revision
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names+[`_choice_bookmark`]    The bookmarks to create
bookmark::create() {
    :;
}
# }}} jj bookmark create

# {{{ jj bookmark delete
# @cmd Delete an existing bookmark and propagate the deletion to remotes on the next push [aliases: d]
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names+[`_choice_bookmark`]    The bookmarks to delete
bookmark::delete() {
    :;
}
# }}} jj bookmark delete

# {{{ jj bookmark forget
# @cmd Forget everything about a bookmark, including its local and remote targets [aliases: f]
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names+[`_choice_bookmark`]    The bookmarks to forget
bookmark::forget() {
    :;
}
# }}} jj bookmark forget

# {{{ jj bookmark list
# @cmd List bookmarks and their targets [aliases: l]
# @flag -a --all-remotes             Show all tracking and non-tracking remote bookmarks including the ones whose targets are synchronized with the local bookmarks
# @flag -t --tracked                 Show remote tracked bookmarks only.
# @flag -c --conflicted              Show conflicted bookmarks only
# @option -r --revisions             Show bookmarks whose local targets are in the given revisions
# @option -T --template              Render each bookmark using the given template
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names*[`_choice_bookmark`]    Show bookmarks whose local name matches
bookmark::list() {
    :;
}
# }}} jj bookmark list

# {{{ jj bookmark move
# @cmd Move existing bookmarks to target revision [aliases: m]
# @option --from <REVISIONS>         Move bookmarks from the given revisions
# @option --to <REVISION>            Move bookmarks to this revision
# @flag -B --allow-backwards         Allow moving bookmarks backwards or sideways
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names*[`_choice_bookmark`]    Move bookmarks matching the given name patterns
bookmark::move() {
    :;
}
# }}} jj bookmark move

# {{{ jj bookmark rename
# @cmd Rename `old` bookmark name to `new` bookmark name [aliases: r]
# @flag -h --help                  Print help (see a summary with '-h')
# @option -R --repository          Path to repository to operate on
# @flag --ignore-working-copy      Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable         Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                    Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                    Silence non-primary command output
# @flag --no-pager                 Disable the pager
# @option --config-toml <TOML>     Additional configuration options (can be repeated)
# @arg old![`_choice_bookmark`]    The old name of the bookmark
# @arg new!                        The new name of the bookmark
bookmark::rename() {
    :;
}
# }}} jj bookmark rename

# {{{ jj bookmark set
# @cmd Create or update a bookmark to point to a certain commit [aliases: s]
# @option -r --revision              The bookmark's target revision
# @flag -B --allow-backwards         Allow moving the bookmark backwards or sideways
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg names+[`_choice_bookmark`]    The bookmarks to update
bookmark::set() {
    :;
}
# }}} jj bookmark set

# {{{ jj bookmark track
# @cmd Start tracking given remote bookmarks [aliases: t]
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg bookmark-remote+[`_choice_bookmark_remote`] <BOOKMARK@REMOTE>  Remote bookmarks to track
bookmark::track() {
    :;
}
# }}} jj bookmark track

# {{{ jj bookmark untrack
# @cmd Stop tracking given remote bookmarks
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg bookmark-remote+[`_choice_bookmark_remote`] <BOOKMARK@REMOTE>  Remote bookmarks to untrack
bookmark::untrack() {
    :;
}
# }}} jj bookmark untrack
# }} jj bookmark

# {{ jj commit
# @cmd Update the description and create a new change on top [aliases: ci]
# @flag -i --interactive          Interactively choose which changes to include in the first commit
# @option --tool <NAME>           Specify diff editor to be used (implies --interactive)
# @option -m --message            The change description to use (don't open editor)
# @flag --reset-author            Reset the author to the configured user
# @option --author                Set author to the provided string
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Put these paths in the first commit
commit() {
    :;
}
# }} jj commit

# {{ jj config
# @cmd Manage config options
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
config() {
    :;
}

# {{{ jj config edit
# @cmd Start an editor on a jj config file [aliases: e]
# @flag --user                    Target the user-level config
# @flag --repo                    Target the repo-level config
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
config::edit() {
    :;
}
# }}} jj config edit

# {{{ jj config get
# @cmd Get the value of a given config option.
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg name![`_choice_config`]
config::get() {
    :;
}
# }}} jj config get

# {{{ jj config list
# @cmd List variables set in config file, along with their values [aliases: l]
# @flag --include-defaults        Whether to explicitly include built-in default values in the list
# @flag --include-overridden      Allow printing overridden values
# @flag --user                    Target the user-level config
# @flag --repo                    Target the repo-level config
# @option -T --template           Render each variable using the given template
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg name[`_choice_config`]     An optional name of a specific config option to look up
config::list() {
    :;
}
# }}} jj config list

# {{{ jj config path
# @cmd Print the path to the config file [aliases: p]
# @flag --user                    Target the user-level config
# @flag --repo                    Target the repo-level config
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
config::path() {
    :;
}
# }}} jj config path

# {{{ jj config set
# @cmd Update config file to set the given option to a given value [aliases: s]
# @flag --user                    Target the user-level config
# @flag --repo                    Target the repo-level config
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg name![`_choice_config`]
# @arg value!
config::set() {
    :;
}
# }}} jj config set
# }} jj config

# {{ jj describe
# @cmd Update the change description or other metadata [aliases: desc]
# @option -m --message            The change description to use (don't open editor)
# @flag --stdin                   Read the change description from stdin
# @flag --no-edit                 Don't open an editor
# @flag --reset-author            Reset the author to the configured user
# @option --author                Set author to the provided string
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revisions*                 The revision(s) whose description to edit
describe() {
    :;
}
# }} jj describe

# {{ jj diff
# @cmd Compare file contents between two revisions
# @option -r --revision           Show changes in this revision, compared to its parent(s)
# @option --from                  Show changes from this revision
# @option --to                    Show changes to this revision
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Restrict the diff to these paths
diff() {
    :;
}
# }} jj diff

# {{ jj diffedit
# @cmd Touch up the content changes in a revision with a diff editor
# @option -r --revision           The revision to touch up
# @option --from                  Show changes from this revision
# @option --to                    Edit changes in this revision
# @option --tool <NAME>           Specify diff editor to be used
# @flag --restore-descendants     Preserve the content (not the diff) when rebasing descendants
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
diffedit() {
    :;
}
# }} jj diffedit

# {{ jj duplicate
# @cmd Create a new change with the same content as an existing one
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revisions*                 The revision(s) to duplicate
duplicate() {
    :;
}
# }} jj duplicate

# {{ jj edit
# @cmd Sets the specified revision as the working-copy revision
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revision!                  The commit to edit
edit() {
    :;
}
# }} jj edit

# {{ jj evolog
# @cmd Show how a change has evolved over time [aliases: evolution-log]
# @option -r --revision           [default: @]
# @option -n --limit              Limit number of revisions to show
# @flag --no-graph                Don't show the graph, show a flat list of revisions
# @option -T --template           Render each revision using the given template
# @flag -p --patch                Show patch compared to the previous version of this change
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
evolog() {
    :;
}
# }} jj evolog

# {{ jj file
# @cmd File operations
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
file() {
    :;
}

# {{{ jj file chmod
# @cmd Sets or removes the executable bit for paths in the repo
# @option -r --revision              The revision to update
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg mode![`_choice_file_mode`]    File Mode
# @arg paths+[`_choice_path`]        Paths to change the executable bit for
file::chmod() {
    :;
}
# }}} jj file chmod

# {{{ jj file list
# @cmd List files in a revision
# @option -r --revision           The revision to list files in
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Only list files matching these prefixes (instead of all files)
file::list() {
    :;
}
# }}} jj file list

# {{{ jj file show
# @cmd Print contents of files in a revision
# @option -r --revision           The revision to get the file contents from
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths+[`_choice_path`]     Paths to print
file::show() {
    :;
}
# }}} jj file show

# {{{ jj file track
# @cmd Start tracking specified paths in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths+[`_choice_path`]     Paths to track
file::track() {
    :;
}
# }}} jj file track

# {{{ jj file untrack
# @cmd Stop tracking specified paths in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths+[`_choice_path`]     Paths to untrack.
file::untrack() {
    :;
}
# }}} jj file untrack
# }} jj file

# {{ jj fix
# @cmd Update files with formatting fixes or other changes
# @option -s --source                Fix files in the specified revision(s) and their descendants.
# @flag --include-unchanged-files    Fix unchanged files in addition to changed ones.
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]        Fix only these paths
fix() {
    :;
}
# }} jj fix

# {{ jj git
# @cmd Commands for working with Git remotes and the underlying Git repo
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git() {
    :;
}

# {{{ jj git clone
# @cmd Create a new repo backed by a clone of a Git repo
# @option --remote <REMOTE_NAME>    Name of the newly created remote
# @flag --colocate                  Whether or not to colocate the Jujutsu repo with the git repo
# @flag -h --help                   Print help (see a summary with '-h')
# @option -R --repository           Path to repository to operate on
# @flag --ignore-working-copy       Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable          Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                     Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                     Silence non-primary command output
# @flag --no-pager                  Disable the pager
# @option --config-toml <TOML>      Additional configuration options (can be repeated)
# @arg source!                      URL or path of the Git repo to clone
# @arg destination                  Specifies the target directory for the Jujutsu repository clone.
git::clone() {
    :;
}
# }}} jj git clone

# {{{ jj git export
# @cmd Update the underlying Git repo with changes made in the repo
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git::export() {
    :;
}
# }}} jj git export

# {{{ jj git fetch
# @cmd Fetch from a Git remote
# @option -b --branch             Fetch only some of the branches
# @option --remote <remote>       The remote to fetch from (only named remotes are supported, can be repeated)
# @flag --all-remotes             Fetch from all remotes
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git::fetch() {
    :;
}
# }}} jj git fetch

# {{{ jj git import
# @cmd Update repo with changes made in the underlying Git repo
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git::import() {
    :;
}
# }}} jj git import

# {{{ jj git init
# @cmd Create a new Git backed repo
# @flag --colocate                 Specifies that the `jj` repo should also be a valid `git` repo, allowing the use of both `jj` and `git` commands in the same directory.
# @option --git-repo <GIT_REPO>    Specifies a path to an **existing** git repository to be used as the backing git repo for the newly created `jj` repo.
# @flag -h --help                  Print help (see a summary with '-h')
# @option -R --repository          Path to repository to operate on
# @flag --ignore-working-copy      Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable         Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                    Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                    Silence non-primary command output
# @flag --no-pager                 Disable the pager
# @option --config-toml <TOML>     Additional configuration options (can be repeated)
# @arg destination                 The destination directory where the `jj` repo will be created.
git::init() {
    :;
}
# }}} jj git init

# {{{ jj git push
# @cmd Push to a Git remote
# @option --remote                   The remote to push to (only named remotes are supported)
# @option -b --bookmark              Push only this bookmark, or bookmarks matching a pattern (can be repeated)
# @flag --all                        Push all bookmarks (including deleted bookmarks)
# @flag --tracked                    Push all tracked bookmarks (including deleted bookmarks)
# @flag --deleted                    Push all deleted bookmarks
# @flag --allow-empty-description    Allow pushing commits with empty descriptions
# @flag --allow-private              Allow pushing commits that are private
# @option -r --revisions             Push bookmarks pointing to these commits (can be repeated)
# @option -c --change                Push this commit by creating a bookmark based on its change ID (can be repeated)
# @flag --dry-run                    Only display what will change on the remote
# @flag -h --help                    Print help (see a summary with '-h')
# @option -R --repository            Path to repository to operate on
# @flag --ignore-working-copy        Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable           Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                      Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                      Silence non-primary command output
# @flag --no-pager                   Disable the pager
# @option --config-toml <TOML>       Additional configuration options (can be repeated)
git::push() {
    :;
}
# }}} jj git push

# {{{ jj git remote
# @cmd Manage Git remotes
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git::remote() {
    :;
}

# {{{{ jj git remote add
# @cmd Add a Git remote
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg remote!                    The remote's name
# @arg url!                       The remote's URL
git::remote::add() {
    :;
}
# }}}} jj git remote add

# {{{{ jj git remote list
# @cmd List Git remotes
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
git::remote::list() {
    :;
}
# }}}} jj git remote list

# {{{{ jj git remote remove
# @cmd Remove a Git remote and forget its bookmarks
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg remote!                    The remote's name
git::remote::remove() {
    :;
}
# }}}} jj git remote remove

# {{{{ jj git remote rename
# @cmd Rename a Git remote
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg old!                       The name of an existing remote
# @arg new!                       The desired name for `old`
git::remote::rename() {
    :;
}
# }}}} jj git remote rename

# {{{{ jj git remote set-url
# @cmd Set the URL of a Git remote
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg remote!                    The remote's name
# @arg url!                       The desired url for `remote`
git::remote::set-url() {
    :;
}
# }}}} jj git remote set-url
# }}} jj git remote
# }} jj git

# {{ jj init
# @cmd Create a new repo in the given directory
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg destination                The destination directory
init() {
    :;
}
# }} jj init

# {{ jj interdiff
# @cmd Compare the changes of two commits
# @option --from                  Show changes from this revision
# @option --to                    Show changes to this revision
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Restrict the diff to these paths
interdiff() {
    :;
}
# }} jj interdiff

# {{ jj log
# @cmd Show revision history
# @option -r --revisions          Which revisions to show
# @flag --reversed                Show revisions in the opposite order (older revisions first)
# @option -n --limit              Limit number of revisions to show
# @flag --no-graph                Don't show the graph, show a flat list of revisions
# @option -T --template           Render each revision using the given template
# @flag -p --patch                Show patch
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Show revisions modifying the given paths
log() {
    :;
}
# }} jj log

# {{ jj new
# @cmd Create a new, empty change and (by default) edit it in the working copy
# @option -m --message                          The change description to use
# @flag --no-edit                               Do not edit the newly created change
# @option -A --insert-after <INSERT_AFTER>      Insert the new change after the given commit(s)
# @option -B --insert-before <INSERT_BEFORE>    Insert the new change before the given commit(s)
# @flag -h --help                               Print help (see a summary with '-h')
# @option -R --repository                       Path to repository to operate on
# @flag --ignore-working-copy                   Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                      Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                                 Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                                 Silence non-primary command output
# @flag --no-pager                              Disable the pager
# @option --config-toml <TOML>                  Additional configuration options (can be repeated)
# @arg revisions*                               Parent(s) of the new change
new() {
    :;
}
# }} jj new

# {{ jj next
# @cmd Move the working-copy commit to the child revision
# @flag -e --edit                 Instead of creating a new working-copy commit on top of the target commit (like `jj new`), edit the target commit directly (like `jj edit`)
# @flag -n --no-edit              The inverse of `--edit`
# @flag --conflict                Jump to the next conflicted descendant
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg offset                     How many revisions to move forward.
next() {
    :;
}
# }} jj next

# {{ jj operation
# @cmd Commands for working with the operation log [aliases: op]
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
operation() {
    :;
}

# {{{ jj operation abandon
# @cmd Abandon operation history
# @flag -h --help                         Print help (see a summary with '-h')
# @option -R --repository                 Path to repository to operate on
# @flag --ignore-working-copy             Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                           Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                           Silence non-primary command output
# @flag --no-pager                        Disable the pager
# @option --config-toml <TOML>            Additional configuration options (can be repeated)
# @arg operation![`_choice_operation`]    The operation or operation range to abandon
operation::abandon() {
    :;
}
# }}} jj operation abandon

# {{{ jj operation diff
# @cmd Compare changes to the repository between two operations
# @option --operation             Show repository changes in this operation, compared to its parent
# @option --from                  Show repository changes from this operation
# @option --to                    Show repository changes to this operation
# @flag --no-graph                Don't show the graph, show a flat list of modified changes
# @flag -p --patch                Show patch of modifications to changes
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
operation::diff() {
    :;
}
# }}} jj operation diff

# {{{ jj operation log
# @cmd Show the operation log
# @option -n --limit              Limit number of operations to show
# @flag --no-graph                Don't show the graph, show a flat list of operations
# @option -T --template           Render each operation using the given template
# @flag --op-diff                 Show changes to the repository at each operation
# @flag -p --patch                Show patch of modifications to changes (implies --op-diff)
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
operation::log() {
    :;
}
# }}} jj operation log

# {{{ jj operation restore
# @cmd Create a new operation that restores the repo to an earlier state
# @option --what                          What portions of the local state to restore (can be repeated)
# @flag -h --help                         Print help (see a summary with '-h')
# @option -R --repository                 Path to repository to operate on
# @flag --ignore-working-copy             Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                           Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                           Silence non-primary command output
# @flag --no-pager                        Disable the pager
# @option --config-toml <TOML>            Additional configuration options (can be repeated)
# @arg operation![`_choice_operation`]    The operation to restore to
operation::restore() {
    :;
}
# }}} jj operation restore

# {{{ jj operation show
# @cmd Show changes to the repository in an operation
# @flag --no-graph                       Don't show the graph, show a flat list of modified changes
# @flag -p --patch                       Show patch of modifications to changes
# @flag -h --help                        Print help (see a summary with '-h')
# @flag -s --summary                     For each path, show only whether it was modified, added, or deleted
# @flag --stat                           Show a histogram of the changes
# @flag --types                          For each path, show only its type before and after
# @flag --name-only                      For each path, show only its path
# @flag --git                            Show a Git-format diff
# @flag --color-words                    Show a word-level diff with changes indicated only by color
# @option --tool                         Generate diff by external command
# @option --context                      Number of lines of context to show
# @option -R --repository                Path to repository to operate on
# @flag --ignore-working-copy            Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable               Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                          Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                          Silence non-primary command output
# @flag --no-pager                       Disable the pager
# @option --config-toml <TOML>           Additional configuration options (can be repeated)
# @arg operation[`_choice_operation`]    Show repository changes in this operation, compared to its parent(s)
operation::show() {
    :;
}
# }}} jj operation show

# {{{ jj operation undo
# @cmd Create a new operation that undoes an earlier operation
# @option --what                         What portions of the local state to restore (can be repeated)
# @flag -h --help                        Print help (see a summary with '-h')
# @option -R --repository                Path to repository to operate on
# @flag --ignore-working-copy            Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable               Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                          Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                          Silence non-primary command output
# @flag --no-pager                       Disable the pager
# @option --config-toml <TOML>           Additional configuration options (can be repeated)
# @arg operation[`_choice_operation`]    The operation to undo
operation::undo() {
    :;
}
# }}} jj operation undo
# }} jj operation

# {{ jj parallelize
# @cmd Parallelize revisions by making them siblings
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revisions*                 Revisions to parallelize
parallelize() {
    :;
}
# }} jj parallelize

# {{ jj prev
# @cmd Change the working copy revision relative to the parent revision
# @flag -e --edit                 Edit the parent directly, instead of moving the working-copy commit
# @flag -n --no-edit              The inverse of `--edit`
# @flag --conflict                Jump to the previous conflicted ancestor
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg offset                     How many revisions to move backward.
prev() {
    :;
}
# }} jj prev

# {{ jj rebase
# @cmd Move revisions to different parent(s)
# @option -b --branch                           Rebase the whole branch relative to destination's ancestors (can be repeated)
# @option -s --source                           Rebase specified revision(s) together with their trees of descendants (can be repeated)
# @option -r --revisions                        Rebase the given revisions, rebasing descendants onto this revision's parent(s)
# @option -d --destination                      The revision(s) to rebase onto (can be repeated to create a merge commit)
# @option -A --insert-after <INSERT_AFTER>      The revision(s) to insert after (can be repeated to create a merge commit)
# @option -B --insert-before <INSERT_BEFORE>    The revision(s) to insert before (can be repeated to create a merge commit)
# @flag --skip-emptied                          If true, when rebasing would produce an empty commit, the commit is abandoned.
# @flag -h --help                               Print help (see a summary with '-h')
# @option -R --repository                       Path to repository to operate on
# @flag --ignore-working-copy                   Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                      Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                                 Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                                 Silence non-primary command output
# @flag --no-pager                              Disable the pager
# @option --config-toml <TOML>                  Additional configuration options (can be repeated)
rebase() {
    :;
}

# {{{ jj rebase destination
# @cmd
rebase::destination() {
    :;
}
# }}} jj rebase destination
# }} jj rebase

# {{ jj resolve
# @cmd Resolve a conflicted file with an external merge tool
# @option -r --revision           [default: @]
# @flag -l --list                 Instead of resolving one conflict, list all the conflicts
# @option --tool <NAME>           Specify 3-way merge tool to be used
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Restrict to these paths when searching for a conflict to resolve.
resolve() {
    :;
}
# }} jj resolve

# {{ jj restore
# @cmd Restore paths from another revision
# @option --from                        Revision to restore from (source)
# @option --to                          Revision to restore into (destination)
# @option -c --changes-in <REVISION>    Undo the changes in a revision as compared to the merge of its parents.
# @flag --restore-descendants           Preserve the content (not the diff) when rebasing descendants
# @flag -h --help                       Print help (see a summary with '-h')
# @option -R --repository               Path to repository to operate on
# @flag --ignore-working-copy           Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable              Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                         Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                         Silence non-primary command output
# @flag --no-pager                      Disable the pager
# @option --config-toml <TOML>          Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]           Restore only these paths (instead of all paths)
restore() {
    :;
}
# }} jj restore

# {{ jj root
# @cmd Show the current workspace root directory
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
root() {
    :;
}
# }} jj root

# {{ jj show
# @cmd Show commit description and changes in a revision
# @option -T --template           Render a revision using the given template
# @flag -h --help                 Print help (see a summary with '-h')
# @flag -s --summary              For each path, show only whether it was modified, added, or deleted
# @flag --stat                    Show a histogram of the changes
# @flag --types                   For each path, show only its type before and after
# @flag --name-only               For each path, show only its path
# @flag --git                     Show a Git-format diff
# @flag --color-words             Show a word-level diff with changes indicated only by color
# @option --tool                  Generate diff by external command
# @option --context               Number of lines of context to show
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg revision                   Show changes in this revision, compared to its parent(s)
show() {
    :;
}
# }} jj show

# {{ jj sparse
# @cmd Manage which paths from the working-copy commit are present in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
sparse() {
    :;
}

# {{{ jj sparse edit
# @cmd Start an editor to update the patterns that are present in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
sparse::edit() {
    :;
}
# }}} jj sparse edit

# {{{ jj sparse list
# @cmd List the patterns that are currently present in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
sparse::list() {
    :;
}
# }}} jj sparse list

# {{{ jj sparse reset
# @cmd Reset the patterns to include all files in the working copy
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
sparse::reset() {
    :;
}
# }}} jj sparse reset

# {{{ jj sparse set
# @cmd Update the patterns that are present in the working copy
# @option --add                   Patterns to add to the working copy
# @option --remove                Patterns to remove from the working copy
# @flag --clear                   Include no files in the working copy (combine with --add)
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
sparse::set() {
    :;
}
# }}} jj sparse set
# }} jj sparse

# {{ jj split
# @cmd Split a revision in two
# @flag -i --interactive          Interactively choose which parts to split.
# @option --tool <NAME>           Specify diff editor to be used (implies --interactive)
# @option -r --revision           The revision to split
# @flag -p --parallel             Split the revision into two parallel revisions instead of a parent and child
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Put these paths in the first commit
split() {
    :;
}
# }} jj split

# {{ jj squash
# @cmd Move changes from a revision into another revision
# @option -r --revision                 Revision to squash into its parent (default: @)
# @option --from                        Revision(s) to squash from (default: @)
# @option --into                        Revision to squash into (default: @)
# @option -m --message                  The description to use for squashed revision (don't open editor)
# @flag -u --use-destination-message    Use the description of the destination revision and discard the description(s) of the source revision(s)
# @flag -i --interactive                Interactively choose which parts to squash
# @option --tool <NAME>                 Specify diff editor to be used (implies --interactive)
# @flag -k --keep-emptied               The source revision will not be abandoned
# @flag -h --help                       Print help (see a summary with '-h')
# @option -R --repository               Path to repository to operate on
# @flag --ignore-working-copy           Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable              Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                         Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                         Silence non-primary command output
# @flag --no-pager                      Disable the pager
# @option --config-toml <TOML>          Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]           Move only changes to these paths (instead of all paths)
squash() {
    :;
}
# }} jj squash

# {{ jj status
# @cmd Show high-level repo status [aliases: st]
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg paths*[`_choice_path`]     Restrict the status display to these paths
status() {
    :;
}
# }} jj status

# {{ jj tag
# @cmd Manage tags
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
tag() {
    :;
}

# {{{ jj tag list
# @cmd List tags [aliases: l]
# @option -T --template           Render each tag using the given template
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg names*                     Show tags whose local name matches
tag::list() {
    :;
}
# }}} jj tag list
# }} jj tag

# {{ jj util
# @cmd Infrequently used commands such as for generating shell completions
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
util() {
    :;
}

# {{{ jj util completion
# @cmd Print a command-line-completion script
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg shell[bash|elvish|fish|nushell|power-shell|zsh]
util::completion() {
    :;
}
# }}} jj util completion

# {{{ jj util gc
# @cmd Run backend-dependent garbage collection
# @option --expire                Time threshold
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
util::gc() {
    :;
}
# }}} jj util gc

# {{{ jj util mangen
# @cmd Print a ROFF (manpage)
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
util::mangen() {
    :;
}
# }}} jj util mangen

# {{{ jj util config-schema
# @cmd Print the JSON schema for the jj TOML config format
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
util::config-schema() {
    :;
}
# }}} jj util config-schema
# }} jj util

# {{ jj undo
# @cmd Undo an operation (shortcut for `jj op undo`)
# @option --what                         What portions of the local state to restore (can be repeated)
# @flag -h --help                        Print help (see a summary with '-h')
# @option -R --repository                Path to repository to operate on
# @flag --ignore-working-copy            Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable               Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                          Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                          Silence non-primary command output
# @flag --no-pager                       Disable the pager
# @option --config-toml <TOML>           Additional configuration options (can be repeated)
# @arg operation[`_choice_operation`]    The operation to undo
undo() {
    :;
}
# }} jj undo

# {{ jj version
# @cmd Display version information
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
version() {
    :;
}
# }} jj version

# {{ jj workspace
# @cmd Commands for working with workspaces
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
workspace() {
    :;
}

# {{{ jj workspace add
# @cmd Add a workspace
# @option --name                                 A name for the workspace
# @option -r --revision                          A list of parent revisions for the working-copy commit of the newly created workspace.
# @option --sparse-patterns <SPARSE_PATTERNS>    How to handle sparse patterns when creating a new workspace
# @flag -h --help                                Print help (see a summary with '-h')
# @option -R --repository                        Path to repository to operate on
# @flag --ignore-working-copy                    Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                       Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                                  Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                                  Silence non-primary command output
# @flag --no-pager                               Disable the pager
# @option --config-toml <TOML>                   Additional configuration options (can be repeated)
# @arg destination!                              Where to create the new workspace
workspace::add() {
    :;
}
# }}} jj workspace add

# {{{ jj workspace forget
# @cmd Stop tracking a workspace's working-copy commit in the repo
# @flag -h --help                          Print help (see a summary with '-h')
# @option -R --repository                  Path to repository to operate on
# @flag --ignore-working-copy              Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable                 Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                            Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                            Silence non-primary command output
# @flag --no-pager                         Disable the pager
# @option --config-toml <TOML>             Additional configuration options (can be repeated)
# @arg workspaces*[`_choice_workspace`]    Names of the workspaces to forget.
workspace::forget() {
    :;
}
# }}} jj workspace forget

# {{{ jj workspace list
# @cmd List workspaces
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
workspace::list() {
    :;
}
# }}} jj workspace list

# {{{ jj workspace rename
# @cmd Renames the current workspace
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
# @arg new_workspace_name!        The name of the workspace to update to
workspace::rename() {
    :;
}
# }}} jj workspace rename

# {{{ jj workspace root
# @cmd Show the current workspace root directory
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
workspace::root() {
    :;
}
# }}} jj workspace root

# {{{ jj workspace update-stale
# @cmd Update a workspace that has become stale
# @flag -h --help                 Print help (see a summary with '-h')
# @option -R --repository         Path to repository to operate on
# @flag --ignore-working-copy     Don't snapshot the working copy, and don't update it
# @flag --ignore-immutable        Allow rewriting immutable commits
# @option --at-operation[`_choice_operation`] <AT_OPERATION>  Operation to load the repo at
# @flag --debug                   Enable debug logging
# @option --color[always|never|debug|auto] <WHEN>  When to colorize output
# @flag --quiet                   Silence non-primary command output
# @flag --no-pager                Disable the pager
# @option --config-toml <TOML>    Additional configuration options (can be repeated)
workspace::update-stale() {
    :;
}
# }}} jj workspace update-stale
# }} jj workspace

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_operation() {
    jj operation log -T 'id.short() ++ "\t" ++ description.first_line()' | \
    sed -n 's/^\(\S\)\s\+\(\S\+\)\s\+/\2\t/p'
}

_choice_bookmark() {
    jj bookmark list | sed 's/: /\t/'
}

_choice_bookmark_remote() {
    jj bookmark list --all | gawk '{
        if (match($0, /^([^@:]+): /, arr)) {
            bookmark=arr[1]
        } else if (match($0, /^\s+(@\S+): (.*)/, arr)) {
            print bookmark arr[1] "\t" arr[2]
        } else if (match($0, /^(\S+): (.*)/, arr)) {
            print arr[1] "\t" arr[2]
        }
    }
    '
}

_choice_path() {
    jj file list | _argc_util_comp_parts /
}

_choice_config() {
    jj config list --include-defaults | sed -n 's/^\(\S\+\) = .*/\1/p'
}

_choice_file_mode() {
    cat <<-EOF
n	Make a path non-executable (alias: normal)
x	Make a path executable (alias: executable)
EOF
}

_choice_workspace() {
    jj workspace list | sed 's/: /\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"