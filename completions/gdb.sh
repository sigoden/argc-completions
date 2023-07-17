#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --args                       Arguments after executable-file are passed to inferior.
# @option --core <COREFILE>          Analyze the core dump COREFILE.
# @option --exec <EXECFILE>          Use EXECFILE as the executable.
# @option --pid[`_module_os_pid`]    Attach to running process PID.
# @option --directory <DIR>          Search for source files in DIR.
# @option --se <FILE>                Use FILE as symbol file and executable file.
# @option --symbols <SYMFILE>        Read symbols from SYMFILE.
# @flag --readnow                    Fully read symbol files on first access.
# @flag --readnever                  Do not read symbol files.
# @flag --write                      Set writing into executable and core files.
# @option -x --command <FILE>        Execute GDB commands from FILE.
# @flag --init-command
# @flag -ix
# @flag --eval-command
# @flag -ex
# @flag --init-eval-command
# @flag -iex
# @flag --nh                         Do not read ~/.gdbinit.
# @flag --nx                         Do not read any .gdbinit files in any directory.
# @flag --fullname                   Output information used by emacs-GDB interface.
# @option --interpreter[`_choice_interpreter`] <INTERP>
# @option --tty                      Use TTY for input/output by the program being debugged.
# @flag -w                           Use the GUI interface.
# @flag --nw                         Do not use the GUI interface.
# @flag --tui                        Use a terminal user interface.
# @flag --dbx                        DBX compatibility mode.
# @flag -q
# @flag --quiet
# @flag --silent
# @flag --batch                      Exit after processing options.
# @flag --batch-silent               Like --batch, but suppress all gdb stdout output.
# @flag --return-child-result
# @flag --configuration              Print details about GDB configuration and then exit.
# @flag --help                       Print this message and then exit.
# @flag --version                    Print version information and then exit.
# @option -b <BAUDRATE>              Set serial port baud rate used for remote debugging.
# @option -l <TIMEOUT>               Set timeout in seconds for remote debugging.
# @option --cd <DIR>                 Change current directory to DIR.
# @option -D --data-directory <DIR>
# @arg FILES*

_choice_interpreter() {
    cat <<-'EOF'
console	The traditional console or command-line interpreter.
mi	The newest GDB/MI interface (currently mi2).
mi2	The current GDB/MI interface.
mi1	The GDB/MI interface included in GDB 5.1, 5.2, and 5.3.
EOF
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"