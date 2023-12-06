#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A* <ARGS>               run ".archive ARGS" and exit
# @flag -append                    append the database to the end of the file
# @flag -ascii                     set output mode to 'ascii'
# @flag -bail                      stop after hitting an error
# @flag -batch                     force batch I/O
# @flag -box                       set output mode to 'box'
# @flag -column                    set output mode to 'column'
# @option -cmd <COMMAND>           run "COMMAND" before reading stdin
# @flag -csv                       set output mode to 'csv'
# @flag -deserialize               open the database using sqlite3_deserialize()
# @flag -echo                      print inputs before execution
# @option -init <FILENAME>         read/process named file
# @flag -header                    turn headers on or off
# @flag -noheader                  turn headers on or off
# @flag -help                      show this message
# @flag -html                      set output mode to HTML
# @flag -interactive               force interactive I/O
# @flag -json                      set output mode to 'json'
# @flag -line                      set output mode to 'line'
# @flag -list                      set output mode to 'list'
# @option -lookaside <SIZE> <N>    use N entries of SZ bytes for lookaside memory
# @flag -markdown                  set output mode to 'markdown'
# @option -maxsize <N>             maximum size for a --deserialize database
# @flag -memtrace                  trace all memory allocations and deallocations
# @option -mmap <N>                default mmap size set to N
# @option -newline <SEP>           set output row separator.
# @flag -nofollow                  refuse to open symbolic links to database files
# @option -nonce <STRING>          set the safe-mode escape nonce
# @option -nullvalue <TEXT>        set text string for NULL values.
# @option -pagecache <SIZE> <N>    use N slots of SZ bytes each for page cache memory
# @flag -pcachetrace               trace all page cache operations
# @flag -quote                     set output mode to 'quote'
# @flag -readonly                  open the database read-only
# @flag -safe                      enable safe-mode
# @option -separator <SEP>         set output column separator.
# @flag -stats                     print memory stats before each finalize
# @flag -table                     set output mode to 'table'
# @flag -tabs                      set output mode to 'tabs'
# @flag -unsafe-testing            allow unsafe commands and modes for testing
# @flag -version                   show SQLite version
# @option -vfs <NAME>              use NAME as the default VFS
# @flag -zip                       open the file as a ZIP Archive
# @arg filename
# @arg sql

command eval "$(argc --argc-eval "$0" "$@")"