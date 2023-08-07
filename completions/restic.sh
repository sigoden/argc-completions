#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cacert*, <file>               file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag -h --help                         help for restic
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)

# {{ restic backup
# @cmd Create a new backup of files and/or directories
# @option -e --exclude <pattern>          exclude a pattern (can be specified multiple times)
# @flag --exclude-caches                  excludes cache directories that are marked with a CACHEDIR.TAG file.
# @option --exclude-file <file>           read exclude patterns from a file (can be specified multiple times)
# @option --exclude-if-present <filename[:header]>  takes filename[:header], exclude contents of directories containing filename (except filename itself) if header of that file is as provided (can be specified multiple times)
# @option --exclude-larger-than <size>    max size of the files to be backed up (allowed suffixes: k/K, m/M, g/G, t/T)
# @option --files-from <file>             read the files to backup from file (can be combined with file args; can be specified multiple times)
# @option --files-from-raw <file>         read the files to backup from file (can be combined with file args; can be specified multiple times)
# @option --files-from-verbatim <file>    read the files to backup from file (can be combined with file args; can be specified multiple times)
# @flag -f --force                        force re-reading the target files/directories (overrides the "parent" flag)
# @flag -h --help                         help for backup
# @option -H --host <hostname>            set the hostname for the snapshot manually.
# @option --iexclude <pattern>            same as --exclude pattern but ignores the casing of filenames
# @option --iexclude-file <file>          same as --exclude-file but ignores casing of filenames in patterns
# @flag --ignore-ctime                    ignore ctime changes when checking for modified files
# @flag --ignore-inode                    ignore inode number changes when checking for modified files
# @flag -x --one-file-system              exclude other file systems, don't cross filesystem boundaries and subvolumes
# @option --parent <snapshot>             use this parent snapshot (default: last snapshot in the repo that has the same target files/directories)
# @flag --stdin                           read backup from stdin
# @option --stdin-filename <filename>     filename to use when reading from stdin (default "stdin")
# @option --tag <tags>                    add tags for the new snapshot in the format `tag[,tag,...]` (can be specified multiple times) (default [])
# @option --time <time>                   time of the backup (ex.
# @flag --with-atime                      store the atime for all files and directories
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg file-dir* <FILE/DIR>
backup() {
    :;
}
# }} restic backup

# {{ restic cache
# @cmd Operate on local cache directories
# @flag --cleanup                         remove old cache directories
# @flag -h --help                         help for cache
# @option --max-age <days>                max age in days for cache directories to be considered old (default 30)
# @flag --no-size                         do not output the size of the cache directories
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
cache() {
    :;
}
# }} restic cache

# {{ restic cat
# @cmd Print internal objects to stdout
# @flag -h --help                         help for cat
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg cmd[pack|blob|snapshot|index|key|masterkey|config|lock]
# @arg id
cat_() {
    :;
}
# }} restic cat

# {{ restic check
# @cmd Check the repository for errors
# @flag --check-unused                    find unused blobs
# @flag -h --help                         help for check
# @flag --read-data                       read all data blobs
# @option --read-data-subset <subset>     read a subset of data packs, specified as 'n/t' for specific subset or either 'x%' or 'x.y%' for random subset
# @flag --with-cache                      use the cache
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
check() {
    :;
}
# }} restic check

# {{ restic copy
# @cmd Copy snapshots from one repository to another
# @flag -h --help                          help for copy
# @option -H --host <host>                 only consider snapshots for this host, when no snapshot ID is given (can be specified multiple times)
# @option --key-hint2 <string>             key ID of key to try decrypting the destination repository first (default: $RESTIC_KEY_HINT2)
# @option --password-command2 <command>    shell command to obtain the destination repository password from (default: $RESTIC_PASSWORD_COMMAND2)
# @option --password-file2 <file>          file to read the destination repository password from (default: $RESTIC_PASSWORD_FILE2)
# @option --path <path>                    only consider snapshots which include this (absolute) path, when no snapshot ID is given
# @option --repo2 <repository>             destination repository to copy snapshots to (default: $RESTIC_REPOSITORY2)
# @option --repository-file2 <file>        file from which to read the destination repository location to copy snapshots to (default: $RESTIC_REPOSITORY_FILE2)
# @option --tag <taglist>                  only consider snapshots which include this taglist, when no snapshot ID is given (default [])
# @option --cacert <file>                  file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>          set the cache directory.
# @flag --cleanup-cache                    auto remove old cache directories
# @flag --json                             set output mode to JSON for commands that support it
# @option --key-hint <key>                 key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>           limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>             limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                         do not use a local cache
# @flag --no-lock                          do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>          set extended option (key=value, can be specified multiple times)
# @option --password-command <command>     shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>        file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                         do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>         file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>         path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                 be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshotid*
copy() {
    :;
}
# }} restic copy

