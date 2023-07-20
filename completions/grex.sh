#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --file                          Reads test cases on separate lines from a file.
# @flag -d --digits                          Converts any Unicode decimal digit to \d.
# @flag -D --non-digits                      Converts any character which is not a Unicode decimal digit to \D.
# @flag -s --spaces                          Converts any Unicode whitespace character to \s.
# @flag -S --non-spaces                      Converts any character which is not a Unicode whitespace character to \S
# @flag -w --words                           Converts any Unicode word character to \w.
# @flag -W --non-words                       Converts any character which is not a Unicode word character to \W.
# @flag -e --escape                          Replaces all non-ASCII characters with unicode escape sequences
# @flag --with-surrogates                    Converts astral code points to surrogate pairs if --escape is set
# @flag -r --repetitions                     Detects repeated non-overlapping substrings and converts them to {min,max} quantifier notation
# @option --min-repetitions <QUANTITY>       Specifies the minimum quantity of substring repetitions to be converted if --repetitions is set
# @option --min-substring-length <LENGTH>    Specifies the minimum length a repeated substring must have in order to be converted if --repetitions is set
# @flag --no-start-anchor                    Removes the caret anchor `^` from the resulting regular expression.
# @flag --no-end-anchor                      Removes the dollar sign anchor `$` from the resulting regular expression.
# @flag --no-anchors                         Removes the caret and dollar sign anchors from the resulting regular expression.
# @flag -x --verbose                         Produces a nicer-looking regular expression in verbose mode
# @flag -c --colorize                        Provides syntax highlighting for the resulting regular expression
# @flag -i --ignore-case                     Performs case-insensitive matching, letters match both upper and lower case
# @flag -g --capture-groups                  Replaces non-capturing groups with capturing ones
# @flag -h --help                            Prints help information
# @flag -v --version                         Prints version information
# @arg input*

command eval "$(argc --argc-eval "$0" "$@")"