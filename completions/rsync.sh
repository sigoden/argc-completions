#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose                   increase verbosity
# @option --info <FLAGS>               fine-grained informational verbosity
# @option --debug <FLAGS>              fine-grained debug verbosity
# @option --stderr <e|a|c>             change stderr output mode (default: errors)
# @flag -q --quiet                     suppress non-error messages
# @flag --no-motd                      suppress daemon-mode MOTD
# @flag -c --checksum                  skip based on checksum, not mod-time & size
# @flag -a --archive                   archive mode is -rlptgoD (no -A,-X,-U,-N,-H)
# @flag --no-OPTION                    turn off an implied OPTION (e.g. --no-D)
# @flag -r --recursive                 recurse into directories
# @flag -R --relative                  use relative path names
# @flag --no-implied-dirs              don't send implied dirs with --relative
# @flag -b --backup                    make backups (see --suffix & --backup-dir)
# @option --backup-dir <DIR>           make backups into hierarchy based in DIR
# @option --suffix                     backup suffix (default ~ w/o --backup-dir)
# @flag -u --update                    skip files that are newer on the receiver
# @flag --inplace                      update destination files in-place
# @flag --append                       append data onto shorter files
# @flag --append-verify                --append w/old data in file checksum
# @flag -d --dirs                      transfer directories without recursing
# @flag --old-dirs                     works like --dirs when talking to old rsync
# @flag --old-d                        works like --dirs when talking to old rsync
# @flag --mkpath                       create destination's missing path components
# @flag -l --links                     copy symlinks as symlinks
# @flag -L --copy-links                transform symlink into referent file/dir
# @flag --copy-unsafe-links            only "unsafe" symlinks are transformed
# @flag --safe-links                   ignore symlinks that point outside the tree
# @flag --munge-links                  munge symlinks to make them safe & unusable
# @flag -k --copy-dirlinks             transform symlink to dir into referent dir
# @flag -K --keep-dirlinks             treat symlinked dir on receiver as dir
# @flag -H --hard-links                preserve hard links
# @flag -p --perms                     preserve permissions
# @flag -E --executability             preserve executability
# @option --chmod                      affect file and/or directory permissions
# @flag -A --acls                      preserve ACLs (implies --perms)
# @flag -X --xattrs                    preserve extended attributes
# @flag -o --owner                     preserve owner (super-user only)
# @flag -g --group                     preserve group
# @flag --devices                      preserve device files (super-user only)
# @flag --copy-devices                 copy device contents as a regular file
# @flag --write-devices                write to devices as files (implies --inplace)
# @flag --specials                     preserve special files
# @flag -D                             same as --devices --specials
# @flag -t --times                     preserve modification times
# @flag -U --atimes                    preserve access (use) times
# @flag --open-noatime                 avoid changing the atime on opened files
# @flag -N --crtimes                   preserve create times (newness)
# @flag -O --omit-dir-times            omit directories from --times
# @flag -J --omit-link-times           omit symlinks from --times
# @flag --super                        receiver attempts super-user activities
# @flag --fake-super                   store/recover privileged attrs using xattrs
# @flag -S --sparse                    turn sequences of nulls into sparse blocks
# @flag --preallocate                  allocate dest files before writing them
# @flag -n --dry-run                   perform a trial run with no changes made
# @flag -W --whole-file                copy files whole (w/o delta-xfer algorithm)
# @option --checksum-choice[`_choice_checksum`] <STR>  choose the checksum algorithm (aka --cc)
# @flag -x --one-file-system           don't cross filesystem boundaries
# @option -B --block-size <SIZE>       force a fixed checksum block-size
# @option -e --rsh <COMMAND>           specify the remote shell to use
# @option --rsync-path <PROGRAM>       specify the rsync to run on remote machine
# @flag --existing                     skip creating new files on receiver
# @flag --ignore-existing              skip updating files that exist on receiver
# @flag --remove-source-files          sender removes synchronized files (non-dir)
# @flag --del                          an alias for --delete-during
# @flag --delete                       delete extraneous files from dest dirs
# @flag --delete-before                receiver deletes before xfer, not during
# @flag --delete-during                receiver deletes during the transfer
# @flag --delete-delay                 find deletions during, delete after
# @flag --delete-after                 receiver deletes after transfer, not during
# @flag --delete-excluded              also delete excluded files from dest dirs
# @flag --ignore-missing-args          ignore missing source args without error
# @flag --delete-missing-args          delete missing source args from destination
# @flag --ignore-errors                delete even if there are I/O errors
# @flag --force                        force deletion of dirs even if not empty
# @option --max-delete <NUM>           don't delete more than NUM files
# @option --max-size <SIZE>            don't transfer any file larger than SIZE
# @option --min-size <SIZE>            don't transfer any file smaller than SIZE
# @option --max-alloc <SIZE>           change a limit relating to memory alloc
# @flag --partial                      keep partially transferred files
# @option --partial-dir <DIR>          put a partially transferred file into DIR
# @flag --delay-updates                put all updated files into place at end
# @flag -m --prune-empty-dirs          prune empty directory chains from file-list
# @flag --numeric-ids                  don't map uid/gid values by user/group name
# @option --usermap <STRING>           custom username mapping
# @option --groupmap <STRING>          custom groupname mapping
# @option --chown <USER:GROUP>         simple username/groupname mapping
# @option --timeout <SECONDS>          set I/O timeout in seconds
# @option --contimeout <SECONDS>       set daemon connection timeout in seconds
# @flag -I --ignore-times              don't skip files that match size and time
# @flag --size-only                    skip files that match in size
# @option -@ --modify-window <NUM>     set the accuracy for mod-time comparisons
# @option -T --temp-dir <DIR>          create temporary files in directory DIR
# @flag -y --fuzzy                     find similar file for basis if no dest file
# @option --compare-dest <DIR>         also compare destination files relative to DIR
# @option --copy-dest <DIR>            ... and include copies of unchanged files
# @option --link-dest <DIR>            hardlink to files in DIR when unchanged
# @flag -z --compress                  compress file data during the transfer
# @option --compress-choice[`_choice_compress`] <STR>  choose the compression algorithm (aka --zc)
# @option --compress-level <NUM>       explicitly set compression level (aka --zl)
# @option --skip-compress <LIST>       skip compressing files with suffix in LIST
# @flag -C --cvs-exclude               auto-ignore files in the same way CVS does
# @option -f --filter <RULE>           add a file-filtering RULE
# @flag -F                             same as --filter='dir-merge /.rsync-filter' repeated: --filter='- .rsync-filter'
# @option --exclude <PATTERN>          exclude files matching PATTERN
# @option --exclude-from <FILE>        read exclude patterns from FILE
# @option --include <PATTERN>          don't exclude files matching PATTERN
# @option --include-from <FILE>        read include patterns from FILE
# @option --files-from <FILE>          read list of source-file names from FILE
# @flag -0 --from0                     all *-from/filter files are delimited by 0s
# @flag --old-args                     disable the modern arg-protection idiom
# @flag -s --secluded-args             use the protocol to safely send the args
# @flag --trust-sender                 trust the remote sender's file list
# @option --copy-as <USER[:GROUP]>     specify user & optional group for the copy
# @option --address                    bind address for outgoing socket to daemon
# @option --port                       specify double-colon alternate port number
# @option --sockopts <OPTIONS>         specify custom TCP options
# @flag --blocking-io                  use blocking I/O for the remote shell
# @option --outbuf <N|L|B>             set out buffering to None, Line, or Block
# @flag --stats                        give some file-transfer stats
# @flag -8 --8-bit-output              leave high-bit chars unescaped in output
# @flag -h --human-readable            output numbers in a human-readable format
# @flag --progress                     show progress during transfer
# @flag -P                             same as --partial --progress
# @flag -i --itemize-changes           output a change-summary for all updates
# @option -M --remote-option <OPT>     send OPTION to the remote side only
# @option --out-format <FORMAT>        output updates using the specified FORMAT
# @option --log-file <FILE>            log what we're doing to the specified FILE
# @option --log-file-format <FMT>      log updates using the specified FMT
# @option --password-file <FILE>       read daemon-access password from FILE
# @option --early-input <FILE>         use FILE for daemon's early exec input
# @flag --list-only                    list the files instead of copying them
# @option --bwlimit <RATE>             limit socket I/O bandwidth
# @option --stop-after <MINS>          Stop rsync after MINS minutes have elapsed
# @option --stop-at <y-m-dTh:m>        Stop rsync at the specified point in time
# @flag --fsync                        fsync every written file
# @option --write-batch <FILE>         write a batched update to FILE
# @option --only-write-batch <FILE>    like --write-batch but w/o updating dest
# @option --read-batch <FILE>          read a batched update from FILE
# @option --protocol <NUM>             force an older protocol version to be used
# @option --iconv <CONVERT_SPEC>       request charset conversion of filenames
# @option --checksum-seed <NUM>        set block/file checksum seed (advanced)
# @flag -4 --ipv4                      prefer IPv4
# @flag -6 --ipv6                      prefer IPv6
# @flag -V --version                   print the version + other info and exit
# @flag --help                         show this help (* -h is help only on its own)
# @arg src-path
# @arg dest-path

_choice_checksum() {
    printf "%s\n" xxh128 xxh3 xxh64 md5 md4 sha1 none
}

_choice_compress() {
    printf "%s\n" zstd lz4 zlibx zlib none
}

command eval "$(argc --argc-eval "$0" "$@")"