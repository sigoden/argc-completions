#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                            show version and exit
# @flag -l --list                            list files whose formatting differs from shfmt's
# @flag -w --write                           write result to file instead of stdout
# @flag -d --diff                            error with a diff when the formatting differs
# @flag -s --simplify                        simplify the code
# @flag -mn                                  minify the code to reduce its size (implies -s)
# @flag --minify                             minify the code to reduce its size (implies -s)
# @option -ln[bash|posix|mksh|bats] <str>    bash/posix/mksh/bats, default "auto"
# @option --language-dialect[bash|posix|mksh|bats] <str>  bash/posix/mksh/bats, default "auto"
# @flag -p --posix                           shorthand for -ln=posix
# @option --filename <str>                   provide a name for the standard input file
# @option -i --indent <uint>                 0 for tabs (default), >0 for number of spaces
# @flag -bn                                  binary ops like && and | may start a line
# @flag --binary-next-line                   binary ops like && and | may start a line
# @flag -ci                                  switch cases will be indented
# @flag --case-indent                        switch cases will be indented
# @flag -sr                                  redirect operators will be followed by a space
# @flag --space-redirects                    redirect operators will be followed by a space
# @flag -kp                                  keep column alignment paddings
# @flag --keep-padding                       keep column alignment paddings
# @flag -fn                                  function opening braces are placed on a separate line
# @flag --func-next-line                     function opening braces are placed on a separate line
# @flag -f --find                            recursively find all shell files and print the paths
# @flag --to-json                            print syntax tree to stdout as a typed JSON
# @flag --from-json                          read syntax tree from stdin as a typed JSON
# @arg path*

command eval "$(argc --argc-eval "$0" "$@")"