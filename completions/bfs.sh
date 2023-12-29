#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -H                                       Follow symbolic links on the command line, but not while searching.
# @flag -L                                       Follow all symbolic links.
# @flag -P                                       Never follow symbolic links (the default).
# @flag -E                                       Use extended regular expressions (same as -regextype posix-extended).
# @flag -X                                       Filter out files with non-xargs(1)-safe names.
# @flag -d                                       Search in post-order (same as -depth).
# @flag -s                                       Visit directory entries in sorted order.
# @flag -x                                       Don't descend into other mount points (same as -xdev).
# @option -f <PATH>                              Treat PATH as a path to search (useful if it begins with a dash).
# @option -D <FLAG>                              Turn on a debugging flag (see -D help).
# @option -O- <N>                                Enable optimization level N (default: 3).
# @option -S[bfs|dfs|ids|eds]                    Choose the search strategy.
# @flag -jN                                      Search with N threads in parallel (default: number of CPUs, up to 8).
# @option -not <expression>                      The "not" operator: returns the negation of the truth value of the expression.
# @option -exclude <expression>                  Exclude all paths matching the expression from the search.
# @flag -help                                    Print usage information, and exit immediately (without parsing the rest of the command line or processing any files).
# @flag --help                                   Print usage information, and exit immediately (without parsing the rest of the command line or processing any files).
# @flag -version                                 Print version information, and exit immediately.
# @flag --version                                Print version information, and exit immediately.
# @flag -color                                   Turn colors on or off (default: -color if outputting to a terminal, -nocolor otherwise).
# @flag -nocolor                                 Turn colors on or off (default: -color if outputting to a terminal, -nocolor otherwise).
# @flag -daystart                                Measure time relative to the start of today.
# @flag -follow                                  Follow all symbolic links (same as -L).
# @option -files0-from <FILE>                    Treat the NUL ('\0')-separated paths in FILE as starting points for the search.
# @flag -ignore_readdir_race                     Whether to report an error if bfs detects that the file tree is modified during the search (default: -noignore_readdir_race).
# @flag -noignore_readdir_race                   Whether to report an error if bfs detects that the file tree is modified during the search (default: -noignore_readdir_race).
# @option -maxdepth <N>                          Ignore files deeper/shallower than N.
# @option -mindepth <N>                          Ignore files deeper/shallower than N.
# @flag -mount                                   Don't descend into other mount points (same as -xdev for now, but will skip mount points entirely in the future).
# @flag -nohidden                                Exclude hidden files and directories.
# @flag -noleaf                                  Ignored; for compatibility with GNU find.
# @option -regextype[`_choice_regextype`] <TYPE>  Use TYPE-flavored regular expressions.
# @flag -status                                  Display a status bar while searching.
# @flag -unique                                  Skip any files that have already been seen.
# @flag -warn                                    Turn on or off warnings about the command line.
# @flag -nowarn                                  Turn on or off warnings about the command line.
# @flag -xdev                                    Don't descend into other mount points.
# @flag -acl                                     Find files with a non-trivial Access Control List (acl(5)).
# @option -amin <[-+]N>                          Find files accessed/Birthed/changed/modified N minutes ago.
# @option -Bmin <[-+]N>                          Find files accessed/Birthed/changed/modified N minutes ago.
# @option -cmin <[-+]N>                          Find files accessed/Birthed/changed/modified N minutes ago.
# @option -mmin <[-+]N>                          Find files accessed/Birthed/changed/modified N minutes ago.
# @option -anewer <FILE>                         Find files accessed/Birthed/changed/modified more recently than FILE was modified.
# @option -Bnewer <FILE>                         Find files accessed/Birthed/changed/modified more recently than FILE was modified.
# @option -cnewer <FILE>                         Find files accessed/Birthed/changed/modified more recently than FILE was modified.
# @option -mnewer <FILE>                         Find files accessed/Birthed/changed/modified more recently than FILE was modified.
# @option -asince <TIME>                         Find files accessed/Birthed/changed/modified more recently than the ISO 8601-style timestamp TIME.
# @option -Bsince <TIME>                         Find files accessed/Birthed/changed/modified more recently than the ISO 8601-style timestamp TIME.
# @option -csince <TIME>                         Find files accessed/Birthed/changed/modified more recently than the ISO 8601-style timestamp TIME.
# @option -msince <TIME>                         Find files accessed/Birthed/changed/modified more recently than the ISO 8601-style timestamp TIME.
# @option -atime <[-+]N>                         Find files accessed/Birthed/changed/modified N days ago.
# @option -Btime <[-+]N>                         Find files accessed/Birthed/changed/modified N days ago.
# @option -ctime <[-+]N>                         Find files accessed/Birthed/changed/modified N days ago.
# @option -mtime <[-+]N>                         Find files accessed/Birthed/changed/modified N days ago.
# @flag -capable                                 Find files with POSIX.1e capabilities(7) set.
# @option -depth <[-+]N>                         Find files with depth N.
# @flag -empty                                   Find empty files/directories.
# @flag -executable                              Find files the current user can execute/read/write.
# @flag -readable                                Find files the current user can execute/read/write.
# @flag -writable                                Find files the current user can execute/read/write.
# @flag -false                                   Always false/true.
# @flag -true                                    Always false/true.
# @option -fstype <TYPE>                         Find files on file systems with the given TYPE.
# @option -gid <[-+]N>                           Find files owned by group/user ID N.
# @option -uid <[-+]N>                           Find files owned by group/user ID N.
# @option -group <NAME>                          Find files owned by the group/user NAME.
# @option -user <NAME>                           Find files owned by the group/user NAME.
# @flag -hidden                                  Find hidden files (those beginning with .).
# @option -ilname <GLOB>                         Case-insensitive versions of -lname/-name/-path/-regex/-wholename.
# @option -iname <GLOB>                          Case-insensitive versions of -lname/-name/-path/-regex/-wholename.
# @option -ipath <GLOB>                          Case-insensitive versions of -lname/-name/-path/-regex/-wholename.
# @option -iregex <GLOB>                         Case-insensitive versions of -lname/-name/-path/-regex/-wholename.
# @option -iwholename <GLOB>                     Case-insensitive versions of -lname/-name/-path/-regex/-wholename.
# @option -inum <[-+]N>                          Find files with inode number N.
# @option -links <[-+]N>                         Find files with N hard links.
# @option -lname <GLOB>                          Find symbolic links whose target matches the GLOB.
# @option -name <GLOB>                           Find files whose name matches the GLOB.
# @option -newer <FILE>                          Find files newer than FILE.
# @option -newerXY <REFERENCE>                   Find files whose X time is newer than the Y time of REFERENCE.
# @flag -nogroup                                 Find files owned by nonexistent groups/users.
# @flag -nouser                                  Find files owned by nonexistent groups/users.
# @option -path <GLOB>                           Find files whose entire path matches the GLOB.
# @option -wholename <GLOB>                      Find files whose entire path matches the GLOB.
# @option -perm <[-]MODE>                        Find files with a matching mode.
# @option -regex                                 Find files whose entire path matches the regular expression REGEX.
# @option -samefile <FILE>                       Find hard links to FILE.
# @option -since <TIME>                          Find files modified since the ISO 8601-style timestamp TIME.
# @option -size <[-+]N[cwbkMGTP]>                Find files with the given size.
# @flag -sparse                                  Find files that occupy fewer disk blocks than expected.
# @option -type*,[`_choice_type`] <bcdlpfswD>    Find files of the given type.
# @option -used <[-+]N>                          Find files last accessed N days after they were changed.
# @flag -xattr                                   Find files with extended attributes (xattr(7)).
# @option -xattrname <NAME>                      Find files with the extended attribute NAME.
# @option -xtype <bcdlpfswD>                     Find files of the given type, following links when -type would not, and vice versa.
# @flag -delete                                  Delete any found files (implies -depth).
# @flag -rm                                      Delete any found files (implies -depth).
# @option -exec~[`_module_os_exec`]              command ... {} ; Execute a command.
# @option -ok~[`_module_os_exec`]                command ... {} ; Prompt the user whether to execute a command.
# @option -execdir~[`_module_os_exec`]           command ... {} ;, -execdir command ... {} +, -okdir command ... {} ; Like -exec/-ok, but run the command in the same directory as the found file(s).
# @option -exit <STATUS>                         Exit immediately with the given status (0 if unspecified).
# @option -fls <FILE> <FORMAT>                   Like -ls/-print/-print0/-printf, but write to FILE instead of standard output.
# @option -fprint <FILE> <FORMAT>                Like -ls/-print/-print0/-printf, but write to FILE instead of standard output.
# @option -fprint0 <FILE> <FORMAT>               Like -ls/-print/-print0/-printf, but write to FILE instead of standard output.
# @option -fprintf <FILE> <FORMAT>               Like -ls/-print/-print0/-printf, but write to FILE instead of standard output.
# @flag -ls                                      List files like ls -dils.
# @flag -print                                   Print the path to the found file.
# @flag -print0                                  Like -print, but use the null character ('\0') as a separator rather than newlines.
# @option -printf <FORMAT>                       Print according to a format string (see find(1)).
# @flag -printx                                  Like -print, but escape whitespace and quotation characters, to make the output safe for xargs(1).
# @flag -prune                                   Don't descend into this directory.
# @flag -quit                                    Quit immediately.
# @arg paths*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_regextype() {
    cat <<-'EOF'
posix-basic	POSIX basic regular expressions (the default).
posix-extended	POSIX extended resular expressions.
ed	Like ed(1) (same as posix-basic).
emacs	Like emacs(1).
grep	Like grep(1).
sed	Like sed(1) (same as posix-basic).
EOF
}

_choice_type() {
    cat <<-'EOF'
b	block device
c	character device
d	directory
l	link (symbolic)
p	pipe
f	file (regular)
s	socket
w	whiteout
D	Door
EOF
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

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"