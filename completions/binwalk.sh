#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -B --signature                  Scan target file(s) for common file signatures
# @option -R --raw <str>                Scan target file(s) for the specified sequence of bytes
# @flag -A --opcodes                    Scan target file(s) for common executable opcode signatures
# @option -m --magic <file>             Specify a custom magic file to use
# @flag -b --dumb                       Disable smart signature keywords
# @flag -I --invalid                    Show results marked as invalid
# @option -x --exclude <str>            Exclude results that match <str>
# @option -y --include <str>            Only show results that match <str>
# @flag -e --extract                    Automatically extract known file types
# @option -D --dd <type[:ext[:cmd]]>    Extract <type> signatures (regular expression), give the files an extension of <ext>, and execute <cmd>
# @flag -M --matryoshka                 Recursively scan extracted files
# @option -d --depth <int>              Limit matryoshka recursion depth (default: 8 levels deep)
# @option -C --directory <str>          Extract files/folders to a custom directory (default: current working directory)
# @option -j --size <int>               Limit the size of each extracted file
# @option -n --count <int>              Limit the number of extracted files
# @option -0 --run-as <str>             Execute external extraction utilities with the specified user's privileges
# @flag -1 --preserve-symlinks          Do not sanitize extracted symlinks that point outside the extraction directory (dangerous)
# @flag -r --rm                         Delete carved files after extraction
# @flag -z --carve                      Carve data from files, but don't execute extraction utilities
# @flag -V --subdirs                    Extract into sub-directories named by the offset
# @flag -E --entropy                    Calculate file entropy
# @flag -F --fast                       Use faster, but less detailed, entropy analysis
# @flag -J --save                       Save plot as a PNG
# @flag -Q --nlegend                    Omit the legend from the entropy plot graph
# @flag -N --nplot                      Do not generate an entropy plot graph
# @option -H --high <float>             Set the rising edge entropy trigger threshold (default: 0.95)
# @option -L --low <float>              Set the falling edge entropy trigger threshold (default: 0.85)
# @flag -W --hexdump                    Perform a hexdump / diff of a file or files
# @flag -G --green                      Only show lines containing bytes that are the same among all files
# @flag -i --red                        Only show lines containing bytes that are different among all files
# @flag -U --blue                       Only show lines containing bytes that are different among some files
# @flag -u --similar                    Only display lines that are the same between all files
# @flag -w --terse                      Diff all files, but only display a hex dump of the first file
# @flag -X --deflate                    Scan for raw deflate compression streams
# @flag -Z --lzma                       Scan for raw LZMA compression streams
# @flag -P --partial                    Perform a superficial, but faster, scan
# @flag -S --stop                       Stop after the first result
# @option -l --length <int>             Number of bytes to scan
# @option -o --offset <int>             Start scan at this file offset
# @option -O --base <int>               Add a base address to all printed offsets
# @option -K --block <int>              Set file block size
# @option -g --swap <int>               Reverse every n bytes before scanning
# @option -f --log <file>               Log results to file
# @flag -c --csv                        Log results to file in CSV format
# @flag -t --term                       Format output to fit the terminal window
# @flag -q --quiet                      Suppress output to stdout
# @flag -v --verbose                    Enable verbose output
# @flag -h --help                       Show help output
# @option -a --finclude <str>           Only scan files whose names match this regex
# @option -p --fexclude <str>           Do not scan files whose names match this regex
# @option -s --status <int>             Enable the status server on the specified port
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"