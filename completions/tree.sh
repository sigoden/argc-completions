#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                 All files are listed.
# @flag -d                 List directories only.
# @flag -l                 Follow symbolic links like directories.
# @flag -f                 Print the full path prefix for each file.
# @flag -x                 Stay on current filesystem only.
# @option -L <level>       Descend only level directories deep.
# @flag -R                 Rerun tree when max dir level reached.
# @option -P <pattern>     List only those files that match the pattern given.
# @option -I <pattern>     Do not list files that match the given pattern.
# @flag --gitignore        Filter by using .gitignore files.
# @flag --ignore-case      Ignore case when pattern matching.
# @flag --matchdirs        Include directory names in -P pattern matching.
# @flag --metafirst        Print meta-data at the beginning of each line.
# @flag --info             Print information about files found in .info files.
# @flag --noreport         Turn off file/directory count at end of tree listing.
# @option --charset <X>    Use charset X for terminal/HTML and indentation line output.
# @option --filelimitDo not descend dirs with more than ♯ files in them.
# @option -o <filename>    Output to file instead of stdout.
# @flag -q                 Print non-printable characters as '?'.
# @flag -N                 Print non-printable characters as is.
# @flag -Q                 Quote filenames with double quotes.
# @flag -p                 Print the protections for each file.
# @flag -u                 Displays file owner or UID number.
# @flag -g                 Displays file group owner or GID number.
# @flag -s                 Print the size in bytes of each file.
# @flag -h                 Print the size in a more human readable way.
# @flag --si               Like -h, but use in SI units (powers of 1000).
# @flag -D                 Print the date of last modification or (-c) status change.
# @option --timefmt <f>    Print and format time according to the format <f>.
# @flag -F                 Appends '/', '=', '*', '@', '|' or '>' as per ls -F.
# @flag --inodes           Print inode number of each file.
# @flag --device           Print device ID number to which each file belongs.
# @flag -v                 Sort files alphanumerically by version.
# @flag -t                 Sort files by last modification time.
# @flag -c                 Sort files by last status change time.
# @flag -U                 Leave files unsorted.
# @flag -r                 Reverse the order of the sort.
# @flag --dirsfirst        List directories before files (-U disables).
# @flag --filesfirst       List files before directories (-U disables).
# @option --sort[name|version|size|mtime|ctime] <X>  Select sort: name,version,size,mtime,ctime.
# @flag -i                 Don't print indentation lines.
# @flag -A                 Print ANSI lines graphic indentation lines.
# @flag -S                 Print with CP437 (console) graphics indentation lines.
# @flag -n                 Turn colorization off always (-C overrides).
# @flag -C                 Turn colorization on always.
# @flag -X                 Prints out an XML representation of the tree.
# @flag -J                 Prints out an JSON representation of the tree.
# @option -H <baseHREF>    Prints out HTML format with baseHREF as top directory.
# @option -T <string>      Replace the default HTML title and H1 header with string.
# @flag --nolinks          Turn off hyperlinks in HTML output.
# @flag --fromfile         Reads paths from files (.=stdin)
# @flag --version          Print version and exit.
# @flag --help             Print usage and this help message and exit.
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"