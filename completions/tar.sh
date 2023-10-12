#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -A                                      append tar files to an archive
# @flag --catenate                              append tar files to an archive
# @flag --concatenate                           append tar files to an archive
# @flag -c --create                             create a new archive
# @flag --delete                                delete from the archive (not on mag tapes!)
# @flag -d                                      find differences between archive and file system
# @flag --diff                                  find differences between archive and file system
# @flag --compare                               find differences between archive and file system
# @flag -r --append                             append files to the end of an archive
# @flag --test-label                            test the archive volume label and exit
# @flag -t --list                               list the contents of an archive
# @flag -u --update                             only append files newer than copy in archive
# @flag -x                                      extract files from an archive
# @flag --extract                               extract files from an archive
# @flag --get                                   extract files from an archive
# @flag --check-device                          check device numbers when creating incremental archives (default)
# @option -g --listed-incremental <FILE>        handle new GNU-format incremental backup
# @flag -G --incremental                        handle old GNU-format incremental backup
# @option --hole-detection <TYPE>               technique to detect holes
# @flag --ignore-failed-read                    do not exit with nonzero on unreadable files
# @option --level <NUMBER>                      dump level for created listed-incremental archive
# @flag --no-check-device                       do not check device numbers when creating incremental archives
# @flag --no-seek                               archive is not seekable
# @flag -n --seek                               archive is seekable
# @option --occurrence <NUMBER>                 process only the NUMBERth occurrence of each file in the archive; this option is valid only in conjunction with one of the subcommands --delete, --diff, --extract or --list and when a list of files is given either on the command line or via the -T option; NUMBER defaults to 1
# @option --sparse-version <MAJOR[.MINOR]>      set version of the sparse format to use (implies --sparse)
# @flag -S --sparse                             handle sparse files efficiently
# @option --add-file <FILE>                     add given FILE to the archive (useful if its name starts with a dash)
# @option -C --directory <DIR>                  change to directory DIR
# @option --exclude <PATTERN>                   exclude files, given as a PATTERN
# @flag --exclude-backups                       exclude backup and lock files
# @flag --exclude-caches                        exclude contents of directories containing CACHEDIR.TAG, except for the tag file itself
# @flag --exclude-caches-all                    exclude directories containing CACHEDIR.TAG
# @flag --exclude-caches-under                  exclude everything under directories containing CACHEDIR.TAG
# @option --exclude-ignore <FILE>               read exclude patterns for each directory from FILE, if it exists
# @option --exclude-ignore-recursive <FILE>     read exclude patterns for each directory and its subdirectories from FILE, if it exists
# @option --exclude-tag <FILE>                  exclude contents of directories containing FILE, except for FILE itself
# @option --exclude-tag-all <FILE>              exclude directories containing FILE
# @option --exclude-tag-under <FILE>            exclude everything under directories containing FILE
# @flag --exclude-vcs                           exclude version control system directories
# @flag --exclude-vcs-ignores                   read exclude patterns from the VCS ignore files
# @flag --no-null                               disable the effect of the previous --null option
# @flag --no-recursion                          avoid descending automatically in directories
# @flag --no-unquote                            do not unquote input file or member names
# @flag --no-verbatim-files-from                -T treats file names starting with dash as options (default)
# @flag --null                                  -T reads null-terminated names; implies --verbatim-files-from
# @flag --recursion                             recurse into directories (default)
# @option -T --files-from <FILE>                get names to extract or create from FILE
# @flag --unquote                               unquote input file or member names (default)
# @flag --verbatim-files-from                   The -T reads file names verbatim (no escape or option handling)
# @option -X --exclude-from <FILE>              exclude patterns listed in FILE
# @flag --anchored                              patterns match file name start
# @flag --ignore-case                           ignore case
# @flag --no-anchored                           patterns match after any '/' (default for exclusion)
# @flag --no-ignore-case                        case sensitive matching (default)
# @flag --no-wildcards                          verbatim string matching
# @flag --no-wildcards-match-slash              wildcards do not match '/'
# @flag --wildcards                             use wildcards (default for exclusion)
# @flag --wildcards-match-slash                 wildcards match '/' (default for exclusion)
# @flag --keep-directory-symlink                preserve existing symlinks to directories when extracting
# @flag --keep-newer-files                      don't replace existing files that are newer than their archive copies
# @flag -k --keep-old-files                     don't replace existing files when extracting, treat them as errors
# @flag --no-overwrite-dir                      preserve metadata of existing directories
# @option --one-top-level <DIR>                 create a subdirectory to avoid having loose files extracted
# @flag --overwrite                             overwrite existing files when extracting
# @flag --overwrite-dir                         overwrite metadata of existing directories when extracting (default)
# @flag --recursive-unlink                      empty hierarchies prior to extracting directory
# @flag --remove-files                          remove files after adding them to the archive
# @flag --skip-old-files                        don't replace existing files when extracting, silently skip over them
# @flag -U --unlink-first                       remove each file prior to extracting over it
# @flag -W --verify                             attempt to verify the archive after writing it
# @flag --ignore-command-error                  ignore exit codes of children
# @flag --no-ignore-command-error               treat non-zero exit codes of children as error
# @flag -O --to-stdout                          extract files to standard output
# @option --to-command <COMMAND>                pipe extracted files to another program
# @option --atime-preserve[replace|system] <METHOD>  preserve access times on dumped files, either by restoring the times after reading (METHOD='replace'; default) or by not setting the times in the first place (METHOD='system')
# @flag --clamp-mtime                           only set time when the file is more recent than what was given with --mtime
# @flag --delay-directory-restore               delay setting modification times and permissions of extracted directories until the end of extraction
# @option --group[`_module_os_group`] <NAME>    force NAME as group for added files
# @option --group-map <FILE>                    use FILE to map file owner GIDs and names
# @option --mode <CHANGES>                      force (symbolic) mode CHANGES for added files
# @option --mtime <DATE-OR-FILE>                set mtime for added files from DATE-OR-FILE
# @flag -m --touch                              don't extract file modified time
# @flag --no-delay-directory-restore            cancel the effect of --delay-directory-restore option
# @flag --no-same-owner                         extract files as yourself (default for ordinary users)
# @flag --no-same-permissions                   apply the user's umask when extracting permissions from the archive (default for ordinary users)
# @flag --numeric-owner                         always use numbers for user/group names
# @option --owner[`_module_os_user`] <NAME>     force NAME as owner for added files
# @option --owner-map <FILE>                    use FILE to map file owner UIDs and names
# @flag -p                                      extract information about file permissions (default for superuser)
# @flag --preserve-permissions                  extract information about file permissions (default for superuser)
# @flag --same-permissions                      extract information about file permissions (default for superuser)
# @flag --same-owner                            try extracting files with the same ownership as exists in the archive (default for superuser)
# @option --sort <ORDER>                        directory sorting order: none (default), name or inode
# @flag -s                                      member arguments are listed in the same order as the files in the archive
# @flag --preserve-order                        member arguments are listed in the same order as the files in the archive
# @flag --same-order                            member arguments are listed in the same order as the files in the archive
# @flag --acls                                  Enable the POSIX ACLs support
# @flag --no-acls                               Disable the POSIX ACLs support
# @flag --no-selinux                            Disable the SELinux context support
# @flag --no-xattrs                             Disable extended attributes support
# @flag --selinux                               Enable the SELinux context support
# @flag --xattrs                                Enable extended attributes support
# @option --xattrs-exclude <MASK>               specify the exclude pattern for xattr keys
# @option --xattrs-include <MASK>               specify the include pattern for xattr keys
# @flag --force-local                           archive file is local even if it has a colon
# @option -f --file                             use archive file or device ARCHIVE
# @option -F <NAME>                             run script at end of each tape (implies -M)
# @option --info-script <NAME>                  run script at end of each tape (implies -M)
# @option --new-volume-script <NAME>            run script at end of each tape (implies -M)
# @option -L --tape-length <NUMBER>             change tape after writing NUMBER x 1024 bytes
# @flag -M --multi-volume                       create/list/extract multi-volume archive
# @option --rmt-command <COMMAND>               use given rmt COMMAND instead of rmt
# @option --rsh-command <COMMAND>               use remote COMMAND instead of rsh
# @option --volno-file <FILE>                   use/update the volume number in FILE
# @option -b --blocking-factor <BLOCKS>         BLOCKS x 512 bytes per record
# @flag -B --read-full-records                  reblock as we read (for 4.2BSD pipes)
# @flag -i --ignore-zeros                       ignore zeroed blocks in archive (means EOF)
# @option --record-size <NUMBER>                NUMBER of bytes per record, multiple of 512
# @option -H --format[gnu|oldgnu|pax|posix|ustar|v7]  create archive of the given format
# @flag --old-archive                           same as --format=v7
# @flag --portability                           same as --format=v7
# @option --pax-option* <keyword[[:]=value][,keyword[[:]=value]]>  control pax keywords
# @flag --posix                                 same as --format=posix
# @option -V --label <TEXT>                     create archive with volume name TEXT; at list/extract time, use TEXT as a globbing pattern for volume name
# @flag -a --auto-compress                      use archive suffix to determine the compression program
# @option -I --use-compress-program <PROG>      filter through PROG (must accept -d)
# @flag -j --bzip2                              filter the archive through bzip2
# @flag -J --xz                                 filter the archive through xz
# @flag --lzip                                  filter the archive through lzip
# @flag --lzma                                  filter the archive through xz
# @flag --lzop                                  filter the archive through lzop
# @flag --no-auto-compress                      do not use archive suffix to determine the compression program
# @flag --zstd                                  filter the archive through zstd
# @flag -z                                      filter the archive through gzip
# @flag --gzip                                  filter the archive through gzip
# @flag --gunzip                                filter the archive through gzip
# @flag --ungzip                                filter the archive through gzip
# @flag -Z                                      filter the archive through compress
# @flag --compress                              filter the archive through compress
# @flag --uncompress                            filter the archive through compress
# @option --backup[existing|never|nil|numbered|simple|t] <CONTROL>  backup before removal, choose version CONTROL
# @flag --hard-dereference                      follow hard links; archive and dump the files they refer to
# @flag -h --dereference                        follow symlinks; archive and dump the files they point to
# @option -K --starting-file <MEMBER-NAME>      begin at member MEMBER-NAME when reading the archive
# @option --newer-mtime <DATE>                  compare date and time when data changed only
# @option -N <DATE-OR-FILE>                     only store files newer than DATE-OR-FILE
# @option --newer <DATE-OR-FILE>                only store files newer than DATE-OR-FILE
# @option --after-date <DATE-OR-FILE>           only store files newer than DATE-OR-FILE
# @flag --one-file-system                       stay in local file system when creating archive
# @flag -P --absolute-names                     don't strip leading '/'s from file names
# @option --suffix <STRING>                     backup before removal, override usual suffix ('~' unless overridden by environment variable SIMPLE_BACKUP_SUFFIX)
# @option --strip-components <NUMBER>           strip NUMBER leading components from file names on extraction
# @option --transform <EXPRESSION>              use sed replace EXPRESSION to transform file names
# @option --xform <EXPRESSION>                  use sed replace EXPRESSION to transform file names
# @option --checkpoint <NUMBER>                 display progress messages every NUMBERth record (default 10)
# @option --checkpoint-action <ACTION>          execute ACTION on each checkpoint
# @flag --full-time                             print file time to its full resolution
# @option --index-file <FILE>                   send verbose output to FILE
# @flag -l --check-links                        print a message if not all links are dumped
# @option --no-quote-chars <STRING>             disable quoting for characters from STRING
# @option --quote-chars <STRING>                additionally quote characters from STRING
# @option --quoting-style[c|clocale|c-maybe|escape|literal|locale|shell|shell-always] <STYLE>  set name quoting style; see below for valid STYLE values
# @flag -R --block-number                       show block number within archive with each message
# @flag --show-defaults                         show tar defaults
# @flag --show-omitted-dirs                     when listing or extracting, list each directory that does not match search criteria
# @flag --show-snapshot-field-ranges            show valid ranges for snapshot-file fields
# @flag --show-transformed-names                show file or archive names after transformation
# @flag --show-stored-names                     show file or archive names after transformation
# @option --totals <SIGNAL>                     print total bytes after processing the archive; with an argument - print total bytes when this SIGNAL is delivered; Allowed signals are: SIGHUP, SIGQUIT, SIGINT, SIGUSR1 and SIGUSR2; the names without SIG prefix are also accepted
# @flag --utc                                   print file modification times in UTC
# @flag -v --verbose                            verbosely list files processed
# @option --warning <KEYWORD>                   warning control
# @flag -w                                      ask for confirmation for every action
# @flag --interactive                           ask for confirmation for every action
# @flag --confirmation                          ask for confirmation for every action
# @flag -o                                      when creating, same as --old-archive; when extracting, same as --no-same-owner
# @flag -? --help                               give this help list
# @flag --restrict                              disable use of some potentially harmful options
# @flag --usage                                 give a short usage message
# @flag --version                               print program version
# @arg files*[`_choice_files`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_files() {
    if [[ -n $argc_delete ]] \
    || [[ -n $argc_list ]] \
    || [[ -n $argc_x ]] \
    || [[ -n $argc_extract ]] \
    || [[ -n $argc_get ]] \
    ; then
        if [[ -n "$argc_file" ]]; then
            _argc_util_cache 3600 _choice_ls_tar_file "tar__choice_ls_tar_file:$argc_file" | _argc_util_comp_parts /
            return
        fi
    fi
    _argc_util_comp_path
}

_choice_ls_tar_file() {
    tar --list --file  "$argc_file"
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"