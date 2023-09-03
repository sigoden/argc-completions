#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ svn add
# @cmd Put new files and directories under version control.
# @option --targets <file>    pass contents of file ARG as additional args
# @flag -N --non-recursive    obsolete; same as --depth=empty
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag -q --quiet            print nothing, or only summary information
# @flag --force               ignore already versioned paths
# @flag --no-ignore           disregard default and svn:ignore and svn:global-ignores property ignores
# @flag --auto-props          enable automatic properties
# @flag --no-auto-props       disable automatic properties
# @flag --parents             add intermediate parents
# @arg path*
add() {
    :;
}
# }} svn add

# {{ svn auth
# @cmd Manage cached authentication credentials.
# @flag --remove            remove matching authentication credentials
# @flag --show-passwords    show cached passwords
# @arg pattern*
auth() {
    :;
}
# }} svn auth

# {{ svn blame
# @cmd Show when each line of a file was last (or next) changed.
# @alias praise,annotate,ann
# @option -r --revision <value>      ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -v --verbose                 print extra information
# @flag -g --use-merge-history       use/display additional information from merge history
# @flag --incremental                give output suitable for concatenation
# @flag --xml                        output in XML
# @option -x --extensions <value>    Specify differencing options for external diff or internal diff or blame.
# @flag --force                      force operation to run
# @arg target-rev* <TARGET[@REV]>
blame() {
    :;
}
# }} svn blame

# {{ svn cat
# @cmd Output the content of specified files or URLs.
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag --ignore-keywords          don't expand keywords
# @arg target-rev* <TARGET[@REV]>
cat_() {
    :;
}
# }} svn cat

# {{ svn changelist
# @cmd Associate (or dissociate) changelist CLNAME with the named files.
# @alias cl
# @flag -q --quiet                print nothing, or only summary information
# @flag -R --recursive            descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --remove                  remove changelist association
# @option --targets <file>        pass contents of file ARG as additional args
# @option --changelist <value>    operate only on members of changelist ARG
# @option --cl <value>            operate only on members of changelist ARG
# @arg clname
# @arg path*
changelist() {
    :;
}
# }} svn changelist

# {{ svn checkout
# @cmd Check out a working copy from a repository.
# @alias co
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -q --quiet                 print nothing, or only summary information
# @flag -N --non-recursive         obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --force                    force operation to run
# @flag --ignore-externals         ignore externals definitions
# @arg url-rev* <URL[@REV]>
# @arg path
checkout() {
    :;
}
# }} svn checkout

# {{ svn cleanup
# @cmd Either recover from an interrupted operation that left the working copy locked, or remove unwanted files.
# @flag --remove-unversioned     remove unversioned items
# @flag --remove-ignored         remove ignored items
# @flag --vacuum-pristines       remove unreferenced pristines from .svn directory
# @flag --include-externals      also operate on externals defined by svn:externals properties
# @flag -q --quiet               print nothing, or only summary information
# @option --diff3-cmd <value>    deprecated and ignored
# @arg wcpath*
cleanup() {
    :;
}
# }} svn cleanup

# {{ svn commit
# @cmd Send changes from your working copy to the repository.
# @alias ci
# @flag -q --quiet                  print nothing, or only summary information
# @flag -N --non-recursive          obsolete; same as --depth=empty
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --targets <file>          pass contents of file ARG as additional args
# @flag --no-unlock                 don't unlock the targets
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @option --changelist <value>      operate only on members of changelist ARG
# @option --cl <value>              operate only on members of changelist ARG
# @flag --keep-changelists          don't delete changelists after commit
# @flag --include-externals         also operate on externals defined by svn:externals properties
# @arg path*
commit() {
    :;
}
# }} svn commit

# {{ svn copy
# @cmd Copy files and directories in a working copy or repository.
# @alias cp
# @option -r --revision <value>     ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -q --quiet                  print nothing, or only summary information
# @flag --ignore-externals          ignore externals definitions
# @flag --parents                   make intermediate directories
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @flag --pin-externals             pin externals with no explicit revision to their current revision (recommended when tagging)
# @arg src-rev* <SRC[@REV]>
# @arg dst
copy() {
    :;
}
# }} svn copy

