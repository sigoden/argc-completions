#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cacert*, <file>               file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag -h --help                         help for restic
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)

# {{ restic backup
# @cmd Create a new backup of files and/or directories
# @flag -n --dry-run                      do not upload or write any data, just show what would be done
# @option -e --exclude <pattern>          exclude a pattern (can be specified multiple times)
# @flag --exclude-caches                  excludes cache directories that are marked with a CACHEDIR.TAG file.
# @option --exclude-file <file>           read exclude patterns from a file (can be specified multiple times)
# @option --exclude-if-present <filename[:header]>  takes filename[:header], exclude contents of directories containing filename (except filename itself) if header of that file is as provided (can be specified multiple times)
# @option --exclude-larger-than <size>    max size of the files to be backed up (allowed suffixes: k/K, m/M, g/G, t/T)
# @option --files-from <file>             read the files to backup from file (can be combined with file args; can be specified multiple times)
# @option --files-from-raw <file>         read the files to backup from file (can be combined with file args; can be specified multiple times)
# @option --files-from-verbatim <file>    read the files to backup from file (can be combined with file args; can be specified multiple times)
# @flag -f --force                        force re-reading the target files/directories (overrides the "parent" flag)
# @option -g --group-by <group>           group snapshots by host, paths and/or tags, separated by comma (disable grouping with '') (default host,paths)
# @flag -h --help                         help for backup
# @option -H --host <hostname>            set the hostname for the snapshot manually.
# @option --iexclude <pattern>            same as --exclude pattern but ignores the casing of filenames
# @option --iexclude-file <file>          same as --exclude-file but ignores casing of filenames in patterns
# @flag --ignore-ctime                    ignore ctime changes when checking for modified files
# @flag --ignore-inode                    ignore inode number changes when checking for modified files
# @flag --no-scan                         do not run scanner to estimate size of backup
# @flag -x --one-file-system              exclude other file systems, don't cross filesystem boundaries and subvolumes
# @option --parent <snapshot>             use this parent snapshot (default: latest snapshot in the group determined by --group-by and not newer than the timestamp determined by --time)
# @option --read-concurrency <n>          read n files concurrently (default: $RESTIC_READ_CONCURRENCY or 2)
# @flag --stdin                           read backup from stdin
# @option --stdin-filename <filename>     filename to use when reading from stdin (default "stdin")
# @option --tag <tags>                    add tags for the new snapshot in the format `tag[,tag,...]` (can be specified multiple times) (default [])
# @option --time <time>                   time of the backup (ex.
# @flag --with-atime                      store the atime for all files and directories
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
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
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
cache() {
    :;
}
# }} restic cache

# {{ restic cat
# @cmd Print internal objects to stdout
# @flag -h --help                         help for cat
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg masterkey-config-pack-id-blob-id-snapshot-id-index-id-key-id-lock-id-tree-snapshot-subfolder <masterkey|config|pack ID|blob ID|snapshot ID|index ID|key ID|lock ID|tree snapshot:subfolder>
cat_() {
    :;
}
# }} restic cat

# {{ restic check
# @cmd Check the repository for errors
# @flag -h --help                         help for check
# @flag --read-data                       read all data blobs
# @option --read-data-subset <subset>     read a subset of data packs, specified as 'n/t' for specific part, or either 'x%' or 'x.y%' or a size in bytes with suffixes k/K, m/M, g/G, t/T for a random subset
# @flag --with-cache                      use existing cache, only read uncached data from repository
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
check() {
    :;
}
# }} restic check

