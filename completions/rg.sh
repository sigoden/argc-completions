#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e --regexp <PATTERN>                    A pattern to search for.
# @option -f --file <PATTERNFILE>                  Search for patterns from the given file, with one pattern per line.
# @option --pre[`_module_os_command`] <COMMAND>    For each input PATH, this flag causes ripgrep to search the standard output of COMMAND PATH instead of the contents of PATH.
# @option --pre-glob <GLOB>                        This flag works in conjunction with the --pre flag.
# @flag -z --search-zip                            This flag instructs ripgrep to search in compressed files.
# @flag -s --case-sensitive                        Execute the search case sensitively.
# @flag --crlf                                     When enabled, ripgrep will treat CRLF (\r\n) as a line terminator instead of just \n.
# @option --dfa-size-limit <NUM+SUFFIX?>           The upper size limit of the regex DFA.
# @option -E --encoding                            Specify the text encoding that ripgrep will use on all files searched.
# @option --engine[default|pcre2|auto]             Specify which regular expression engine to use.
# @flag -F --fixed-strings                         Treat all patterns as literals instead of as regular expressions.
# @flag -i --ignore-case                           When this flag is provided, all patterns will be searched case insensitively.
# @flag -v --invert-match                          This flag inverts matching.
# @flag -x --line-regexp                           When enabled, ripgrep will only show matches surrounded by line boundaries.
# @option -m --max-count <NUM>                     Limit the number of matching lines per file searched to NUM.
# @flag --mmap                                     When enabled, ripgrep will search using memory maps when possible.
# @flag -U --multiline                             This flag enable searching across multiple lines.
# @flag --multiline-dotall                         This flag enables "dot all" mode in all regex patterns.
# @flag --no-unicode                               This flag disables Unicode mode for all patterns given to ripgrep.
# @flag --null-data                                Enabling this flag causes ripgrep to use NUL as a line terminator instead of the default of \n.
# @flag -P --pcre2                                 When this flag is present, ripgrep will use the PCRE2 regex engine instead of its default regex engine.
# @option --regex-size-limit <NUM+SUFFIX?>         The size limit of the compiled regex, where the compiled regex generally corresponds to a single object in memory that can match all of the patterns provided to ripgrep.
# @flag -S --smart-case                            This flag instructs ripgrep to searches case insensitively if the pattern is all lowercase.
# @flag --stop-on-nonmatch                         Enabling this option will cause ripgrep to stop reading a file once it encounters a non-matching line after it has encountered a matching line.
# @flag -a --text                                  This flag instructs ripgrep to search binary files as if they were text.
# @option -j --threads <NUM>                       This flag sets the approximate number of threads to use.
# @flag -w --word-regexp                           When enabled, ripgrep will only show matches surrounded by word boundaries.
# @flag --auto-hybrid-regex                        DEPRECATED.
# @flag --no-pcre2-unicode                         DEPRECATED.
# @flag --binary                                   Enabling this flag will cause ripgrep to search binary files.
# @flag -L --follow                                This flag instructs ripgrep to follow symbolic links while traversing directories.
# @option -g --glob                                Include or exclude files and directories for searching that match the given glob.
# @flag --glob-case-insensitive                    Process all glob patterns given with the -g/--glob flag case insensitively.
# @flag -. --hidden                                Search hidden files and directories.
# @option --iglob <GLOB>                           Include or exclude files and directories for searching that match the given glob.
# @option --ignore-file <PATH>                     Specifies a path to one or more gitignore formatted rules files.
# @flag --ignore-file-case-insensitive             Process ignore files (.gitignore, .ignore, etc.) case insensitively.
# @option -d --max-depth <NUM>                     This flag limits the depth of directory traversal to NUM levels beyond the paths given.
# @option --max-filesize <NUM+SUFFIX?>             Ignore files larger than NUM in size.
# @flag --no-ignore                                When set, ignore files such as .gitignore, .ignore and .rgignore will not be respected.
# @flag --no-ignore-dot                            Don't respect filter rules from .ignore or .rgignore files.
# @flag --no-ignore-exclude                        Don't respect filter rules from files that are manually configured for the repository.
# @flag --no-ignore-files                          When set, any --ignore-file flags, even ones that come after this flag, are ignored.
# @flag --no-ignore-global                         Don't respect filter rules from ignore files that come from "global" sources such as git's core.excludesFile configuration option (which defaults to $HOME/.config/git/ignore).
# @flag --no-ignore-parent                         When this flag is set, filter rules from ignore files found in parent directories are not respected.
# @flag --no-ignore-vcs                            When given, filter rules from source control ignore files (e.g., .gitignore) are not respected.
# @flag --no-require-git                           When this flag is given, source control ignore files such as .gitignore are respected even if no git repository is present.
# @flag --one-file-system                          When enabled, ripgrep will not cross file system boundaries relative to where the search started from.
# @option -t --type[`_choice_type`]                This flag limits ripgrep to searching files matching TYPE.
# @option -T --type-not[`_choice_type`] <TYPE>     Do not search files matching TYPE.
# @option --type-add[`_choice_type_spec`] <TYPESPEC>  This flag adds a new glob for a particular file type.
# @option --type-clear[`_choice_type`] <TYPE>      Clear the file type globs previously defined for TYPE.
# @flag -u --unrestricted                          This flag reduces the level of "smart" filtering.
# @option -A --after-context <NUM>                 Show NUM lines after each match.
# @option -B --before-context <NUM>                Show NUM lines before each match.
# @flag --block-buffered                           When enabled, ripgrep will use block buffering.
# @flag -b --byte-offset                           Print the 0-based byte offset within the input file before each line of output.
# @option --color[`_choice_color`] <WHEN>          This flag controls when to use colors.
# @option --colors[`_choice_color_spec`] <COLOR_SPEC>  This flag specifies color settings for use in the output.
# @flag --column                                   Show column numbers (1-based).
# @option -C --context <NUM>                       Show NUM lines before and after each match.
# @option --context-separator <SEPARATOR>          The string used to separate non-contiguous context lines in the output.
# @option --field-context-separator <SEPARATOR>    Set the field context separator.
# @option --field-match-separator <SEPARATOR>      Set the field match separator.
# @flag --heading                                  This flag prints the file path above clusters of matches from each file instead of printing the file path as a prefix for each matched line.
# @flag -h --help                                  This flag prints the help output for ripgrep.
# @option --hostname-bin <COMMAND>                 This flag controls how ripgrep determines this system's hostname.
# @option --hyperlink-format <FORMAT>              Set the format of hyperlinks to use when printing results.
# @flag --include-zero                             When used with -c/--count or --count-matches, this causes ripgrep to print the number of matches for each file even if there were zero matches.
# @flag --line-buffered                            When enabled, ripgrep will always use line buffering.
# @flag -n --line-number                           Show line numbers (1-based).
# @flag -N --no-line-number                        Suppress line numbers.
# @option -M --max-columns <NUM>                   When given, ripgrep will omit lines longer than this limit in bytes.
# @flag --max-columns-preview                      Prints a preview for lines exceeding the configured max column limit.
# @flag -0 --null                                  Whenever a file path is printed, follow it with a NUL byte.
# @flag -o --only-matching                         Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.
# @option --path-separator <SEPARATOR>             Set the path separator to use when printing file paths.
# @flag --passthru                                 Print both matching and non-matching lines.
# @flag -p --pretty                                This is a convenience alias for --color=always --heading --line-number.
# @flag -q --quiet                                 Do not print anything to stdout.
# @option -r --replace <REPLACEMENT>               Replaces every match with the text given when printing results.
# @option --sort[`_choice_sort`] <SORTBY>          This flag enables sorting of results in ascending order.
# @option --sortr[`_choice_sort`] <SORTBY>         This flag enables sorting of results in descending order.
# @flag --trim                                     When set, all ASCII whitespace at the beginning of each line printed will be removed.
# @flag --vimgrep                                  This flag instructs ripgrep to print results with every match on its own line, including line numbers and column numbers.
# @flag -H --with-filename                         This flag instructs ripgrep to print the file path for each matching line.
# @flag -I --no-filename                           This flag instructs ripgrep to never print the file path with each matching line.
# @flag --sort-files                               DEPRECATED.
# @flag -c --count                                 This flag suppresses normal output and shows the number of lines that match the given patterns for each file searched.
# @flag --count-matches                            This flag suppresses normal output and shows the number of individual matches of the given patterns for each file searched.
# @flag -l --files-with-matches                    Print only the paths with at least one match and suppress match contents.
# @flag --files-without-match                      Print the paths that contain zero matches and suppress match contents.
# @flag --json                                     Enable printing results in a JSON Lines format.
# @flag --debug                                    Show debug messages.
# @flag --no-ignore-messages                       When this flag is enabled, all error messages related to parsing ignore files are suppressed.
# @flag --no-messages                              This flag suppresses some error messages.
# @flag --stats                                    When enabled, ripgrep will print aggregate statistics about the search.
# @flag --trace                                    Show trace messages.
# @flag --files                                    Print each file that would be searched without actually performing the search.
# @option --generate <KIND>                        This flag instructs ripgrep to generate some special kind of output identified by KIND and then quit without searching.
# @flag --no-config                                When set, ripgrep will never read configuration files.
# @flag --pcre2-version                            When this flag is present, ripgrep will print the version of PCRE2 in use, along with other information, and then exit.
# @flag --type-list                                Show all supported file types and their corresponding globs.
# @flag -V --version                               This flag prints ripgrep's version.
# @arg pattern![`_choice_pattern`]                 A regular expression used for searching.
# @arg path+                                       A file or directory to search.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_type() {
    rg --type-list | sed 's/:.*$//'
}

