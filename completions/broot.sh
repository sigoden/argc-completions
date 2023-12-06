#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                              Print help information
# @flag --version                           print the version
# @option --conf <paths>                    Semicolon separated paths to specific config files
# @flag -d --dates                          Show the last modified date of files and directories
# @flag -D --no-dates                       Don't show the last modified date
# @flag -f --only-folders                   Only show folders
# @flag -F --no-only-folders                Show folders and files alike
# @flag --show-root-fs                      Show filesystem info on top
# @flag -g --show-git-info                  Show git statuses on files and stats on repo
# @flag -G --no-show-git-info               Don't show git statuses on files and stats on repo
# @flag --git-status                        Only show files having an interesting git status, including hidden ones
# @flag -h --hidden                         Show hidden files
# @flag -H --no-hidden                      Don't show hidden files
# @flag -i --git-ignored                    Show git ignored files
# @flag -I --no-git-ignored                 Don't show git ignored files
# @flag -p --permissions                    Show permissions
# @flag -P --no-permissions                 Don't show permissions
# @flag -s --sizes                          Show the size of files and directories
# @flag -S --no-sizes                       Don't show sizes
# @flag --sort-by-count                     Sort by count (only show one level of the tree)
# @flag --sort-by-date                      Sort by date (only show one level of the tree)
# @flag --sort-by-size                      Sort by size (only show one level of the tree)
# @flag --sort-by-type                      Same as sort-by-type-dirs-first
# @flag --no-tree                           Do not show the tree, even if allowed by sorting mode
# @flag --tree                              Show the tree, when allowed by sorting mode
# @flag --sort-by-type-dirs-first           Sort by type, directories first (only show one level of the tree)
# @flag --sort-by-type-dirs-last            Sort by type, directories last (only show one level of the tree)
# @flag --no-sort                           Don't sort
# @flag -w --whale-spotting                 Sort by size, show ignored and hidden files
# @flag -t --trim-root                      Trim the root too and don't show a scrollbar
# @flag -T --no-trim-root                   Don't trim the root level, show a scrollbar
# @option --outcmd <path>                   Where to write the produced cmd (if any)
# @option -c --cmd <cmd>                    Semicolon separated commands to execute
# @option --color[auto|yes|no] <color>      Whether to have styles and colors (default is usually OK)Possible values:Default: auto
# @option --height <height>                 Height (if you don't want to fill the screen or for file export)
# @flag --install                           Install or reinstall the br shell function
# @option --set-install-state[undefined|refused|installed] <state>  Where to write the produced cmd (if any)Possible values:
# @option --print-shell-function <shell>    Print to stdout the br function for a given shell
# @option --listen <socket>                 A socket to listen to for commands
# @flag --get-root                          Ask for the current root of the remote broot
# @option --write-default-conf <path>       Write default conf files in given directory
# @option --send <socket>                   A socket to send commands to
# @arg dir

command eval "$(argc --argc-eval "$0" "$@")"