# {{ restic copy
# @cmd Copy snapshots from one repository to another
# @option --from-key-hint <string>             key ID of key to try decrypting the source repository first (default: $RESTIC_FROM_KEY_HINT)
# @option --from-password-command <command>    shell command to obtain the source repository password from (default: $RESTIC_FROM_PASSWORD_COMMAND)
# @option --from-password-file <file>          file to read the source repository password from (default: $RESTIC_FROM_PASSWORD_FILE)
# @option --from-repo <repository>             source repository to copy snapshots from (default: $RESTIC_FROM_REPOSITORY)
# @option --from-repository-file <file>        file from which to read the source repository location to copy snapshots from (default: $RESTIC_FROM_REPOSITORY_FILE)
# @flag -h --help                              help for copy
# @option -H --host <host>                     only consider snapshots for this host (can be specified multiple times)
# @option --path <path>                        only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --tag <tag[,tag,...]>                only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                      file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>              set the cache directory.
# @flag --cleanup-cache                        auto remove old cache directories
# @option --compression <mode>                 compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                         skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                                 set output mode to JSON for commands that support it
# @option --key-hint <key>                     key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>              limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>                limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                             do not use a local cache
# @flag --no-lock                              do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>              set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>                   set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>         shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>            file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                             do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>             file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>              retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>             path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                           be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid*
copy() {
    :;
}
# }} restic copy

# {{ restic diff
# @cmd Show differences between two snapshots
# @flag -h --help                         help for diff
# @flag --metadata                        print changes in metadata
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid
diff() {
    :;
}
# }} restic diff

# {{ restic dump
# @cmd Print a backed-up file to stdout
# @option -a --archive <format>           set archive format as "tar" or "zip" (default "tar")
# @flag -h --help                         help for dump
# @option -H --host <host>                only consider snapshots for this host, when snapshot ID "latest" is given (can be specified multiple times)
# @option --path <path>                   only consider snapshots including this (absolute) path, when snapshot ID "latest" is given (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...], when snapshot ID "latest" is given (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
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
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @flag --human-readable                  print sizes in human readable format
# @flag -i --ignore-case                  ignore case for pattern
# @flag -l --long                         use a long listing format showing size and mode
# @option -N --newest <string>            newest modification date/time
# @option -O --oldest <string>            oldest modification date/time
# @flag --pack                            pattern is a pack-ID
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @flag --show-pack-id                    display the pack-ID the blobs belong to (with --blob or --tree)
# @option -s --snapshot <id>              snapshot id to search in (can be given multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @flag --tree                            pattern is a tree-ID
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg pattern*
find() {
    :;
}
# }} restic find

# {{ restic forget
# @cmd Remove snapshots from the repository
# @option -l --keep-last <n>                  keep the last n snapshots (use 'unlimited' to keep all snapshots)
# @option -H --keep-hourly <n>                keep the last n hourly snapshots (use 'unlimited' to keep all hourly snapshots)
# @option -d --keep-daily <n>                 keep the last n daily snapshots (use 'unlimited' to keep all daily snapshots)
# @option -w --keep-weekly <n>                keep the last n weekly snapshots (use 'unlimited' to keep all weekly snapshots)
# @option -m --keep-monthly <n>               keep the last n monthly snapshots (use 'unlimited' to keep all monthly snapshots)
# @option -y --keep-yearly <n>                keep the last n yearly snapshots (use 'unlimited' to keep all yearly snapshots)
# @option --keep-within <duration>            keep snapshots that are newer than duration (eg.
# @option --keep-within-hourly <duration>     keep hourly snapshots that are newer than duration (eg.
# @option --keep-within-daily <duration>      keep daily snapshots that are newer than duration (eg.
# @option --keep-within-weekly <duration>     keep weekly snapshots that are newer than duration (eg.
# @option --keep-within-monthly <duration>    keep monthly snapshots that are newer than duration (eg.
# @option --keep-within-yearly <duration>     keep yearly snapshots that are newer than duration (eg.
# @option --keep-tag <taglist>                keep snapshots with this taglist (can be specified multiple times) (default [])
# @option --host <host>                       only consider snapshots for this host (can be specified multiple times)
# @option --tag <tag[,tag,...]>               only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --path <path>                       only consider snapshots including this (absolute) path (can be specified multiple times)
# @flag -c --compact                          use compact output format
# @option -g --group-by <group>               group snapshots by host, paths and/or tags, separated by comma (disable grouping with '') (default host,paths)
# @flag -n --dry-run                          do not delete anything, just print what would be done
# @flag --prune                               automatically run the 'prune' command if snapshots have been removed
# @option --max-unused <limit>                tolerate given limit of unused data (absolute value in bytes with suffixes k/K, m/M, g/G, t/T, a value in % or the word 'unlimited') (default "5%")
# @option --max-repack-size <size>            maximum size to repack (allowed suffixes: k/K, m/M, g/G, t/T)
# @flag --repack-cacheable-only               only repack packs which are cacheable
# @flag --repack-small                        repack pack files below 80% of target pack size
# @flag --repack-uncompressed                 repack all uncompressed data
# @flag -h --help                             help for forget
# @option --cacert <file>                     file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>             set the cache directory.
# @flag --cleanup-cache                       auto remove old cache directories
# @option --compression <mode>                compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                        skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                                set output mode to JSON for commands that support it
# @option --key-hint <key>                    key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>             limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>               limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                            do not use a local cache
# @flag --no-lock                             do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>             set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>                  set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>        shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>           file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                            do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>            file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>             retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>            path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                          be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshot-id <snapshot ID>
forget() {
    :;
}
# }} restic forget

