#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --blame-code-style <STYLE>               Style string for the code section of a git blame line.
# @option --blame-format <FMT>                     Format string for git blame commit metadata.
# @option --blame-palette <COLORS>                 Background colors used for git blame lines (space-separated string).
# @option --blame-separator-format <FMT>           Separator between the blame format and the code section of a git blame line.
# @option --blame-separator-style <STYLE>          Style string for the blame-separator-format
# @option --blame-timestamp-format <FMT>           Format of `git blame` timestamp in raw git output received by delta
# @option --blame-timestamp-output-format <FMT>    Format string for git blame timestamp output.
# @flag --color-only                               Do not alter the input structurally in any way.
# @option --config <PATH>                          Load the config file at PATH instead of ~/.gitconfig
# @option --commit-decoration-style <STYLE>        Style string for the commit hash decoration.
# @option --commit-regex <REGEX>                   Regular expression used to identify the commit line when parsing git output
# @option --commit-style <STYLE>                   Style string for the commit hash line.
# @flag --dark                                     Use default colors appropriate for a dark terminal background.
# @option --default-language <LANG>                Default language used for syntax highlighting.
# @flag --diff-highlight                           Emulate diff-highlight.
# @flag --diff-so-fancy                            Emulate diff-so-fancy.
# @option --diff-stat-align-width <N>              Width allocated for file paths in a diff stat section.
# @option --features                               Names of delta features to activate (space-separated).
# @option --file-added-label <STRING>              Text to display before an added file path.
# @option --file-copied-label <STRING>             Text to display before a copied file path
# @option --file-decoration-style <STYLE>          Style string for the file decoration.
# @option --file-modified-label <STRING>           Text to display before a modified file path.
# @option --file-removed-label <STRING>            Text to display before a removed file path.
# @option --file-renamed-label <STRING>            Text to display before a renamed file path.
# @option --file-style <STYLE>                     Style string for the file section.
# @option --file-transformation <SED_CMD>          Sed-style command transforming file paths for display
# @option --grep-context-line-style <STYLE>        Style string for non-matching lines of grep output.
# @option --grep-file-style <STYLE>                Style string for file paths in grep output.
# @option --grep-header-decoration-style <STYLE>   Style string for the header decoration in grep output.
# @option --grep-header-file-style <STYLE>         Style string for the file path part of the header in grep output.
# @option --grep-line-number-style <STYLE>         Style string for line numbers in grep output.
# @option --grep-output-type <OUTPUT_TYPE>         Grep output format.
# @option --grep-match-line-style <STYLE>          Style string for matching lines of grep output.
# @option --grep-match-word-style <STYLE>          Style string for the matching substrings within a matching line of grep output.
# @option --grep-separator-symbol <STRING>         Separator symbol printed after the file path and line number in grep output.
# @option --hunk-header-decoration-style <STYLE>   Style string for the hunk-header decoration.
# @option --hunk-header-file-style <STYLE>         Style string for the file path part of the hunk-header.
# @option --hunk-header-line-number-style <STYLE>  Style string for the line number part of the hunk-header.
# @option --hunk-header-style <STYLE>              Style string for the hunk-header.
# @option --hunk-label <STRING>                    Text to display before a hunk header.
# @flag --hyperlinks                               Render commit hashes, file names, and line numbers as hyperlinks.
# @option --hyperlinks-commit-link-format <FMT>    Format string for commit hyperlinks (requires --hyperlinks).
# @option --hyperlinks-file-link-format <FMT>      Format string for file hyperlinks (requires --hyperlinks).
# @option --inline-hint-style <STYLE>              Style string for short inline hint text.
# @option --inspect-raw-lines[true|false] <true|false>  Kill-switch for --color-moved support.
# @flag --keep-plus-minus-markers                  Prefix added/removed lines with a +/- character, as git does.
# @flag --light                                    Use default colors appropriate for a light terminal background.
# @option --line-buffer-size <N>                   Size of internal line buffer.
# @option --line-fill-method <STRING>              Line-fill method in side-by-side mode.
# @flag -n --line-numbers                          Display line numbers next to the diff.
# @option --line-numbers-left-format <FMT>         Format string for the left column of line numbers.
# @option --line-numbers-left-style <STYLE>        Style string for the left column of line numbers.
# @option --line-numbers-minus-style <STYLE>       Style string for line numbers in the old (minus) version of the file.
# @option --line-numbers-plus-style <STYLE>        Style string for line numbers in the new (plus) version of the file.
# @option --line-numbers-right-format <FMT>        Format string for the right column of line numbers.
# @option --line-numbers-right-style <STYLE>       Style string for the right column of line numbers.
# @option --line-numbers-zero-style <STYLE>        Style string for line numbers in unchanged (zero) lines.
# @flag --list-languages                           List supported languages and associated file extensions
# @flag --list-syntax-themes                       List available syntax-highlighting color themes
# @option --map-styles <STYLES_MAP>                Map styles encountered in raw input to desired output styles.
# @option --max-line-distance <DIST>               Maximum line pair distance parameter in within-line diff algorithm.
# @option --max-line-length <N>                    Truncate lines longer than this.
# @option --merge-conflict-begin-symbol <STRING>   String marking the beginning of a merge conflict region.
# @option --merge-conflict-end-symbol <STRING>     String marking the end of a merge conflict region.
# @option --merge-conflict-ours-diff-header-decoration-style <STYLE>  Style string for the decoration of the header above the 'ours' merge conflict diff.
# @option --merge-conflict-ours-diff-header-style <STYLE>  Style string for the header above the 'ours' branch merge conflict diff.
# @option --merge-conflict-theirs-diff-header-decoration-style <STYLE>  Style string for the decoration of the header above the 'theirs' merge conflict diff.
# @option --merge-conflict-theirs-diff-header-style <STYLE>  Style string for the header above the 'theirs' branch merge conflict diff.
# @option --minus-empty-line-marker-style <STYLE>  Style string for removed empty line marker.
# @option --minus-emph-style <STYLE>               Style string for emphasized sections of removed lines.
# @option --minus-non-emph-style <STYLE>           Style string for non-emphasized sections of removed lines that have an emphasized section.
# @option --minus-style <STYLE>                    Style string for removed lines.
# @flag --navigate                                 Activate diff navigation.
# @option --navigate-regex <REGEX>                 Regular expression defining navigation stop points
# @flag --no-gitconfig                             Do not read any settings from git config.
# @option --pager[`_module_os_command`] <CMD>      Which pager to use.
# @option --paging[auto|always|never]              Whether to use a pager when displaying output.
# @flag --parse-ansi                               Display ANSI color escape sequences in human-readable form.
# @option --plus-emph-style <STYLE>                Style string for emphasized sections of added lines.
# @option --plus-empty-line-marker-style <STYLE>   Style string for added empty line marker.
# @option --plus-non-emph-style <STYLE>            Style string for non-emphasized sections of added lines that have an emphasized section.
# @option --plus-style <STYLE>                     Style string for added lines.
# @flag --raw                                      Do not alter the input in any way.
# @flag --relative-paths                           Output all file paths relative to the current directory.
# @option --right-arrow <STRING>                   Text to display with a changed file path.
# @flag --show-colors                              Show available named colors.
# @flag --show-config                              Display the active values for all Delta options.
# @flag --show-syntax-themes                       Show example diff for available syntax-highlighting themes.
# @flag --show-themes                              Show example diff for available delta themes.
# @flag -s --side-by-side                          Display diffs in side-by-side layout
# @option --syntax-theme[`_choice_theme`] <SYNTAX_THEME>  The syntax-highlighting theme to use.
# @option --tabs <N>                               The number of spaces to replace tab characters with.
# @option --true-color[auto|always|never]          Whether to emit 24-bit ("true color") RGB color codes.
# @option --whitespace-error-style <STYLE>         Style string for whitespace errors.
# @option -w --width <N>                           The width of underline/overline decorations.
# @option --word-diff-regex <REGEX>                Regular expression defining a 'word' in within-line diff algorithm.
# @option --wrap-left-symbol <STRING>              End-of-line wrapped content symbol (left-aligned).
# @option --wrap-max-lines <N>                     How often a line should be wrapped if it does not fit.
# @option --wrap-right-percent <PERCENT>           Threshold for right-aligning wrapped content.
# @option --wrap-right-prefix-symbol <STRING>      Pre-wrapped content symbol (right-aligned).
# @option --wrap-right-symbol <STRING>             End-of-line wrapped content symbol (right-aligned).
# @option --zero-style <STYLE>                     Style string for unchanged lines.
# @option --24-bit-color[auto|always|never]        Deprecated: use --true-color
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag -V --version                               Print version
# @arg minus_file                                  First file to be compared when delta is being used in diff mode
# @arg plus_file                                   Second file to be compared when delta is being used in diff mode

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_theme() {
    delta --list-syntax-themes | sed  's/^\w\+\s\+//'
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