# {{ svn delete
# @cmd Remove files and directories from version control.
# @alias del,remove,rm
# @flag --force                     force operation to run
# @flag -q --quiet                  print nothing, or only summary information
# @option --targets <file>          pass contents of file ARG as additional args
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @flag --keep-local                keep path in working copy
# @arg path*
delete() {
    :;
}
# }} svn delete

# {{ svn diff
# @cmd Display local changes or differences between two revisions or paths.
# @alias di
# @option -r --revision <value>      ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @option -c --change <value>        the change made by revision ARG (like -r ARG-1:ARG) If ARG is negative this is like -r ARG:ARG-1 If ARG is of the form ARG1-ARG2 then this is like ARG1:ARG2, where ARG1 is inclusive
# @option --old <value>              use ARG as the older target
# @option --new <value>              use ARG as the newer target
# @flag -N --non-recursive           obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --diff-cmd <value>         use ARG as diff command
# @flag --internal-diff              override diff-cmd specified in config file
# @option -x --extensions <value>    Specify differencing options for external diff or internal diff or blame.
# @flag --no-diff-added              do not print differences for added files
# @flag --no-diff-deleted            do not print differences for deleted files
# @flag --ignore-properties          ignore properties during the operation
# @flag --properties-only            show only properties during the operation
# @flag --show-copies-as-adds        don't diff copied or moved files with their source
# @flag --notice-ancestry            diff unrelated nodes as delete and add
# @flag --summarize                  show a summary of the results
# @option --changelist <value>       operate only on members of changelist ARG
# @option --cl <value>               operate only on members of changelist ARG
# @flag --force                      force operation to run
# @flag --xml                        output in XML
# @flag --git                        use git's extended diff format
# @flag --patch-compatible           generate diff suitable for generic third-party patch tools; currently the same as --show-copies-as-adds --ignore-properties
diff() {
    :;
}
# }} svn diff

# {{ svn export
# @cmd Create an unversioned copy of a tree.
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -q --quiet                 print nothing, or only summary information
# @flag -N --non-recursive         obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --force                    force operation to run
# @option --native-eol <file>      use a different EOL marker than the standard system marker for files with the svn:eol-style property set to 'native'.
# @flag --ignore-externals         ignore externals definitions
# @flag --ignore-keywords          don't expand keywords
# @arg url-pegrev <URL[@PEGREV]>
# @arg path
export() {
    :;
}
# }} svn export

# {{ svn import
# @cmd Commit an unversioned file or tree into the repository.
# @flag -q --quiet                  print nothing, or only summary information
# @flag -N --non-recursive          obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --auto-props                enable automatic properties
# @flag --force                     force operation to run
# @flag --no-auto-props             disable automatic properties
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @flag --no-ignore                 disregard default and svn:ignore and svn:global-ignores property ignores
# @arg path
# @arg url
import() {
    :;
}
# }} svn import

# {{ svn info
# @cmd Display information about a local or remote item.
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @flag -H --human-readable        show file sizes with base-2 unit suffixes (Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and Petabyte), limiting the number of digits to three or less
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --targets <file>         pass contents of file ARG as additional args
# @flag --incremental              give output suitable for concatenation
# @flag --xml                      output in XML
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @flag --include-externals        also operate on externals defined by svn:externals properties
# @option --show-item <value>      print only the item identified by ARG: 'kind'  node kind of TARGET 'url'  URL of TARGET in the repository 'relative-url'
# @flag --no-newline               do not output the trailing newline
# @arg target-rev <TARGET[@REV]...>
info() {
    :;
}
# }} svn info

# {{ svn list
# @cmd List directory entries in the repository.
# @alias ls
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -v --verbose               print extra information
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @flag -H --human-readable        with --verbose, show file sizes with base-2 unit suffixes (Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and Petabyte), limiting the number of digits to three or less
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --incremental              give output suitable for concatenation
# @flag --xml                      output in XML
# @flag --include-externals        also operate on externals defined by svn:externals properties
# @option --search <value>         use ARG as search pattern (glob syntax, case-and accent-insensitive, may require quotation marks to prevent shell expansion)
# @arg target-rev <TARGET[@REV]...>
list() {
    :;
}
# }} svn list

