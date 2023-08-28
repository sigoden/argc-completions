#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Prints help information
# @flag -V --version    Prints version information

# {{ twiggy diff
# @cmd Diff the old and new versions of a binary to see what sizes changed
# @flag -a --all                         Displays all items.
# @flag -h --help                        Prints help information
# @flag --regex                          Whether or not `items` should be treated as regular expressions
# @flag -V --version                     Prints version information
# @option -n <max-items>                 The maximum number of items to display [default: 20]
# @option -o <output-destination>        The destination to write the output to.
# @option -f --format <output-format>    The format the output should be written in [default: text]
# @option --mode <parse-mode>            The parse mode for the input binary data [default: auto]
# @arg old-input!                        The path to the old version of the input binary
# @arg new-input!                        The path to the new version of the input binary
# @arg items+                            The name of the item(s) whose diff should be printed
diff() {
    :;
}
# }} twiggy diff

# {{ twiggy dominators
# @cmd Compute and display the dominator tree for a binary's call graph
# @flag -h --help                        Prints help information
# @flag --regex                          Whether or not `items` should be treated as regular expressions
# @flag -V --version                     Prints version information
# @option -d <max-depth>                 The maximum depth to print the dominators tree
# @option -r <max-rows>                  The maximum number of rows, regardless of depth in the tree, to display
# @option -o <output-destination>        The destination to write the output to.
# @option -f --format <output-format>    The format the output should be written in [default: text]
# @option --mode <parse-mode>            The parse mode for the input binary data [default: auto]
# @arg input!                            The path to the input binary to size profile
# @arg items+                            The name of the function whose dominator subtree should be printed
dominators() {
    :;
}
# }} twiggy dominators

# {{ twiggy garbage
# @cmd Find and display code and data that is not transitively referenced by any exports or public functions
# @flag -a --all                         Display all items.
# @flag -h --help                        Prints help information
# @flag --show-data-segments             Show data segments rather than summarizing them in a single line
# @flag -V --version                     Prints version information
# @option -n <max-items>                 The maximum number of items to display [default: 10]
# @option -o <output-destination>        The destination to write the output to.
# @option -f --format <output-format>    The format the output should be written in [default: text]
# @option --mode <parse-mode>            The parse mode for the input binary data [default: auto]
# @arg input!                            The path to the input binary to size profile
garbage() {
    :;
}
# }} twiggy garbage

# {{ twiggy monos
# @cmd List the generic function monomorphizations that are contributing to code bloat
# @flag --all-generics                        List all generics.
# @flag -a --all                              List all generics and all of their individual monomorphizations.
# @flag --all-monos                           List all individual monomorphizations for each listed generic function.
# @flag -h --help                             Prints help information
# @flag -g --only-generics                    Hide individual monomorphizations and only show the generic functions
# @flag --regex                               Whether or not `names` should be treated as regular expressions
# @flag -V --version                          Prints version information
# @option -m --max-generics <max-generics>    The maximum number of generics to list [default: 10]
# @option -n --max-monos <max-monos>          The maximum number of individual monomorphizations to list for each listed generic function [default: 10]
# @option -o <output-destination>             The destination to write the output to.
# @option -f --format <output-format>         The format the output should be written in [default: text]
# @option -d --mode <parse-mode>              The parse mode for the input binary data [default: auto]
# @arg input!                                 The path to the input binary to size profile
# @arg functions+                             The names of the generic functions whose monomorphizations should be printed
monos() {
    :;
}
# }} twiggy monos

# {{ twiggy paths
# @cmd Find and display the call paths to a function in the given binary's call graph
# @flag --descending                     This direction of the path traversal
# @flag -h --help                        Prints help information
# @flag --regex                          Whether or not `functions` should be treated as regular expressions
# @flag -V --version                     Prints version information
# @option -d <max-depth>                 The maximum depth to print the paths [default: 10]
# @option -r <max-paths>                 The maximum number of paths, regardless of depth in the tree, to display [default: 10]
# @option -o <output-destination>        The destination to write the output to.
# @option -f --format <output-format>    The format the output should be written in [default: text]
# @option --mode <parse-mode>            The parse mode for the input binary data [default: auto]
# @arg input!                            The path to the input binary to size profile
# @arg functions+                        The functions to find call paths to
paths() {
    :;
}
# }} twiggy paths

# {{ twiggy top
# @cmd List the top code size offenders in a binary
# @flag -h --help                        Prints help information
# @flag --retained                       Sort list by retained size, rather than shallow size
# @flag -r --retaining-paths             Display retaining paths
# @flag -V --version                     Prints version information
# @option -n <max-items>                 The maximum number of items to display [default: 4294967295]
# @option -o <output-destination>        The destination to write the output to.
# @option -f --format <output-format>    The format the output should be written in [default: text]
# @option --mode <parse-mode>            The parse mode for the input binary data [default: auto]
# @arg input!                            The path to the input binary to size profile
top() {
    :;
}
# }} twiggy top

command eval "$(argc --argc-eval "$0" "$@")"