#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --attach-name <name>                    Tells the debugger to attach to a process with the given name.
# @option --attach-pid[`_module_os_pid`] <pid>    Tells the debugger to attach to a process with the given pid.
# @option -n <value>                              Alias for --attach-name
# @option -p <value>                              Alias for --attach-pid
# @flag --wait-for                                Tells the debugger to wait for a process with the given pid or name to launch before attaching.
# @flag -w                                        Alias for --wait-for
# @flag --batch                                   Tells the debugger to run the commands from -s, -S, -o & -O, and then quit.
# @flag -b                                        Alias for --batch
# @option -K <value>                              Alias for --source-on-crash
# @option -k <value>                              Alias for --one-line-on-crash
# @flag --local-lldbinit                          Allow the debugger to parse the .lldbinit files in the current working directory, unless --no-lldbinit is passed.
# @flag --no-lldbinit                             Do not automatically parse any '.lldbinit' files.
# @option --one-line-before-file[`_module_os_command_args`] <command>  Tells the debugger to execute this one-line lldb command before any file provided on the command line has been loaded.
# @option --one-line-on-crash[`_module_os_command_args`] <command>  When in batch mode, tells the debugger to run this one-line lldb command if the target crashes.
# @option --one-line[`_module_os_command_args`] <command>  Tells the debugger to execute this one-line lldb command after any file provided on the command line has been loaded.
# @option -O <value>                              Alias for --one-line-before-file
# @option -o <value>                              Alias for --one-line
# @flag -Q                                        Alias for --source-quietly
# @option --source-before-file <file>             Tells the debugger to read in and execute the lldb commands in the given file, before any file has been loaded.
# @option --source-on-crash <file>                When in batch mode, tells the debugger to source this file of lldb commands if the target crashes.
# @flag --source-quietly                          Tells the debugger not to echo commands while sourcing files or one-line commands provided on the command line.
# @option --source <file>                         Tells the debugger to read in and execute the lldb commands in the given file, after any file has been loaded.
# @option -S <value>                              Alias for --source-before-file
# @option -s <value>                              Alias for --source
# @flag -x                                        Alias for --no-lldbinit
# @option --arch <architecture>                   Tells the debugger to use the specified architecture when starting and running the program.
# @option -a <value>                              Alias for --arch
# @option --capture-path <filename>               Tells the debugger to use the given filename for the reproducer.
# @flag --capture                                 Tells the debugger to capture a reproducer.
# @option --core <filename>                       Tells the debugger to use the full path to <filename> as the core file.
# @option -c <value>                              Alias for --core
# @flag --debug                                   Tells the debugger to print out extra information for debugging itself.
# @flag -d                                        Alias for --debug
# @flag --editor                                  Tells the debugger to open source files using the host's "external editor" mechanism.
# @flag -e                                        Alias for --editor
# @option --file <filename>                       Tells the debugger to use the file <filename> as the program to be debugged.
# @option -f <value>                              Alias for --file
# @flag --help                                    Prints out the usage information for the LLDB debugger.
# @flag -h                                        Alias for --help
# @flag --no-use-colors                           Do not use colors.
# @flag --reproducer-generate-on-exit             Generate reproducer on exit.
# @flag --version                                 Prints out the current version number of the LLDB debugger.
# @flag -v                                        Alias for --version
# @flag -X                                        Alias for --no-use-color
# @option -r <flags>                              Alias for --repl=<flags>
# @option --repl-language <language>              Chooses the language for the REPL.
# @option --repl <flags>                          Runs lldb in REPL mode with a stub process with the given flags.
# @option -R <value>                              Alias for --repl-language
# @option -l <value>                              Alias for --script-language
# @flag --print-script-interpreter-info           Prints out a json dictionary with information about the scripting language interpreter.
# @flag --python-path                             Prints out the path to the lldb.py file for this version of lldb.
# @flag -P                                        Alias for --python-path
# @option --script-language <language>            Tells the debugger to use the specified scripting language for user-defined scripts.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"