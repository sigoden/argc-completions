#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -doc[`_choice_doc`] <xxx>                show documentation ('-doc topics' lists topics)
# @flag -version                                   print version and exit
# @flag -group                                     synchronize group attributes
# @option -ignore <xxx>                            add a pattern to the ignore list
# @option -ignorenot <xxx>                         add a pattern to the ignorenot list
# @option -nocreation <xxx>                        prevent file creations on one replica
# @option -nodeletion <xxx>                        prevent file deletions on one replica
# @option -noupdate <xxx>                          prevent file updates and deletions on one replica
# @flag -owner                                     synchronize owner
# @option -path <xxx>                              path to synchronize
# @option -perms <n>                               part of the permissions which is synchronized
# @option -root <xxx>                              root of a replica (should be used exactly twice)
# @flag -times                                     synchronize modification times
# @flag -batch                                     batch mode: ask no questions at all
# @flag -auto                                      automatically accept default (nonconflicting) actions
# @flag -silent                                    print nothing except error messages
# @flag -terse                                     suppress status messages
# @flag -i                                         interactive profile mode (text UI); command-line only
# @flag -acl                                       synchronize ACLs
# @option -atomic <xxx>                            add a pattern to the atomic list
# @option -follow <xxx>                            add a pattern to the follow list
# @option -force <xxx>                             force changes from this replica to the other
# @option -forcepartial <xxx>                      add a pattern to the forcepartial list
# @option -ignorecase[true|false|default] <xxx>    identify upper/lowercase filenames (true/false/default)
# @option -immutable <xxx>                         add a pattern to the immutable list
# @option -immutablenot <xxx>                      add a pattern to the immutablenot list
# @option -links <xxx>                             allow the synchronization of symbolic links (true/false/default)
# @option -merge <xxx>                             add a pattern to the merge list
# @flag -nocreationpartial                         xxx add a pattern to the nocreationpartial list
# @flag -nodeletionpartial                         xxx add a pattern to the nodeletionpartial list
# @flag -noupdatepartial                           xxx add a pattern to the noupdatepartial list
# @option -prefer <xxx>                            choose this replica's version for conflicting changes
# @option -preferpartial <xxx>                     add a pattern to the preferpartial list
# @option -rsrc <xxx>                              synchronize resource forks (true/false/default)
# @option -xattrignore <xxx>                       add a pattern to the xattrignore list
# @flag -xattrignorenot                            xxx add a pattern to the xattrignorenot list
# @flag -xattrs                                    synchronize extended attributes (xattrs)
# @option -backup <xxx>                            add a pattern to the backup list
# @option -backupcurr <xxx>                        add a pattern to the backupcurr list
# @option -backupcurrnot <xxx>                     add a pattern to the backupcurrnot list
# @option -backupdir <xxx>                         directory for storing centralized backups
# @option -backuploc[local|central] <xxx>          where backups are stored ('local' or 'central')
# @option -backupnot <xxx>                         add a pattern to the backupnot list
# @option -backupprefix <xxx>                      prefix for the names of backup files
# @flag -backups                                   (deprecated) keep backup copies of all files (see also 'backup')
# @option -backupsuffix <xxx>                      a suffix to be added to names of backup files
# @flag -confirmbigdel                             ask about whole-replica (or path) deletes (default true)
# @flag -confirmmerge                              ask for confirmation before committing results of a merge
# @flag -copyonconflict                            keep copies of conflicting files
# @flag -dontchmod                                 when set, never use the chmod system call
# @option -fastcheck[true|false|default] <xxx>     do fast update detection (true/false/default)
# @flag -fat                                       use appropriate options for FAT filesystems
# @flag -ignoreinodenumbers                        ignore inode number changes when detecting updates
# @option -maxbackups <n>                          number of backed up versions of a file
# @flag -numericids                                don't map uid/gid values by user/group names
# @flag -sortbysize                                list changed files by size, not name
# @option -sortfirst <xxx>                         add a pattern to the sortfirst list
# @option -sortlast <xxx>                          add a pattern to the sortlast list
# @flag -sortnewfirst                              list new before changed files
# @option -repeat <xxx>                            synchronize repeatedly (text interface only)
# @option -retry <n>                               re-try failed synchronizations N times (text ui only)
# @option -color <xxx>                             use color output for text UI (true/false/default)
# @flag -dumbtty                                   do not change terminal settings in text UI
# @option -height <n>                              height (in lines) of main window in graphical interface
# @flag -addversionno                              add version number to name of unison on server
# @flag -clientHostName                            xxx set host name of client
# @flag -halfduplex                                (deprecated) force half-duplex communication with the server
# @flag -killserver                                kill server when done (even when using sockets)
# @option -listen <xxx>                            listen on this name or addr in server socket mode (can repeat)
# @flag -rsync                                     activate the rsync transfer mode (default true)
# @option -servercmd <xxx>                         name of unison executable on remote server
# @option -socket <xxx>                            act as a server on a socket
# @option -sshargs <xxx>                           other arguments (if any) for remote shell command
# @option -sshcmd <xxx>                            path to the ssh executable
# @flag -stream                                    (deprecated) use a streaming protocol for transferring file contents (default true)
# @flag -testserver                                exit immediately after the connection to the server
# @flag -xferbycopying                             optimize transfers using local copies (default true)
# @flag -ignorearchives                            ignore existing archive files
# @option -addprefsto <xxx>                        file to add new prefs to
# @flag -contactquietly                            suppress the 'contacting server' message during startup
# @option -copymax <n>                             maximum number of simultaneous copyprog transfers
# @option -copyprog <xxx>                          external program for copying large files
# @option -copyprogrest <xxx>                      variant of copyprog for resuming partial transfers
# @option -copyquoterem <xxx>                      add quotes to remote file name for copyprog (true/false/default)
# @option -copythreshold <n>                       use copyprog on files bigger than this (if >=0, in Kb)
# @option -diff <xxx>                              set command for showing differences between files
# @flag -ignorelocks                               ignore locks left over from previous run (dangerous!)
# @option -include <xxx>                           include a profile's preferences
# @option -key <xxx>                               define a keyboard shortcut for this profile (in some UIs)
# @option -label <xxx>                             provide a descriptive string label for this profile
# @flag -log                                       record actions in logfile (default true)
# @option -logfile <xxx>                           logfile name
# @option -maxerrors <n>                           maximum number of errors before a directory transfer is aborted
# @flag -maxsizethreshold                          n prevent transfer of files bigger than this (if >=0, in Kb)
# @option -maxthreads <n>                          maximum number of simultaneous file transfers
# @option -mountpoint <xxx>                        abort if this path does not exist
# @option -rootalias <xxx>                         register alias for canonical root names
# @flag -showarchive                               show 'true names' (for rootalias) of roots and archive
# @option -source <xxx>                            include a file's preferences
# @option -ui[text|graphic] <xxx>                  select UI ('text' or 'graphic'); command-line only
# @option -unicode <xxx>                           assume Unicode encoding in case insensitive mode
# @flag -watch                                     when set, use a file watcher process to detect changes
# @option -debug <xxx>                             debug module xxx ('all' -> everything, 'verbose' -> more)
# @flag -dumparchives                              dump contents of archives just after loading
# @flag -fastercheckUNSAFE                         skip computing fingerprints for new files (experts only!)
# @flag -selftest                                  run internal tests and exit

_choice_doc() {
    unison -doc topics | \
    sed -n 's/^    \+\(\S\+\) \(.*\)/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"