# {{ restic diff
# @cmd Show differences between two snapshots
# @flag -h --help                         help for diff
# @flag --metadata                        print changes in metadata
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshot-id
diff() {
    :;
}
# }} restic diff

# {{ restic dump
# @cmd Print a backed-up file to stdout
# @option -a --archive <format>           set archive format as "tar" or "zip" (default "tar")
# @flag -h --help                         help for dump
# @option -H --host <stringArray>         only consider snapshots for this host when the snapshot ID is "latest" (can be specified multiple times)
# @option --path <path>                   only consider snapshots which include this (absolute) path for snapshot ID "latest"
# @option --tag <taglist>                 only consider snapshots which include this taglist for snapshot ID "latest" (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshotid
# @arg file
dump() {
    :;
}
# }} restic dump

# {{ restic find
# @cmd Find a file, a directory or restic IDs
# @flag --blob                            pattern is a blob-ID
# @flag -h --help                         help for find
# @option -H --host <host>                only consider snapshots for this host, when no snapshot ID is given (can be specified multiple times)
# @flag -i --ignore-case                  ignore case for pattern
# @flag -l --long                         use a long listing format showing size and mode
# @option -N --newest <string>            newest modification date/time
# @option -O --oldest <string>            oldest modification date/time
# @flag --pack                            pattern is a pack-ID
# @option --path <path>                   only consider snapshots which include this (absolute) path, when no snapshot-ID is given
# @flag --show-pack-id                    display the pack-ID the blobs belong to (with --blob or --tree)
# @option -s --snapshot <id>              snapshot id to search in (can be given multiple times)
# @option --tag <taglist>                 only consider snapshots which include this taglist, when no snapshot-ID is given (default [])
# @flag --tree                            pattern is a tree-ID
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg pattern*
find() {
    :;
}
# }} restic find

# {{ restic forget
# @cmd Remove snapshots from the repository
# @option -l --keep-last <n>                  keep the last n snapshots
# @option -H --keep-hourly <n>                keep the last n hourly snapshots
# @option -d --keep-daily <n>                 keep the last n daily snapshots
# @option -w --keep-weekly <n>                keep the last n weekly snapshots
# @option -m --keep-monthly <n>               keep the last n monthly snapshots
# @option -y --keep-yearly <n>                keep the last n yearly snapshots
# @option --keep-within <duration>            keep snapshots that are newer than duration (eg.
# @option --keep-within-hourly <duration>     keep hourly snapshots that are newer than duration (eg.
# @option --keep-within-daily <duration>      keep daily snapshots that are newer than duration (eg.
# @option --keep-within-weekly <duration>     keep weekly snapshots that are newer than duration (eg.
# @option --keep-within-monthly <duration>    keep monthly snapshots that are newer than duration (eg.
# @option --keep-within-yearly <duration>     keep yearly snapshots that are newer than duration (eg.
# @option --keep-tag <taglist>                keep snapshots with this taglist (can be specified multiple times) (default [])
# @option --host <host>                       only consider snapshots with the given host (can be specified multiple times)
# @option --tag <taglist>                     only consider snapshots which include this taglist in the format `tag[,tag,...]` (can be specified multiple times) (default [])
# @option --path <path>                       only consider snapshots which include this (absolute) path (can be specified multiple times)
# @flag -c --compact                          use compact output format
# @option -g --group-by <string>              string for grouping snapshots by host,paths,tags (default "host,paths")
# @flag -n --dry-run                          do not delete anything, just print what would be done
# @flag --prune                               automatically run the 'prune' command if snapshots have been removed
# @option --max-unused <limit>                tolerate given limit of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited') (default "5%")
# @option --max-repack-size <size>            maximum size to repack (allowed suffixes: k/K, m/M, g/G, t/T)
# @flag --repack-cacheable-only               only repack packs which are cacheable
# @flag -h --help                             help for forget
# @option --cacert <file>                     file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>             set the cache directory.
# @flag --cleanup-cache                       auto remove old cache directories
# @flag --json                                set output mode to JSON for commands that support it
# @option --key-hint <key>                    key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>              limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>                limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                            do not use a local cache
# @flag --no-lock                             do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>             set extended option (key=value, can be specified multiple times)
# @option --password-command <command>        shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>           file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                            do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>            file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>            path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                    be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshot-id <snapshot ID>
forget() {
    :;
}
# }} restic forget