# {{ svn lock
# @cmd Lock working copy paths or URLs in the repository, so that no other user can commit changes to them.
# @option --targets <file>        pass contents of file ARG as additional args
# @option -m --message <value>    specify lock comment ARG
# @option -F --file <file>        read lock comment from file ARG
# @flag --force-log               force validity of lock comment source
# @option --encoding <value>      treat value as being in charset encoding ARG
# @flag --force                   steal locks
# @flag -q --quiet                print nothing, or only summary information
# @arg target*
lock() {
    :;
}
# }} svn lock

# {{ svn log
# @cmd Show the log messages for a set of revision(s) and/or path(s).
# @option -r --revision <value>      ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @option -c --change <value>        the change made in revision ARG
# @flag -q --quiet                   do not print the log message
# @flag -v --verbose                 also print all affected paths
# @flag -g --use-merge-history       use/display additional information from merge history
# @option --targets <file>           pass contents of file ARG as additional args
# @flag --stop-on-copy               do not cross copies while traversing history
# @flag --incremental                give output suitable for concatenation
# @flag --xml                        output in XML
# @option -l --limit <value>         maximum number of log entries
# @flag --with-all-revprops          retrieve all revision properties
# @flag --with-no-revprops           retrieve no revision properties
# @option --with-revprop <value>     retrieve revision property ARG
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --diff                       produce diff output
# @option --diff-cmd <value>         use ARG as diff command
# @flag --internal-diff              override diff-cmd specified in config file
# @option -x --extensions <value>    Specify differencing options for external diff or internal diff or blame.
# @option --search <value>           use ARG as search pattern (glob syntax, case-and accent-insensitive, may require quotation marks to prevent shell expansion)
# @option --search-and <value>       combine ARG with the previous search pattern
# @arg path-rev <[PATH][@REV]>
log() {
    :;
}
# }} svn log

# {{ svn merge
# @cmd Merge changes into a working copy.
# @option -r --revision <value>      ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @option -c --change <value>        the change made by revision ARG (like -r ARG-1:ARG) If ARG is negative this is like -r ARG:ARG-1 If ARG is of the form ARG1-ARG2 then this is like ARG1:ARG2, where ARG1 is inclusive
# @flag -N --non-recursive           obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag -q --quiet                   print nothing, or only summary information
# @flag --force                      force deletions even if deleted contents don't match
# @flag --dry-run                    try operation but make no changes
# @option --diff3-cmd <value>        use ARG as merge command
# @flag --record-only                merge only mergeinfo differences
# @option -x --extensions <value>    Specify differencing options for external diff or internal diff or blame.
# @flag --ignore-ancestry            disable merge tracking; diff nodes as if related
# @option --accept[postpone|working|base|mine-conflict|theirs-conflict|mine-full|theirs-full|edit|launch|recommended] <value>  specify automatic conflict resolution action
# @flag --reintegrate                deprecated
# @flag --allow-mixed-revisions      Allow operation on mixed-revision working copy.
# @flag -v --verbose                 print extra information
# @arg source-rev <SOURCE[@REV]>
# @arg target_wcpath
# @arg the-complete-merge <the 'complete' merge>
merge() {
    :;
}
# }} svn merge

# {{ svn mergeinfo
# @cmd Display merge-related information.
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @flag -q --quiet                 print nothing, or only summary information
# @flag -v --verbose               print extra information
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --show-revs <value>      specify which collection of revisions to display ('merged', 'eligible')
# @flag --log                      show revision log message, author and date
# @flag --incremental              give output suitable for concatenation
# @arg source-rev <SOURCE[@REV]>
# @arg target-rev <TARGET[@REV]>
mergeinfo() {
    :;
}
# }} svn mergeinfo

# {{ svn mkdir
# @cmd Create a new directory under version control.
# @flag -q --quiet                  print nothing, or only summary information
# @flag --parents                   make intermediate directories
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @arg path*
mkdir() {
    :;
}
# }} svn mkdir

