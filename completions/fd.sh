#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -H --hidden                                Include hidden directories and files in the search results (default: hidden files and directories are skipped).
# @flag -I --no-ignore                             Show search results from files and directories that would otherwise be ignored by '.gitignore', '.ignore', '.fdignore', or the global ignore file.
# @flag --no-ignore-vcs                            Show search results from files and directories that would otherwise be ignored by '.gitignore' files.
# @flag --no-require-git                           Do not require a git repository to respect gitignores.
# @flag --no-ignore-parent                         Show search results from files and directories that would otherwise be ignored by '.gitignore', '.ignore', or '.fdignore' files in parent directories.
# @flag -u --unrestricted*                         Perform an unrestricted search, including ignored and hidden files.
# @flag -s --case-sensitive                        Perform a case-sensitive search.
# @flag -i --ignore-case                           Perform a case-insensitive search.
# @flag -g --glob                                  Perform a glob-based search instead of a regular expression search.
# @flag --regex                                    Perform a regular-expression based search (default).
# @flag -F --fixed-strings                         Treat the pattern as a literal string instead of a regular expression.
# @option --and <pattern>                          Add additional required search patterns, all of which must be matched.
# @flag -a --absolute-path                         Shows the full path starting from the root as opposed to relative paths.
# @flag -l --list-details                          Use a detailed listing format like 'ls -l'.
# @flag -L --follow                                By default, fd does not descend into symlinked directories.
# @flag -p --full-path                             By default, the search pattern is only matched against the filename (or directory name).
# @flag -0 --print0                                Separate search results by the null character (instead of newlines).
# @option -d --max-depth <depth>                   Limit the directory traversal to a given depth.
# @option --min-depth <depth>                      Only show search results starting at the given depth.
# @option --exact-depth <depth>                    Only show search results at the exact given depth.
# @option -E --exclude <pattern>                   Exclude files/directories that match the given glob pattern.
# @flag --prune                                    Do not traverse into directories that match the search criteria.
# @option -t --type*[`_choice_type`] <filetype>    Filter the search
# @option -e --extension <ext>                     (Additionally) filter search results by their file extension.
# @option -S --size <size>                         Limit results based on the size of files using the format <+-><NUM><UNIT>.
# @option --changed-within <date|dur>              Filter results based on the file modification time.
# @option --changed-before <date|dur>              Filter results based on the file modification time.
# @option -o --owner <user:group>                  Filter files by their user and/or group.
# @option -x --exec* <args>                        Execute a command for each search result in parallel (use --threads=1 for sequential command execution).
# @option -X --exec-batch* <args>                  Execute the given command once, with all search results as arguments.
# @option --batch-size <size>                      Maximum number of arguments to pass to the command given with -X.
# @option --ignore-file <path>                     Add a custom ignore-file in '.gitignore' format.
# @option -c --color <when>                        Declare when to use color for the pattern match output
# @option -j --threads <num>                       Set number of threads to use for searching & executing (default: number of available CPU cores)
# @option --max-results <count>                    Limit the number of search results to 'count' and quit immediately.
# @flag -1                                         Limit the search to a single result and quit immediately.
# @flag -q --quiet                                 When the flag is present, the program does not print anything and will return with an exit code of 0 if there is at least one match.
# @flag --show-errors                              Enable the display of filesystem errors for situations such as insufficient permissions or dead symlinks.
# @option --base-directory <path>                  Change the current working directory of fd to the provided path.
# @option --path-separator <separator>             Set the path separator to use when printing file paths.
# @option --search-path <search-path>              Provide paths to search as an alternative to the positional <path> argument.
# @flag --strip-cwd-prefix                         By default, relative paths are prefixed with './' when -x/--exec, -X/--exec-batch, or -0/--print0 are given, to reduce the risk of a path starting with '-' being treated as a command line option.
# @flag --one-file-system                          By default, fd will traverse the file system tree as far as other options dictate.
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag -V --version                               Print version
# @arg pattern                                     the search pattern which is either a regular expression (default) or a glob pattern (if --glob is used).
# @arg path*                                       The directory where the filesystem search is rooted (optional).

_choice_type() {
    cat <<-'EOF'
file	regular files 
directory	directories 
symlink	symbolic links 
socket	socket 
pipe	named pipe (FIFO) 
executable	executables 
empty	empty files or directories
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"