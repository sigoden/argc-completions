#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --diff <file> <file>                Compare two files with each other.
# @option -m --merge <path1> <path2> <base> <result>  Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results.
# @option -a --add <folder>                      Add folder(s) to the last active window.
# @option -g --goto <file:line[:character]>      Open a file at the path on the specified line and character position.
# @flag -n --new-window                          Force to open a new window.
# @flag -r --reuse-window                        Force to open a file or folder in an already opened window.
# @flag -w --wait                                Wait for the files to be closed before returning.
# @flag -h --help                                Print usage.
# @flag --list-extensions                        List the installed extensions.
# @flag --show-versions                          Show versions of installed extensions, when using --list-extensions.
# @option --category <category>                  Filters installed extensions by provided category, when using --list-extensions.
# @option --install-extension <ext-id | path>    Installs or updates an extension.
# @option --uninstall-extension <ext-id>         Uninstalls an extension.
# @flag -v --version                             Print version.
# @flag --verbose                                Print verbose output (implies --wait).
# @flag -s --status                              Print process usage and diagnostics information.
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"