# {{ svn move
# @cmd Move (rename) an item in a working copy or repository.
# @alias mv,rename,ren
# @flag -q --quiet                  print nothing, or only summary information
# @flag --force                     force operation to run
# @flag --parents                   make intermediate directories
# @flag --allow-mixed-revisions     Allow operation on mixed-revision working copy.
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @option -r --revision <value>     deprecated and ignored
# @arg src*
# @arg dst
move() {
    :;
}
# }} svn move

# {{ svn patch
# @cmd Apply a patch to a working copy.
# @flag -q --quiet             print nothing, or only summary information
# @flag --dry-run              try operation but make no changes
# @option --strip <file>       number of leading path components to strip from paths parsed from the patch file.
# @flag --reverse-diff         apply the unidiff in reverse
# @flag --ignore-whitespace    ignore whitespace during pattern matching
# @arg patchfile
# @arg wcpath
patch() {
    :;
}
# }} svn patch

# {{ svn propdel
# @cmd Remove a property from files, dirs, or revisions.
# @alias pdel,pd
# @flag -q --quiet                 print nothing, or only summary information
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag --revprop                  operate on a revision property (use with -r)
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @arg propname
# @arg path*
propdel() {
    :;
}
# }} svn propdel

# {{ svn propedit
# @cmd Edit a property with an external editor.
# @alias pedit,pe
# @option -r --revision <value>     ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag --revprop                   operate on a revision property (use with -r)
# @option -m --message <value>      specify log message ARG
# @option -F --file <file>          read log message from file ARG
# @flag --force-log                 force validity of log message source
# @option --editor-cmd <value>      use ARG as external editor
# @option --encoding <value>        treat value as being in charset encoding ARG
# @option --with-revprop <value>    set revision property ARG in new revision using the name[=value] format
# @flag --force                     force operation to run
# @arg propname
# @arg target*
propedit() {
    :;
}
# }} svn propedit

# {{ svn propget
# @cmd Print the value of a property on files, dirs, or revisions.
# @alias pget,pg
# @flag -v --verbose               print path, name and value on separate lines
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag --revprop                  operate on a revision property (use with -r)
# @flag --strict                   (deprecated; use --no-newline)
# @flag --no-newline               do not output the trailing newline
# @flag --xml                      output in XML
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @flag --show-inherited-props     retrieve properties set on parents of the target
# @arg propname
# @arg target-rev <TARGET[@REV]...>
propget() {
    :;
}
# }} svn propget

# {{ svn proplist
# @cmd List all properties on files, dirs, or revisions.
# @alias plist,pl
# @flag -v --verbose               print path, name and value on separate lines
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -q --quiet                 don't print the path
# @flag --revprop                  operate on a revision property (use with -r)
# @flag --xml                      output in XML
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @flag --show-inherited-props     retrieve properties set on parents of the target
# @arg target-rev <TARGET[@REV]...>
proplist() {
    :;
}
# }} svn proplist

# {{ svn propset
# @cmd Set the value of a property on files, dirs, or revisions.
# @alias pset,ps
# @flag -r25                       http://example.com/repos/zig@42 foo/bar ../  to the parent directory of the extracted external ^/  to the repository root /  to the server root //  to the URL scheme LOCALPATH [-r PEG] URL
# @option -F --file <file>         read property value from file ARG
# @option --encoding <value>       treat value as being in charset encoding ARG
# @flag -q --quiet                 print nothing, or only summary information
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @option --targets <file>         pass contents of file ARG as additional args
# @flag -R --recursive             descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag --revprop                  operate on a revision property (use with -r)
# @flag --force                    force operation to run
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @arg propname
# @arg propval
# @arg path*
propset() {
    :;
}
# }} svn propset

# {{ svn relocate
# @cmd Relocate the working copy to point to a different repository root URL.
# @flag --ignore-externals    ignore externals definitions
# @arg from-prefix
# @arg to-prefix
# @arg path*
relocate() {
    :;
}
# }} svn relocate

# {{ svn resolve
# @cmd Resolve conflicts on working copy files or directories.
# @option --targets <file>    pass contents of file ARG as additional args
# @flag -R --recursive        descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag -q --quiet            print nothing, or only summary information
# @option --accept[postpone|working|base|mine-conflict|theirs-conflict|mine-full|theirs-full|edit|launch|recommended] <value>  specify automatic conflict resolution action
# @arg path*
resolve() {
    :;
}
# }} svn resolve

