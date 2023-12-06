#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A --after-context <NUM>                 Output NUM lines of trailing context after matching lines.
# @flag -a --text                                  Process a binary file as if it were text.
# @flag --and                                      Specify additional patterns to match.
# @flag --andnot                                   Combines --and --not.
# @option -B --before-context <NUM>                Output NUM lines of leading context before matching lines.
# @flag -b --byte-offset                           The offset in bytes of a matched line is displayed in front of the respective matched line.
# @option --binary-files <TYPE>                    Controls searching and reporting pattern matches in binary files.
# @flag -% --bool                                  Specifies Boolean query patterns.
# @flag --break                                    Adds a line break between results from different files.
# @option -C --context <NUM>                       Output NUM lines of leading and trailing context surrounding each matching line.
# @flag -c --count                                 Only a count of selected lines is written to standard output.
# @option --color[`_choice_color`] <WHEN>          Mark up the matching text with the expression stored in the GREP_COLOR or GREP_COLORS environment variable.
# @option --colour[`_choice_color`] <WHEN>         Mark up the matching text with the expression stored in the GREP_COLOR or GREP_COLORS environment variable.
# @option --colors <COLORS>                        Use COLORS to mark up text.
# @option --colours <COLORS>                       Use COLORS to mark up text.
# @option --config <FILE>                          Use configuration FILE.
# @option --- <FILE>                               Use configuration FILE.
# @flag --confirm                                  Confirm actions in -Q query TUI.
# @flag --cpp                                      Output file matches in C++.
# @flag --csv                                      Output file matches in CSV.
# @option -D --devices <ACTION>                    If an input file is a device, FIFO or socket, use ACTION to process it.
# @option -d --directories <ACTION>                If an input file is a directory, use ACTION to process it.
# @option --delay                                  Set the default -Q key response delay.
# @option --depth <[MIN,][MAX]>                    Restrict recursive searches from MIN to MAX directory levels deep, where -1 (--depth=1) searches the specified path without recursing into subdirectories.
# @flag --dotall                                   Dot `.' in regular expressions matches anything, including newline.
# @flag -E --extended-regexp                       Interpret patterns as extended regular expressions (EREs).
# @option -e --regexp <PATTERN>                    Specify a PATTERN used during the search of the input: an input line is selected if it matches any of the specified patterns.
# @option --encoding[`_choice_encoding`]           The encoding format of the input.
# @option --exclude <GLOB>                         Skip files whose name matches GLOB using wildcard matching, same as -g ^GLOB.
# @option --exclude-dir <GLOB>                     Exclude directories whose name matches GLOB from recursive searches, same as -g ^GLOB/.
# @option --exclude-from <FILE>                    Read the globs from FILE and skip files and directories whose name matches one or more globs.
# @option --exclude-fs <MOUNTS>                    Exclude file systems specified by MOUNTS from recursive searches, MOUNTS is a comma-separated list of mount points or pathnames of directories on file systems.
# @flag -F --fixed-strings                         Interpret pattern as a set of fixed strings, separated by newlines, any of which is to be matched.
# @option -f --file                                Read newline-separated patterns from FILE.
# @option --filter <COMMANDS>                      Filter files through the specified COMMANDS first before searching.
# @option --filter-magic-label <[+]LABEL:MAGIC>    Associate LABEL with files whose signature "magic bytes" match the MAGIC regex pattern.
# @option --format                                 Output FORMAT-formatted matches.
# @flag --free-space                               Spacing (blanks and tabs) in regular expressions are ignored.
# @flag -G --basic-regexp                          Interpret patterns as basic regular expressions (BREs), i.e.
# @option -g <GLOBS>                               Search only files whose name matches the specified comma-separated list of GLOBS, same as --include='glob' for each `glob' in GLOBS.
# @option --glob <GLOBS>                           Search only files whose name matches the specified comma-separated list of GLOBS, same as --include='glob' for each `glob' in GLOBS.
# @option --iglob <GLOBS>                          Search only files whose name matches the specified comma-separated list of GLOBS, same as --include='glob' for each `glob' in GLOBS.
# @flag --glob-ignore-case                         Perform case-insensitive glob matching in general.
# @option --group-separator <SEP>                  Use SEP as a group separator for context options -A, -B and -C.
# @flag -H --with-filename                         Always print the filename with output lines.
# @flag -h --no-filename                           Never print filenames with output lines.
# @flag -+ --heading                               Group matches per file.
# @option -? --help <WHAT>                         Display a help message on options related to WHAT when specified.
# @option --hexdump <[1-8][a][bch][A[NUM]][B[NUM]][C[NUM]]>  Output matches in 1 to 8 columns of 8 hexadecimal octets.
# @flag -. --hidden                                Search hidden files and directories.
# @option --hyperlink <[PREFIX][+]>                Hyperlinks are enabled for file names when colors are enabled.
# @flag -I --ignore-binary                         Ignore matches in binary files.
# @flag -i --ignore-case                           Perform case insensitive matching.
# @option --ignore-files <FILE>                    Ignore files and directories matching the globs in each FILE that is encountered in recursive searches.
# @option --include <GLOB>                         Search only files whose name matches GLOB using wildcard matching, same as -g GLOB.
# @option --include-dir <GLOB>                     Only directories whose name matches GLOB are included in recursive searches, same as -g GLOB/.
# @option --include-from <FILE>                    Read the globs from FILE and search only files and directories whose name matches one or more globs.
# @option --include-fs <MOUNTS>                    Only file systems specified by MOUNTS are included in recursive searches.
# @flag --index                                    Perform indexing-based search on files indexed with ugrep-indexer.
# @option -J --jobs <NUM>                          Specifies the number of threads spawned to search files.
# @flag -j --smart-case                            Perform case insensitive matching like option -i, unless a pattern is specified with a literal ASCII upper case letter.
# @flag --json                                     Output file matches in JSON.
# @option -K <MAX>                                 Start searching at line MIN, stop at line MAX when specified.
# @option --range <MAX>                            Start searching at line MIN, stop at line MAX when specified.
# @option --min-line <MAX>                         Start searching at line MIN, stop at line MAX when specified.
# @option --max-line <MAX>                         Start searching at line MIN, stop at line MAX when specified.
# @flag -k --column-number                         The column number of a matched pattern is displayed in front of the respective matched line, starting at column 1.
# @flag -L --files-without-match                   Only the names of files not containing selected lines are written to standard output.
# @flag -l --files-with-matches                    Only the names of files containing selected lines are written to standard output.
# @option --label                                  Displays the LABEL value when input is read from standard input where a file name would normally be printed in the output.
# @flag --line-buffered                            Force output to be line buffered instead of block buffered.
# @flag --lines                                    Boolean line matching mode for option --bool, the default mode.
# @option -M --file-magic <MAGIC>                  Only files matching the signature pattern MAGIC are searched.
# @option -m <MAX>                                 Require MIN matches, stop after MAX matches when specified.
# @option --min-count <MAX>                        Require MIN matches, stop after MAX matches when specified.
# @option --max-count <MAX>                        Require MIN matches, stop after MAX matches when specified.
# @flag --match                                    Match all input.
# @option --max-files <NUM>                        Restrict the number of files matched to NUM.
# @option --mmap <MAX>                             Use memory maps to search files.
# @option -N --neg-regexp <PATTERN>                Specify a negative PATTERN used during the search of the input: an input line is selected only if it matches the specified patterns unless it matches the negative PATTERN.
# @flag -n --line-number                           Each output line is preceded by its relative line number in the file, starting at line 1.
# @flag --no-group-separator                       Removes the group separator line from the output for context options -A, -B and -C.
# @option --not <-e> <PATTERN>                     Specifies that PATTERN should not match.
# @option -O --file-extension <EXTENSIONS>         Search only files whose filename extensions match the specified comma-separated list of EXTENSIONS, same as --include='*.ext' for each `ext' in EXTENSIONS.
# @flag -o --only-matching                         Output only the matching part of lines.
# @flag --only-line-number                         The line number of the matching line in the file is output without displaying the match.
# @flag --files                                    Boolean file matching mode, the opposite of --lines.
# @flag -P --perl-regexp                           Interpret PATTERN as a Perl regular expression using PCRE2.
# @flag -p --no-dereference                        If -R or -r is specified, do not follow symbolic links, even when symbolic links are specified on the command line.
# @option --pager <COMMAND>                        When output is sent to the terminal, uses COMMAND to page through the output.
# @option --pretty <WHEN>                          When output is sent to a terminal, enables --color, --heading, -n, --sort, --tree and -T when not explicitly disabled.
# @option -Q --query <DELAY>                       Query mode: start a TUI to perform interactive searches.
# @flag -q                                         Quiet mode: suppress all output.
# @flag --quiet                                    Quiet mode: suppress all output.
# @flag --silent                                   Quiet mode: suppress all output.
# @flag -R --dereference-recursive                 Recursively read all files under each directory.
# @flag -r --recursive                             Recursively read all files under each directory, following symbolic links only if they are on the command line.
# @option --replace <FORMAT>                       Replace matching patterns in the output by the specified FORMAT with `%' fields.
# @flag -S --dereference-files                     When -r is specified, follow symbolic links to files, but not to directories.
# @flag -s --no-messages                           Silent mode: nonexistent and unreadable files are ignored, i.e.
# @option --save-config <FILE> <OPTIONS>           Save configuration FILE to include OPTIONS.
# @option --separator <SEP>                        Use SEP as field separator between file name, line number, column number, byte offset and the matched line.
# @flag --split                                    Split the -Q query TUI screen on startup.
# @option --sort <KEY>                             Displays matching files in the order specified by KEY in recursive searches.
# @flag --stats                                    Output statistics on the number of files and directories searched and the inclusion and exclusion constraints applied.
# @flag -T --initial-tab                           Add a tab space to separate the file name, line number, column number and byte offset with the matched line.
# @option -t --file-type[`_choice_type`] <TYPES>   Search only files associated with TYPES, a comma-separated list of file types.
# @option --tabs <NUM>                             Set the tab size to NUM to expand tabs for option -k.
# @option --tag <TAG[,END]>                        Disables colors to mark up matches with TAG.
# @flag -^ --tree                                  Output directories with matching files in a tree-like format when options -c, -l or -L are used.
# @flag -U                                         Disables Unicode matching for ASCII and binary matching.
# @flag --ascii                                    Disables Unicode matching for ASCII and binary matching.
# @flag --binary                                   Disables Unicode matching for ASCII and binary matching.
# @flag -u --ungroup                               Do not group multiple pattern matches on the same matched line.
# @flag -V --version                               Display version with linked libraries and exit.
# @flag -v --invert-match                          Selected lines are those not matching any of the specified patterns.
# @option --view <COMMAND>                         Use COMMAND to view/edit a file in -Q query TUI by pressing CTRL-Y.
# @flag -W --with-hex                              Output binary matches in hexadecimal, leaving text matches alone.
# @flag -w --word-regexp                           The PATTERN is searched for as a word, such that the matching text is preceded by a non-word character and is followed by a non-word character.
# @option --width <NUM>                            Truncate the output to NUM visible characters per line.
# @flag -X --hex                                   Output matches in hexadecimal.
# @flag -x --line-regexp                           Select only those matches that exactly match the whole line, as if the patterns are surrounded by ^ and $.
# @flag --xml                                      Output file matches in XML.
# @flag -Y --empty                                 Permits empty matches.
# @flag -y                                         Any line is output (passthru).
# @flag --any-line                                 Any line is output (passthru).
# @flag --passthru                                 Any line is output (passthru).
# @option -Z --fuzzy <[best][+-~][MAX]>            Fuzzy mode: report approximate pattern matches within MAX errors.
# @flag -z --decompress                            Search compressed files and archives.
# @option --zmax <NUM>                             When used with option -z (--decompress), searches the contents of compressed files and archives stored within archives by up to NUM expansion levels deep.
# @flag -0 --null                                  Output a zero-byte (NUL) after the file name.
# @arg pattern[`_choice_pattern`]
# @arg file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_color() {
    printf "%s\n" auto never always
}