_choice_type_spec() {
    if [[ "$ARGC_CWORD" != *':'* ]]; then
        _choice_type | _argc_util_transform suffix=: nospace
    elif [[ "$ARGC_CWORD" == *:include:* ]]; then
        if [[ "$ARGC_CWORD" == *,* ]]; then
            _argc_util_mode_parts ,
            _choice_type | _argc_util_transform nospace
        else
            echo "__argc_prefix=${ARGC_CWORD%:*}:"
            echo "__argc_filter=${ARGC_CWORD##*:}"
            _choice_type | _argc_util_transform nospace
        fi
    fi
}

_choice_color() {
    cat <<-'EOF'
never	Colors will never be used.
auto	The default. ripgrep tries to be smart.
always	Colors will always be used regardless of where output is sent.
ansi	Like 'always', but emits ANSI escapes (even in a Windows console).
EOF
}

_choice_color_spec() {
    _argc_util_mode_parts :
    IFS=':' read -a prefix_parts <<<"$argc__parts_prefix"
    case "${#prefix_parts[@]}" in
    0)
        _choice_color_type | _argc_util_transform suffix=: nospace
        ;;
    1)
        _choice_color_attribute | _argc_util_transform suffix=: nospace
        ;;
    2)
        if [[ "${prefix_parts[1]}" =~ bg|fg ]]; then
            _choice_color_value
        elif [[  "${prefix_parts[1]}" == style  ]]; then
            _choice_color_style
        fi
        ;;
    esac
}

_choice_sort() {
    cat <<-'EOF'
none	Do not sort results. Fastest. Can be multi-threaded.
path	Sort by file path. Always single-threaded.
modified	Sort by the last modified time on a file. Always single-threaded.
accessed	Sort by the last accessed time on a file. Always single-threaded.
created	Sort by the creation time on a file. Always single-threaded.
EOF
}

_choice_pattern() {
    if [[ -n "$argc_regexp" ]] \
    || [[ -n "$argc_file" ]] \
    || [[ -n "$argc_files" ]] \
    ; then
        _argc_util_comp_path
    fi
}

_choice_color_attribute() {
    cat <<-'EOF'
none	clear color/style for type
bg	specify background color
fg	specify foreground color
style	specify text style
EOF
}

_choice_color_style() {
    printf "%s\n" bold nobold intense nointense underline nounderline

}

_choice_color_type() {
    cat <<-'EOF'
column	specify coloring for column numbers
line	specify coloring for line numbers
match	specify coloring for match text
path	specify coloring for file names
EOF
}

_choice_color_value() {
    printf "%s\n"  black blue green red cyan magenta yellow white 
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"