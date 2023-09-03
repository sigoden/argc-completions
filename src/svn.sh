_patch_help() {
    if [[ $# -eq 1 ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# add - Put new files and directories under version control.
# auth - Manage cached authentication credentials.
# blame/praise/annotate/ann - Show when each line of a file was last (or next) changed.
# cat - Output the content of specified files or URLs.
# changelist/cl - Associate (or dissociate) changelist CLNAME with the named files.
# checkout/co - Check out a working copy from a repository.
# cleanup - Either recover from an interrupted operation that left the working copy locked, or remove unwanted files.
# commit/ci - Send changes from your working copy to the repository.
# copy/cp - Copy files and directories in a working copy or repository.
# delete/del/remove/rm - Remove files and directories from version control.
# diff/di - Display local changes or differences between two revisions or paths.
# export - Create an unversioned copy of a tree.
# import - Commit an unversioned file or tree into the repository.
# info - Display information about a local or remote item.
# list/ls - List directory entries in the repository.
# lock - Lock working copy paths or URLs in the repository, so that no other user can commit changes to them.
# log - Show the log messages for a set of revision(s) and/or path(s).
# merge - Merge changes into a working copy.
# mergeinfo - Display merge-related information.
# mkdir - Create a new directory under version control.
# move/mv/rename/ren - Move (rename) an item in a working copy or repository.
# patch - Apply a patch to a working copy.
# propdel/pdel/pd - Remove a property from files, dirs, or revisions.
# propedit/pedit/pe - Edit a property with an external editor.
# propget/pget/pg - Print the value of a property on files, dirs, or revisions.
# proplist/plist/pl - List all properties on files, dirs, or revisions.
# propset/pset/ps - Set the value of a property on files, dirs, or revisions.
# relocate - Relocate the working copy to point to a different repository root URL.
# resolve - Resolve conflicts on working copy files or directories.
# resolved - Remove 'conflicted' state on working copy files or directories.
# revert - Restore pristine working copy state (undo local changes).
# status/stat/st - Print the status of working copy files and directories.
# switch/sw - Update the working copy to a different URL within the same repository.
# unlock - Unlock working copy paths or URLs.
# update/up - Bring changes from the repository into the working copy.
# upgrade - Upgrade the metadata storage format for a working copy.
EOF
    else
        $@ --help | \
        sed \
            -e '/^usage: /,/^\s*$/ s/ [0-9]\+\. / /' \
            -e '/^usage: /,/^\S/ {/^\s\{1,6\}\S/ d;}' \
            -e '/^\s*-/ {s/ \[\(--\S\+\)\]/ \1/;s/ : /   /;s/ ARG / value /;}' \

    fi
}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--accept;[postpone|working|base|mine-conflict|theirs-conflict|mine-full|theirs-full|edit|launch|recommended];specify automatic conflict resolution action' \
        '--depth;[empty|files|immediates|infinity];limit operation by depth ARG' \
    
}