# {{ svn resolved
# @cmd Remove 'conflicted' state on working copy files or directories.
# @option --targets <file>    pass contents of file ARG as additional args
# @flag -R --recursive        descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag -q --quiet            print nothing, or only summary information
# @arg path*
resolved() {
    :;
}
# }} svn resolved

# {{ svn revert
# @cmd Restore pristine working copy state (undo local changes).
# @option --targets <file>        pass contents of file ARG as additional args
# @flag -R --recursive            descend recursively, same as --depth=infinity
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @flag -q --quiet                print nothing, or only summary information
# @option --changelist <value>    operate only on members of changelist ARG
# @option --cl <value>            operate only on members of changelist ARG
# @flag --remove-added            reverting an added item will remove it from disk
# @arg path*
revert() {
    :;
}
# }} svn revert

# {{ svn status
# @cmd Print the status of working copy files and directories.
# @alias stat,st
# @flag -u --show-updates          display update information
# @flag -v --verbose               print extra information
# @flag -N --non-recursive         obsolete; same as --depth=immediates
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -q --quiet                 don't print unversioned items
# @flag --no-ignore                disregard default and svn:ignore and svn:global-ignores property ignores
# @flag --incremental              give output suitable for concatenation
# @flag --xml                      output in XML
# @flag --ignore-externals         ignore externals definitions
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @arg path*
status() {
    :;
}
# }} svn status

# {{ svn switch
# @cmd Update the working copy to a different URL within the same repository.
# @alias sw
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -N --non-recursive         obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --set-depth <file>       set new working copy depth to ARG ('exclude', 'empty', 'files', 'immediates', or 'infinity')
# @flag -q --quiet                 print nothing, or only summary information
# @option --diff3-cmd <value>      use ARG as merge command
# @flag --ignore-externals         ignore externals definitions
# @flag --ignore-ancestry          allow switching to a node with no common ancestor
# @flag --force                    handle unversioned obstructions as changes
# @option --accept[postpone|working|base|mine-conflict|theirs-conflict|mine-full|theirs-full|edit|launch|recommended] <value>  specify automatic conflict resolution action
# @flag --relocate                 deprecated; use 'svn relocate'
# @arg url-pegrev <URL[@PEGREV]>
# @arg path
switch() {
    :;
}
# }} svn switch

# {{ svn unlock
# @cmd Unlock working copy paths or URLs.
# @option --targets <file>    pass contents of file ARG as additional args
# @flag --force               break locks
# @flag -q --quiet            print nothing, or only summary information
# @arg target*
unlock() {
    :;
}
# }} svn unlock

# {{ svn update
# @cmd Bring changes from the repository into the working copy.
# @alias up
# @option -r --revision <value>    ARG (some commands also take ARG1:ARG2 range) A revision argument can be one of:
# @flag -N --non-recursive         obsolete; same as --depth=files
# @option --depth[empty|files|immediates|infinity] <file>  limit operation by depth ARG
# @option --set-depth <file>       set new working copy depth to ARG ('exclude', 'empty', 'files', 'immediates', or 'infinity')
# @flag -q --quiet                 print nothing, or only summary information
# @option --diff3-cmd <value>      use ARG as merge command
# @flag --force                    handle unversioned obstructions as changes
# @flag --ignore-externals         ignore externals definitions
# @option --changelist <value>     operate only on members of changelist ARG
# @option --cl <value>             operate only on members of changelist ARG
# @option --editor-cmd <value>     use ARG as external editor
# @option --accept[postpone|working|base|mine-conflict|theirs-conflict|mine-full|theirs-full|edit|launch|recommended] <value>  specify automatic conflict resolution action
# @flag --parents                  make intermediate directories
# @flag --adds-as-modification     Local additions are merged with incoming additions instead of causing a tree conflict.
# @arg path*
update() {
    :;
}
# }} svn update

# {{ svn upgrade
# @cmd Upgrade the metadata storage format for a working copy.
# @flag -q --quiet    print nothing, or only summary information
# @arg wcpath*
upgrade() {
    :;
}
# }} svn upgrade

command eval "$(argc --argc-eval "$0" "$@")"