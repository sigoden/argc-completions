#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A --after-context <NUM>                 Show NUM lines after each match.
# @flag --auto-hybrid-regex                        DEPRECATED.
# @option -B --before-context <NUM>                Show NUM lines before each match.
# @flag --binary                                   Enabling this flag will cause ripgrep to search binary files.
# @flag --block-buffered                           When enabled, ripgrep will use block buffering.
# @flag -b --byte-offset                           Print the 0-based byte offset within the input file before each line of output.
# @flag -s --case-sensitive                        Search case sensitively.
# @option --color <WHEN>                           This flag controls when to use colors.
# @option --colors* <COLOR_SPEC>                   This flag specifies color settings for use in the output.
# @flag --column                                   Show column numbers (1-based).
# @option -C --context <NUM>                       Show NUM lines before and after each match.
# @option --context-separator <SEPARATOR>          The string used to separate non-contiguous context lines in the output.
# @flag -c --count                                 This flag suppresses normal output and shows the number of lines that match the given patterns for each file searched.
# @flag --count-matches                            This flag suppresses normal output and shows the number of individual matches of the given patterns for each file searched.
# @flag --crlf                                     When enabled, ripgrep will treat CRLF ('\r\n') as a line terminator instead of just '\n'.
# @flag --debug                                    Show debug messages.
# @option --dfa-size-limit <NUM+SUFFIX?>           The upper size limit of the regex DFA.
# @option -E --encoding                            Specify the text encoding that ripgrep will use on all files searched.
# @option --engine                                 Specify which regular expression engine to use.
# @option --field-context-separator <SEPARATOR>    Set the field context separator, which is used to delimit file paths, line numbers, columns and the context itself, when printing contextual lines.
# @option --field-match-separator <SEPARATOR>      Set the field match separator, which is used to delimit file paths, line numbers, columns and the match itself.
# @option -f --file* <PATTERNFILE>                 Search for patterns from the given file, with one pattern per line.
# @flag --files                                    Print each file that would be searched without actually performing the search.
# @flag -l --files-with-matches                    Print the paths with at least one match and suppress match contents.
# @flag --files-without-match                      Print the paths that contain zero matches and suppress match contents.
# @flag -F --fixed-strings                         Treat the pattern as a literal string instead of a regular expression.
# @flag -L --follow                                When this flag is enabled, ripgrep will follow symbolic links while traversing directories.
# @option -g --glob*                               Include or exclude files and directories for searching that match the given glob.
# @flag --glob-case-insensitive                    Process glob patterns given with the -g/--glob flag case insensitively.
# @flag -h --help                                  Prints help information. Use --help for more details.
# @flag --heading                                  This flag prints the file path above clusters of matches from each file instead of printing the file path as a prefix for each matched line.
# @flag -. --hidden                                Search hidden files and directories.
# @option --iglob* <GLOB>                          Include or exclude files and directories for searching that match the given glob.
# @flag -i --ignore-case                           When this flag is provided, the given patterns will be searched case insensitively.
# @option --ignore-file* <PATH>                    Specifies a path to one or more .gitignore format rules files.
# @flag --ignore-file-case-insensitive             Process ignore files (.gitignore, .ignore, etc.) case insensitively.
# @flag --include-zero                             When used with --count or --count-matches, print the number of matches for each file even if there were zero matches.
# @flag -v --invert-match                          Invert matching. Show lines that do not match the given patterns.
# @flag --json                                     Enable printing results in a JSON Lines format.
# @flag --line-buffered                            When enabled, ripgrep will use line buffering.
# @flag -n --line-number                           Show line numbers (1-based).
# @flag -x --line-regexp                           Only show matches surrounded by line boundaries.
# @option -M --max-columns <NUM>                   Don't print lines longer than this limit in bytes.
# @flag --max-columns-preview                      When the '--max-columns' flag is used, ripgrep will by default completely replace any line that is too long with a message indicating that a matching line was removed.
# @option -m --max-count <NUM>                     Limit the number of matching lines per file searched to NUM.
# @option --max-depth <NUM>                        Limit the depth of directory traversal to NUM levels beyond the paths given.
# @option --max-filesize <NUM+SUFFIX?>             Ignore files larger than NUM in size.
# @flag --mmap                                     Search using memory maps when possible.
# @flag -U --multiline                             Enable matching across multiple lines.
# @flag --multiline-dotall                         This flag enables "dot all" in your regex pattern, which causes '.' to match newlines when multiline searching is enabled.
# @flag --no-config                                Never read configuration files.
# @flag -I --no-filename                           Never print the file path with the matched lines.
# @flag --no-heading                               Don't group matches by each file.
# @flag --no-ignore                                Don't respect ignore files (.gitignore, .ignore, etc.).
# @flag --no-ignore-dot                            Don't respect .ignore files.
# @flag --no-ignore-exclude                        Don't respect ignore files that are manually configured for the repository such as git's '.git/info/exclude'.
# @flag --no-ignore-files                          When set, any --ignore-file flags, even ones that come after this flag, are ignored.
# @flag --no-ignore-global                         Don't respect ignore files that come from "global" sources such as git's `core.excludesFile` configuration option (which defaults to `$HOME/.config/git/ignore`).
# @flag --no-ignore-messages                       Suppresses all error messages related to parsing ignore files such as .ignore or .gitignore.
# @flag --no-ignore-parent                         Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.
# @flag --no-ignore-vcs                            Don't respect version control ignore files (.gitignore, etc.).
# @flag -N --no-line-number                        Suppress line numbers.
# @flag --no-messages                              Suppress all error messages related to opening and reading files.
# @flag --no-mmap                                  Never use memory maps, even when they might be faster.
# @flag --no-pcre2-unicode                         DEPRECATED.
# @flag --no-require-git                           By default, ripgrep will only respect global gitignore rules, .gitignore rules and local exclude rules if ripgrep detects that you are searching inside a git repository.
# @flag --no-unicode                               By default, ripgrep will enable "Unicode mode" in all of its regexes.
# @flag -0 --null                                  Whenever a file path is printed, follow it with a NUL byte.
# @flag --null-data                                Enabling this option causes ripgrep to use NUL as a line terminator instead of the default of '\n'.
# @flag --one-file-system                          When enabled, ripgrep will not cross file system boundaries relative to where the search started from.
# @flag -o --only-matching                         Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.
# @flag --passthru                                 Print both matching and non-matching lines.
# @option --path-separator <SEPARATOR>             Set the path separator to use when printing file paths.
# @flag -P --pcre2                                 When this flag is present, ripgrep will use the PCRE2 regex engine instead of its default regex engine.
# @flag --pcre2-version                            When this flag is present, ripgrep will print the version of PCRE2 in use, along with other information, and then exit.
# @option --pre <COMMAND>                          For each input FILE, search the standard output of COMMAND FILE rather than the contents of FILE.
# @option --pre-glob* <GLOB>                       This flag works in conjunction with the --pre flag.
# @flag -p --pretty                                This is a convenience alias for '--color always --heading --line-number'.
# @flag -q --quiet                                 Do not print anything to stdout.
# @option --regex-size-limit <NUM+SUFFIX?>         The upper size limit of the compiled regex.
# @option -e --regexp* <PATTERN>                   A pattern to search for.
# @option -r --replace <REPLACEMENT_TEXT>          Replace every match with the text given when printing results.
# @flag -z --search-zip                            Search in compressed files.
# @flag -S --smart-case                            Searches case insensitively if the pattern is all lowercase.
# @option --sort <SORTBY>                          This flag enables sorting of results in ascending order.
# @option --sortr <SORTBY>                         This flag enables sorting of results in descending order.
# @flag --stats                                    Print aggregate statistics about this ripgrep search.
# @flag -a --text                                  Search binary files as if they were text.
# @option -j --threads <NUM>                       The approximate number of threads to use.
# @flag --trim                                     When set, all ASCII whitespace at the beginning of each line printed will be trimmed.
# @option -t --type*                               Only search files matching TYPE.
# @option --type-add* <TYPE_SPEC>                  Add a new glob for a particular file type.
# @option --type-clear* <TYPE>                     Clear the file type globs previously defined for TYPE.
# @flag --type-list                                Show all supported file types and their corresponding globs.
# @option -T --type-not* <TYPE>                    Do not search files matching TYPE.
# @flag -u --unrestricted                          Reduce the level of "smart" searching.
# @flag -V --version                               Prints version information
# @flag --vimgrep                                  Show results with every match on its own line, including line numbers and column numbers.
# @flag -H --with-filename                         Display the file path for matches.
# @flag -w --word-regexp                           Only show matches surrounded by word boundaries.
# @arg PATTERN!                                    A regular expression used for searching.
# @arg PATH+                                       A file or directory to search.

command eval "$(argc --argc-eval "$0" "$@")"