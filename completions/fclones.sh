#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet      Suppress progress reporting
# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ fclones group
# @cmd Produce a list of groups of identical files
# @option -o --output <PATH>                      Write the report to a file instead of the standard output
# @option -f --format[default|fdupes|csv|json]    Set output file format
# @flag --stdin                                   Read the list of input paths from the standard input instead of the arguments.
# @option -d --depth <NUMBER>                     Limit the recursion depth.
# @flag -. --hidden                               Include hidden files
# @flag -A --no-ignore                            Do not ignore files matching patterns listed in `.gitignore` and `.fdignore`
# @flag -L --follow-links                         Follow symbolic links.
# @flag -H --match-links                          Treat files reachable from multiple paths through links as duplicates.
# @flag -S --symbolic-links                       Don't ignore symbolic links to files.
# @flag -I --isolate                              Don't count matching files found within the same directory argument as duplicates
# @flag -1 --one-fs                               Don't match files on different filesystems or devices
# @option --transform <COMMAND>                   Transform each file by the specified program before matching.
# @flag --in-place                                Read the transform output from the same path as the transform input file.
# @flag --no-copy                                 Don't copy the file to a temporary location before transforming, when `$IN` parameter is specified in the `--transform` command.
# @option -n --rf-over <COUNT>                    Search for over-replicated files with replication factor above the specified value.
# @option --rf-under <COUNT>                      Search for under-replicated files with replication factor below the specified value.
# @flag --unique                                  Instead of searching for duplicates, search for unique files
# @option -s --min <BYTES>                        Minimum file size in bytes (inclusive).
# @option --max <BYTES>                           Maximum file size in bytes (inclusive).
# @option --max-prefix-size <BYTES>               Maximum prefix size to check in bytes
# @option --max-suffix-size <BYTES>               Maximum suffix size to check in bytes
# @option --name <PATTERN>                        Include only file names matched fully by any of the given patterns
# @option --path <PATTERN>                        Include only paths matched fully by any of the given patterns
# @option --exclude <PATTERN>                     Ignore paths matched fully by any of the given patterns
# @flag -i --ignore-case                          Make pattern matching case-insensitive
# @flag -x --regex                                Expect patterns as Perl compatible regular expressions instead of Unix globs
# @option --hash-fn <NAME>                        A hash function to use for computing file digests
# @flag --skip-content-hash                       Skip the full contents hash step entirely.
# @flag --cache                                   Enable caching of file hashes.
# @option -t --threads <SPEC>                     Set the sizes of thread-pools
# @option --base-dir <PATH>                       Base directory to use when resolving relative input paths
# @flag -h --help                                 Print help (see a summary with '-h')
# @arg paths*                                     A list of input paths.
group() {
    :;
}
# }} fclones group

# {{ fclones link
# @cmd Replace redundant files with links
# @flag --dry-run                             Don't perform any changes on the file-system, but writes a log of file operations to the standard output
# @option -o --output <path>                  Write the `dry_run` report to a file instead of the standard output
# @option -m --modified-before <timestamp>    Deduplicate only the files that were modified before the given time.
# @option -n --rf-over <COUNT>                Keep at least n replicas untouched.
# @option --name <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the name matching any given patterns
# @option --path <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the path matching any given patterns
# @option --priority                          Set the priority for files to be removed or replaced by links
# @option --keep-name <PATTERN>               Keep files with names matching any given patterns untouched
# @option --keep-path <PATTERN>               Keep files with paths matching any given patterns untouched
# @option --isolate <PATH>                    Specify a list of path prefixes.
# @flag -H --match-links                      Treat files reachable from multiple paths through links as duplicates
# @flag --no-lock                             Don't lock files before performing an action on them
# @flag --no-check-size                       Allow the size of a file to be different than the size recorded during grouping.
# @flag -s --soft                             Create soft (symbolic) links
# @flag -h --help                             Print help (see a summary with '-h')
link() {
    :;
}
# }} fclones link

# {{ fclones dedupe
# @cmd Deduplicate file data using native filesystem deduplication capabilities
# @flag --dry-run                             Don't perform any changes on the file-system, but writes a log of file operations to the standard output
# @option -o --output <path>                  Write the `dry_run` report to a file instead of the standard output
# @option -m --modified-before <timestamp>    Deduplicate only the files that were modified before the given time.
# @option -n --rf-over <COUNT>                Keep at least n replicas untouched.
# @option --name <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the name matching any given patterns
# @option --path <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the path matching any given patterns
# @option --priority                          Set the priority for files to be removed or replaced by links
# @option --keep-name <PATTERN>               Keep files with names matching any given patterns untouched
# @option --keep-path <PATTERN>               Keep files with paths matching any given patterns untouched
# @option --isolate <PATH>                    Specify a list of path prefixes.
# @flag -H --match-links                      Treat files reachable from multiple paths through links as duplicates
# @flag --no-lock                             Don't lock files before performing an action on them
# @flag --no-check-size                       Allow the size of a file to be different than the size recorded during grouping.
# @flag -h --help                             Print help (see a summary with '-h')
dedupe() {
    :;
}
# }} fclones dedupe

# {{ fclones remove
# @cmd Remove redundant files
# @flag --dry-run                             Don't perform any changes on the file-system, but writes a log of file operations to the standard output
# @option -o --output <path>                  Write the `dry_run` report to a file instead of the standard output
# @option -m --modified-before <timestamp>    Deduplicate only the files that were modified before the given time.
# @option -n --rf-over <COUNT>                Keep at least n replicas untouched.
# @option --name <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the name matching any given patterns
# @option --path <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the path matching any given patterns
# @option --priority                          Set the priority for files to be removed or replaced by links
# @option --keep-name <PATTERN>               Keep files with names matching any given patterns untouched
# @option --keep-path <PATTERN>               Keep files with paths matching any given patterns untouched
# @option --isolate <PATH>                    Specify a list of path prefixes.
# @flag -H --match-links                      Treat files reachable from multiple paths through links as duplicates
# @flag --no-lock                             Don't lock files before performing an action on them
# @flag --no-check-size                       Allow the size of a file to be different than the size recorded during grouping.
# @flag -h --help                             Print help (see a summary with '-h')
remove() {
    :;
}
# }} fclones remove

# {{ fclones move
# @cmd Move redundant files to the given directory
# @flag --dry-run                             Don't perform any changes on the file-system, but writes a log of file operations to the standard output
# @option -o --output <path>                  Write the `dry_run` report to a file instead of the standard output
# @option -m --modified-before <timestamp>    Deduplicate only the files that were modified before the given time.
# @option -n --rf-over <COUNT>                Keep at least n replicas untouched.
# @option --name <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the name matching any given patterns
# @option --path <PATTERN>                    Restrict the set of files that can be removed or replaced by links to files with the path matching any given patterns
# @option --priority                          Set the priority for files to be removed or replaced by links
# @option --keep-name <PATTERN>               Keep files with names matching any given patterns untouched
# @option --keep-path <PATTERN>               Keep files with paths matching any given patterns untouched
# @option --isolate <PATH>                    Specify a list of path prefixes.
# @flag -H --match-links                      Treat files reachable from multiple paths through links as duplicates
# @flag --no-lock                             Don't lock files before performing an action on them
# @flag --no-check-size                       Allow the size of a file to be different than the size recorded during grouping.
# @flag -h --help                             Print help (see a summary with '-h')
# @arg target!                                Target directory where the redundant files should be moved to
move() {
    :;
}
# }} fclones move

command eval "$(argc --argc-eval "$0" "$@")"