# {{ restic generate
# @cmd Generate manual pages and auto-completion files (bash, fish, zsh, powershell)
# @option --bash-completion <file>          write bash completion file
# @option --fish-completion <file>          write fish completion file
# @flag -h --help                           help for generate
# @option --man <directory>                 write man pages to directory
# @option --powershell-completion <file>    write powershell completion file
# @option --zsh-completion <file>           write zsh completion file
# @option --cacert <file>                   file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>           set the cache directory.
# @flag --cleanup-cache                     auto remove old cache directories
# @option --compression <mode>              compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                      skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                              set output mode to JSON for commands that support it
# @option --key-hint <key>                  key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>           limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>             limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                          do not use a local cache
# @flag --no-lock                           do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>           set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>                set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>      shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>         file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                          do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>          file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>           retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>          path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                        be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
generate() {
    :;
}
# }} restic generate

# {{ restic init
# @cmd Initialize a new repository
# @flag --copy-chunker-params                  copy chunker parameters from the secondary repository (useful with the copy command)
# @option --from-key-hint <string>             key ID of key to try decrypting the source repository first (default: $RESTIC_FROM_KEY_HINT)
# @option --from-password-command <command>    shell command to obtain the source repository password from (default: $RESTIC_FROM_PASSWORD_COMMAND)
# @option --from-password-file <file>          file to read the source repository password from (default: $RESTIC_FROM_PASSWORD_FILE)
# @option --from-repo <repository>             source repository to copy chunker parameters from (default: $RESTIC_FROM_REPOSITORY)
# @option --from-repository-file <file>        file from which to read the source repository location to copy chunker parameters from (default: $RESTIC_FROM_REPOSITORY_FILE)
# @flag -h --help                              help for init
# @option --repository-version <string>        repository format version to use, allowed values are a format version, 'latest' and 'stable' (default "stable")
# @option --cacert <file>                      file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>              set the cache directory.
# @flag --cleanup-cache                        auto remove old cache directories
# @option --compression <mode>                 compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                         skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                                 set output mode to JSON for commands that support it
# @option --key-hint <key>                     key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>              limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>                limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                             do not use a local cache
# @flag --no-lock                              do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>              set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>                   set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>         shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>            file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                             do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>             file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>              retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>             path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                           be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
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
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg enum[list|add|remove|passwd]
# @arg id
key() {
    :;
}
# }} restic key

# {{ restic list
# @cmd List objects in the repository
# @flag -h --help                         help for list
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg enum[blobs|packs|index|snapshots|keys|locks]
list() {
    :;
}
# }} restic list

