#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A --annotated-source <symspec>       The -A option causes "gprof" to print annotated source code.
# @flag -b --brief                              If the -b option is given, "gprof" doesn't print the verbose blurbs that try to explain the meaning of all of the fields in the tables.
# @option -C --exec-counts <symspec>            The -C option causes "gprof" to print a tally of functions and the number of times each was called.
# @flag -i --file-info                          The -i option causes "gprof" to display summary information about the profile data file(s) and then exit.
# @option -I --directory-path <dirs>            The -I option specifies a list of search directories in which to find source files.
# @option -J --no-annotated-source <symspec>    The -J option causes "gprof" not to print annotated source code.
# @flag -L --print-path                         Normally, source filenames are printed with the path component suppressed.
# @option -p --flat-profile <symspec>           The -p option causes "gprof" to print a flat profile.
# @option -P --no-flat-profile <symspec>        The -P option causes "gprof" to suppress printing a flat profile.
# @option -q --graph <symspec>                  The -q option causes "gprof" to print the call graph analysis.
# @option -Q --no-graph <symspec>               The -Q option causes "gprof" to suppress printing the call graph.
# @option -t --table-length <num>               The -t option causes the num most active source lines in each source file to be listed when source annotation is enabled.
# @flag -y --separate-files                     This option affects annotated source output only.
# @option -Z --no-exec-counts <symspec>         The -Z option causes "gprof" not to print a tally of functions and the number of times each was called.
# @flag -r --function-ordering                  The --function-ordering option causes "gprof" to print a suggested function ordering for the program based on profiling data.
# @option -R --file-ordering <map_file>         The --file-ordering option causes "gprof" to print a suggested .o link line ordering for the program based on profiling data.
# @flag -T --traditional                        The -T option causes "gprof" to print its output in "traditional" BSD style.
# @option -w --width <width>                    Sets width of output lines to width.
# @flag -x --all-lines                          This option affects annotated source output only.
# @option --demangle <style>                    These options control whether C++ symbol names should be demangled when printing output.
# @option --no-demangle <style>                 These options control whether C++ symbol names should be demangled when printing output.
# @flag -a --no-static                          The -a option causes "gprof" to suppress the printing of statically declared (private) functions.
# @flag -c --static-call-graph                  The -c option causes the call graph of the program to be augmented by a heuristic which examines the text space of the object file and identifies function calls in the binary machine code.
# @flag -D --ignore-non-functions               The -D option causes "gprof" to ignore symbols which are not known to be functions.
# @option -k <from/to>                          The -k option allows you to delete from the call graph any arcs from symbols matching symspec from to those matching symspec to.
# @flag -l --line                               The -l option enables line-by-line profiling, which causes histogram hits to be charged to individual source code lines, instead of functions.
# @flag --inline-file-names                     This option causes "gprof" to print the source file after each symbol in both the flat profile and the call graph.
# @option -m --min-count <num>                  This option affects execution count output only.
# @option -nsymspec <symspec>                   The -n option causes "gprof", in its call graph analysis, to only propagate times for symbols matching symspec.
# @option --time <symspec>                      The -n option causes "gprof", in its call graph analysis, to only propagate times for symbols matching symspec.
# @option -Nsymspec <symspec>                   The -n option causes "gprof", in its call graph analysis, not to propagate times for symbols matching symspec.
# @option --no-time <symspec>                   The -n option causes "gprof", in its call graph analysis, not to propagate times for symbols matching symspec.
# @option -Sfilename <filename>                 The -S option causes "gprof" to read an external symbol table file, such as /proc/kallsyms, rather than read the symbol table from the given object file (the default is "a.out").
# @option --external-symbol-table <filename>    The -S option causes "gprof" to read an external symbol table file, such as /proc/kallsyms, rather than read the symbol table from the given object file (the default is "a.out").
# @flag -z --display-unused-functions           If you give the -z option, "gprof" will mention all functions in the flat profile, even those that were never called, and that had no time spent in them.
# @option -d --debug <num>                      The -d num option specifies debugging options.
# @flag -h --help                               The -h option prints command line usage.
# @option -Oname <name>                         Selects the format of the profile data files.
# @option --file-format <name>                  Selects the format of the profile data files.
# @flag -s --sum                                The -s option causes "gprof" to summarize the information in the profile data files it read in, and write out a profile data file called gmon.sum, which contains all the information from the profile data files that "gprof" read in.
# @flag -v --version                            The -v flag causes "gprof" to print the current version number, and then exit.
# @option -e <function_name>                    The -e function option tells "gprof" to not print information about the function function_name (and its children...) in the call graph.
# @option -E <function_name>                    The "-E function" option works like the "-e" option, but time spent in the function (and children who were not called from anywhere else), will not be used to compute the percentages-of-time for the call graph.
# @option -f <function_name>                    The -f function option causes "gprof" to limit the call graph to the function function_name and its children (and their children...).
# @option -F <function_name>                    The -F function option works like the "-f" option, but only time spent in the function and its children (and their children...) will be used to determine total-time and percentages-of-time for the call graph.
# @arg image-file
# @arg profile-file*

command eval "$(argc --argc-eval "$0" "$@")"