# {{ restic generate
# @cmd Generate manual pages and auto-completion files (bash, fish, zsh)
# @option --bash-completion <file>        write bash completion file
# @option --fish-completion <file>        write fish completion file
# @flag -h --help                         help for generate
# @option --man <directory>               write man pages to directory
# @option --zsh-completion <file>         write zsh completion file
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
generate() {
    :;
}
# }} restic generate

# {{ restic init
# @cmd Initialize a new repository
# @flag --copy-chunker-params              copy chunker parameters from the secondary repository (useful with the copy command)
# @flag -h --help                          help for init
# @option --key-hint2 <string>             key ID of key to try decrypting the secondary repository first (default: $RESTIC_KEY_HINT2)
# @option --password-command2 <command>    shell command to obtain the secondary repository password from (default: $RESTIC_PASSWORD_COMMAND2)
# @option --password-file2 <file>          file to read the secondary repository password from (default: $RESTIC_PASSWORD_FILE2)
# @option --repo2 <repository>             secondary repository to copy chunker parameters from (default: $RESTIC_REPOSITORY2)
# @option --repository-file2 <file>        file from which to read the secondary repository location to copy chunker parameters from (default: $RESTIC_REPOSITORY_FILE2)
# @option --cacert <file>                  file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>          set the cache directory.
# @flag --cleanup-cache                    auto remove old cache directories
# @flag --json                             set output mode to JSON for commands that support it
# @option --key-hint <key>                 key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>           limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>             limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                         do not use a local cache
# @flag --no-lock                          do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>          set extended option (key=value, can be specified multiple times)
# @option --password-command <command>     shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>        file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                         do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>         file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>         path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                 be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
init() {
    :;
}
# }} restic init

# {{ restic key
# @cmd Manage keys (passwords)
# @flag -h --help                         help for key
# @option --host <string>                 the hostname for new keys
# @option --new-password-file <file>      file from which to read the new password
# @option --user <string>                 the username for new keys
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg cmd[list|add|remove|passwd]
# @arg id
key() {
    :;
}
# }} restic key

# {{ restic list
# @cmd List objects in the repository
# @flag -h --help                         help for list
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg cmd[blobs|packs|index|snapshots|keys|locks]
list() {
    :;
}
# }} restic list

# {{ restic ls
# @cmd List files in a snapshot
# @flag -h --help                         help for ls
# @option -H --host <host>                only consider snapshots for this host, when no snapshot ID is given (can be specified multiple times)
# @flag -l --long                         use a long listing format showing size and mode
# @option --path <path>                   only consider snapshots which include this (absolute) path, when no snapshot ID is given
# @flag --recursive                       include files in subfolders of the listed directories
# @option --tag <taglist>                 only consider snapshots which include this taglist, when no snapshot ID is given (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshotid
# @arg dir*
ls() {
    :;
}
# }} restic ls

# {{ restic migrate
# @cmd Apply migrations
# @flag -f --force                        apply a migration a second time
# @flag -h --help                         help for migrate
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg name
migrate() {
    :;
}
# }} restic migrate

# {{ restic mount
# @cmd Mount the repository
# @flag --allow-other                       allow other users to access the data in the mounted directory
# @flag -h --help                           help for mount
# @option -H --host <stringArray>           only consider snapshots for this host (can be specified multiple times)
# @flag --no-default-permissions            for 'allow-other', ignore Unix permissions and allow users to read all snapshot files
# @flag --owner-root                        use 'root' as the owner of files and dirs
# @option --path <path>                     only consider snapshots which include this (absolute) path
# @option --snapshot-template <template>    set template to use for snapshot dirs (default "2006-01-02T15:04:05Z07:00")
# @option --tag <taglist>                   only consider snapshots which include this taglist (default [])
# @option --cacert <file>                   file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>           set the cache directory.
# @flag --cleanup-cache                     auto remove old cache directories
# @flag --json                              set output mode to JSON for commands that support it
# @option --key-hint <key>                  key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>            limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>              limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                          do not use a local cache
# @flag --no-lock                           do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>           set extended option (key=value, can be specified multiple times)
# @option --password-command <command>      shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>         file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                          do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>          file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>          path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                  be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg mountpoint
mount() {
    :;
}
# }} restic mount

# {{ restic prune
# @cmd Remove unneeded data from the repository
# @flag -n --dry-run                      do not modify the repository, just print what would be done
# @flag -h --help                         help for prune
# @option --max-repack-size <size>        maximum size to repack (allowed suffixes: k/K, m/M, g/G, t/T)
# @option --max-unused <limit>            tolerate given limit of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited') (default "5%")
# @flag --repack-cacheable-only           only repack packs which are cacheable
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
prune() {
    :;
}
# }} restic prune