# {{ restic ls
# @cmd List files in a snapshot
# @flag -h --help                         help for ls
# @option -H --host <host>                only consider snapshots for this host, when snapshot ID "latest" is given (can be specified multiple times)
# @flag --human-readable                  print sizes in human readable format
# @flag -l --long                         use a long listing format showing size and mode
# @option --path <path>                   only consider snapshots including this (absolute) path, when snapshot ID "latest" is given (can be specified multiple times)
# @flag --recursive                       include files in subfolders of the listed directories
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...], when snapshot ID "latest" is given (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
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
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg migration-name <migration name>
migrate() {
    :;
}
# }} restic migrate

# {{ restic mount
# @cmd Mount the repository
# @flag --allow-other                     allow other users to access the data in the mounted directory
# @flag -h --help                         help for mount
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @flag --no-default-permissions          for 'allow-other', ignore Unix permissions and allow users to read all snapshot files
# @flag --owner-root                      use 'root' as the owner of files and dirs
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --path-template <template>      set template for path names (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --time-template <template>      set template to use for times (default "2006-01-02T15:04:05Z07:00")
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
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
# @flag --repack-small                    repack pack files below 80% of target pack size
# @flag --repack-uncompressed             repack all uncompressed data
# @option --unsafe-recover-no-free-space <string>  UNSAFE, READ THE DOCUMENTATION BEFORE USING! Try to recover a repository stuck with no free space.
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
prune() {
    :;
}
# }} restic prune

# {{ restic recover
# @cmd Recover data from the repository not referenced by snapshots
# @flag -h --help                         help for recover
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
recover() {
    :;
}
# }} restic recover

# {{ restic repair
# @cmd Repair the repository
# @flag -h --help                         help for repair
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
repair() {
    :;
}

# {{{ restic repair index
# @cmd Build a new index
# @flag -h --help                         help for index
# @flag --read-all-packs                  read all pack files to generate new index from scratch
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
repair::index() {
    :;
}
# }}} restic repair index

# {{{ restic repair packs
# @cmd Salvage damaged pack files
# @flag -h --help                         help for packs
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg packids*
repair::packs() {
    :;
}
# }}} restic repair packs

# {{{ restic repair snapshots
# @cmd Repair snapshots
# @flag -n --dry-run                      do not do anything, just print what would be done
# @flag --forget                          remove original snapshots after creating new ones
# @flag -h --help                         help for snapshots
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshot-id <snapshot ID>
repair::snapshots() {
    :;
}
# }}} restic repair snapshots
# }} restic repair

# {{ restic restore
# @cmd Extract the data from a snapshot
# @option -e --exclude <pattern>          exclude a pattern (can be specified multiple times)
# @flag -h --help                         help for restore
# @option -H --host <host>                only consider snapshots for this host, when snapshot ID "latest" is given (can be specified multiple times)
# @option --iexclude <pattern>            same as --exclude but ignores the casing of pattern
# @option --iinclude <pattern>            same as --include but ignores the casing of pattern
# @option -i --include <pattern>          include a pattern, exclude everything else (can be specified multiple times)
# @option --path <path>                   only consider snapshots including this (absolute) path, when snapshot ID "latest" is given (can be specified multiple times)
# @flag --sparse                          restore files as sparse
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...], when snapshot ID "latest" is given (can be specified multiple times) (default [])
# @option -t --target <string>            directory to extract data to
# @flag --verify                          verify restored files content
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid
restore() {
    :;
}
# }} restic restore

# {{ restic rewrite
# @cmd Rewrite snapshots to exclude unwanted files
# @flag -n --dry-run                      do not do anything, just print what would be done
# @option -e --exclude <pattern>          exclude a pattern (can be specified multiple times)
# @option --exclude-file <file>           read exclude patterns from a file (can be specified multiple times)
# @flag --forget                          remove original snapshots after creating new ones
# @flag -h --help                         help for rewrite
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --iexclude <pattern>            same as --exclude pattern but ignores the casing of filenames
# @option --iexclude-file <file>          same as --exclude-file but ignores casing of filenames in patterns
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid*
rewrite() {
    :;
}
# }} restic rewrite

# {{ restic self-update
# @cmd Update the restic binary
# @flag -h --help                         help for self-update
# @option --output <filename>             Save the downloaded file as filename (default: running binary itself)
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
self-update() {
    :;
}
# }} restic self-update

# {{ restic snapshots
# @cmd List all snapshots
# @flag -c --compact                      use compact output format
# @option -g --group-by <group>           group snapshots by host, paths and/or tags, separated by comma
# @flag -h --help                         help for snapshots
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --latest <n>                    only show the last n snapshots for each host and path
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid*
snapshots() {
    :;
}
# }} restic snapshots

# {{ restic stats
# @cmd Scan the repository and show basic statistics
# @flag -h --help                         help for stats
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --mode <string>                 counting mode: restore-size (default), files-by-contents, blobs-per-file or raw-data (default "restore-size")
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshot-id <snapshot ID>
stats() {
    :;
}
# }} restic stats

# {{ restic tag
# @cmd Modify tags on snapshots
# @option --add <tags>                    tags which will be added to the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @flag -h --help                         help for tag
# @option -H --host <host>                only consider snapshots for this host (can be specified multiple times)
# @option --path <path>                   only consider snapshots including this (absolute) path (can be specified multiple times)
# @option --remove <tags>                 tags which will be removed from the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @option --set <tags>                    tags which will replace the existing tags in the format `tag[,tag,...]` (can be given multiple times) (default [])
# @option --tag <tag[,tag,...]>           only consider snapshots including tag[,tag,...] (can be specified multiple times) (default [])
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
# @arg snapshotid*
tag() {
    :;
}
# }} restic tag

# {{ restic unlock
# @cmd Remove locks other processes created
# @flag -h --help                         help for unlock
# @flag --remove-all                      remove all locks, even non-stale ones
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
unlock() {
    :;
}
# }} restic unlock

# {{ restic version
# @cmd Print version information
# @flag -h --help                         help for version
# @option --cacert <file>                 file to load root certificates from (default: use system certificates or $RESTIC_CACERT)
# @option --cache-dir <directory>         set the cache directory.
# @flag --cleanup-cache                   auto remove old cache directories
# @option --compression <mode>            compression mode (only available for repository format version 2), one of (auto|off|max) (default: $RESTIC_COMPRESSION) (default auto)
# @flag --insecure-tls                    skip TLS certificate verification when connecting to the repository (insecure)
# @flag --json                            set output mode to JSON for commands that support it
# @option --key-hint <key>                key ID of key to try decrypting first (default: $RESTIC_KEY_HINT)
# @option --limit-download <rate>         limits downloads to a maximum rate in KiB/s.
# @option --limit-upload <rate>           limits uploads to a maximum rate in KiB/s.
# @flag --no-cache                        do not use a local cache
# @flag --no-lock                         do not lock the repository, this allows some operations on read-only repositories
# @option -o --option <key=value>         set extended option (key=value, can be specified multiple times)
# @option --pack-size <size>              set target pack size in MiB, created pack files may be larger (default: $RESTIC_PACK_SIZE)
# @option --password-command <command>    shell command to obtain the repository password from (default: $RESTIC_PASSWORD_COMMAND)
# @option -p --password-file <file>       file to read the repository password from (default: $RESTIC_PASSWORD_FILE)
# @flag -q --quiet                        do not output comprehensive progress report
# @option -r --repo[`_choice_repo`] <repository>  repository to backup to or restore from (default: $RESTIC_REPOSITORY)
# @option --repository-file <file>        file to read the repository location from (default: $RESTIC_REPOSITORY_FILE)
# @option --retry-lock <duration>         retry to lock the repository if it is already locked, takes a value like 5m or 2h (default: no retries)
# @option --tls-client-cert <file>        path to a file containing PEM encoded TLS client certificate and private key (default: $RESTIC_TLS_CLIENT_CERT)
# @flag -v --verbose                      be verbose (specify multiple times or a level using --verbose=n, max level/times is 2)
version() {
    :;
}
# }} restic version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_repo() {
    if _argc_util_has_path_prefix; then
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