_choice_encoding() {
    printf "%s\n" \
        binary ASCII UTF-8 UTF-16 \
        UTF-16BE UTF-16LE UTF-32 UTF-32BE \
        UTF-32LE LATIN1 ISO-8859-1 ISO-8859-2 \
        ISO-8859-3 ISO-8859-4 ISO-8859-5 ISO-8859-6 \
        ISO-8859-7 ISO-8859-8 ISO-8859-9 ISO-8859-10 \
        ISO-8859-11 ISO-8859-13 ISO-8859-14 ISO-8859-15 \
        ISO-8859-16 MAC MACROMAN EBCDIC \
        CP437 CP850 CP858 CP1250 \
        CP1251 CP1252 CP1253 CP1254 \
        CP1255 CP1256 CP1257 CP1258 \
        KOI8-R KOI8-U KOI8-RU
}

_choice_type() {
    printf "%s\n" \
        actionscript ada asm asp aspx autoconf automake \
        awk Awk basic batch bison c c++ \
        clojure cpp csharp css csv dart Dart \
        delphi elisp elixir erlang fortran gif Gif \
        go groovy gsp haskell html jade java \
        jpeg Jpeg js json jsp julia kotlin \
        less lex lisp lua m4 make markdown \
        matlab node Node objc objc++ ocaml parrot \
        pascal pdf Pdf perl Perl php Php \
        png Png prolog python Python r rpm \
        Rpm rst rtf Rtf ruby Ruby rust \
        scala scheme shell Shell smalltalk sql svg \
        swift tcl tex text tiff Tiff tt \
        typescript verilog vhdl vim xml Xml yacc \
        yaml
}

_choice_pattern() {
    if [[ -n "$argc_regexp" ]] \
    || [[ -n "$argc_file" ]] \
    ; then
        _argc_util_comp_path
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"