# {{ restic rebuild-index
# @cmd Build a new index
# @flag -h --help                         help for rebuild-index
# @flag --read-all-packs                  read all pack files to generate new index from scratch
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
rebuild-index() {
    :;
}
# }} restic rebuild-index

# {{ restic recover
# @cmd Recover data from the repository
# @flag -h --help                         help for recover
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
recover() {
    :;
}
# }} restic recover

# {{ restic restore
# @cmd Extract the data from a snapshot
# @option -e --exclude <pattern>          exclude a pattern (can be specified multiple times)
# @flag -h --help                         help for restore
# @option -H --host <stringArray>         only consider snapshots for this host when the snapshot ID is "latest" (can be specified multiple times)
# @option --iexclude <pattern>            same as --exclude but ignores the casing of filenames
# @option --iinclude <pattern>            same as --include but ignores the casing of filenames
# @option -i --include <pattern>          include a pattern, exclude everything else (can be specified multiple times)
# @option --path <path>                   only consider snapshots which include this (absolute) path for snapshot ID "latest"
# @option --tag <taglist>                 only consider snapshots which include this taglist for snapshot ID "latest" (default [])
# @option -t --target <string>            directory to extract data to
# @flag --verify                          verify restored files content
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshotid
restore() {
    :;
}
# }} restic restore

# {{ restic self-update
# @cmd Update the restic binary
# @flag -h --help                         help for self-update
# @option --output <filename>             Save the downloaded file as filename (default: running binary itself)
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
self-update() {
    :;
}
# }} restic self-update

# {{ restic snapshots
# @cmd List all snapshots
# @flag -c --compact                      use compact output format
# @option -g --group-by <string>          string for grouping snapshots by host,paths,tags
# @flag -h --help                         help for snapshots
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --latest <n>                    only show the last n snapshots for each host and path
# @option --path <path>                   only consider snapshots for this path (can be specified multiple times)
# @option --tag <taglist>                 only consider snapshots which include this taglist in the format `tag[,tag,...]` (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshotid*
snapshots() {
    :;
}
# }} restic snapshots

# {{ restic stats
# @cmd Scan the repository and show basic statistics
# @flag -h --help                         help for stats
# @option -H --host <host>                only consider snapshots with the given host (can be specified multiple times)
# @option --mode <string>                 counting mode: restore-size (default), files-by-contents, blobs-per-file or raw-data (default "restore-size")
# @option --path <path>                   only consider snapshots which include this (absolute) path (can be specified multiple times)
# @option --tag <taglist>                 only consider snapshots which include this taglist in the format `tag[,tag,...]` (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshot-id <snapshot ID>
stats() {
    :;
}
# }} restic stats

# {{ restic tag
# @cmd Modify tags on snapshots
# @option --add <tags>                    tags which will be added to the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @flag -h --help                         help for tag
# @option -H --host <host>                only consider snapshots for this host, when no snapshot ID is given (can be specified multiple times)
# @option --path <path>                   only consider snapshots which include this (absolute) path, when no snapshot-ID is given
# @option --remove <tags>                 tags which will be removed from the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @option --set <tags>                    tags which will replace the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @option --tag <taglist>                 only consider snapshots which include this taglist, when no snapshot-ID is given (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
# @arg snapshot-id*
tag() {
    :;
}
# }} restic tag

# {{ restic unlock
# @cmd Remove locks other processes created
# @flag -h --help                         help for unlock
# @flag --remove-all                      remove all locks, even non-stale ones
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
unlock() {
    :;
}
# }} restic unlock

# {{ restic version
# @cmd Print version information
# @flag -h --help                         help for version
# @option --cacert <file>                 file to load root certificates from (default: use system certificates)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <int>          limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <int>            limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key
# @option -v --verbose <n>                be verbose (specify multiple times or a level using --verbose=n, max level/times is 3)
version() {
    :;
}
# }} restic version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_repo() {
    if _argc_util_has_path_prefix "$ARGC_FILTER"; then
        _argc_util_comp_path dir
        return
    fi
    _choice_remote_repo
}

_choice_remote_repo() {
    command cat <<-'EOF' | _argc_util_comp_kv :
sftp=;;SFTP
rest=;;HTTP
s3=;;Amazon S3
swift=;;OpenStack Swift
b2=;;Backblaze B2
azure=;;Microsoft Azure Blob Storage
gs=;;Google Cloud Storage
rclone=;;rclone
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"