#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v                   Vi mode (like "vi")
# @flag -e                   Ex mode (like "ex")
# @flag -E                   Improved Ex mode
# @flag -y                   Easy mode (like "evim", modeless)
# @flag -R                   Readonly mode (like "view")
# @flag -Z                   Restricted mode (like "rvim")
# @flag -m                   Modifications (writing files) not allowed
# @flag -M                   Modifications in text not allowed
# @flag -b                   Binary mode
# @flag -C                   Compatible with Vi: 'compatible'
# @flag -N                   Not fully Vi compatible: 'nocompatible'
# @option -V <[N][fname]>    Be verbose [level N] [log messages to fname]
# @flag -n                   No swap file, use memory only
# @flag -r                   List swap files and exit
# @flag -L                   Same as -r
# @option -T <terminal>      Set terminal type to <terminal>
# @flag --not-a-term         Skip warning for input/output not being a terminal
# @flag --ttyfail            Exit if input or output is not a terminal
# @option -u <vimrc>         Use <vimrc> instead of any .vimrc
# @flag --noplugin           Don't load plugin scripts
# @option -p <N>             Open N tab pages (default: one for each file)
# @option -o <N>             Open N windows (default: one for each file)
# @option -O <N>             Like -o but split vertically
# @option --cmd <command>    Execute <command> before loading any vimrc file
# @option -c <command>       Execute <command> after loading the first file
# @option -S <session>       Source file <session> after loading the first file
# @option -w <scriptout>     Append all typed commands to file <scriptout>
# @option -W <scriptout>     Write all typed commands to file <scriptout>
# @flag --clean              'nocompatible', Vim defaults, no plugins, no viminfo
# @flag -h --help            Print Help (this message) and exit
# @flag --version            Print version information and exit
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"