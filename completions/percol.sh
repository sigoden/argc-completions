#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                                show program's version number and exit
# @flag -h --help                                show this help message and exit
# @option --tty                                  path to the TTY (usually, the value of $TTY)
# @option --rcfile                               path to the settings file
# @option --output-encoding <OUTPUT_ENCODING>    encoding for output
# @option --input-encoding <INPUT_ENCODING>      encoding for input and output (default 'utf8')
# @flag -v --invert-match                        select non-matching lines
# @option --query                                pre-input query
# @flag --eager                                  suppress lazy matching (slower, but display correct candidates count)
# @option --eval <STRING_TO_EVAL>                eval given string after loading the rc file
# @option --prompt                               specify prompt (percol.view.PROMPT)
# @option --right-prompt <RIGHT_PROMPT>          specify right prompt (percol.view.RPROMPT)
# @option --match-method <MATCH_METHOD>          specify matching method for query.
# @option --caret-position <CARET>               position of the caret (default length of the `query`)
# @option --initial-index <INDEX>                position of the initial index of the selection (numeric, "first" or "last")
# @flag --case-sensitive                         whether distinguish the case of query or not
# @flag --reverse                                whether reverse the order of candidates or not
# @flag --auto-fail                              auto fail if no candidates
# @flag --auto-match                             auto matching if only one candidate
# @flag --prompt-top                             display prompt top of the screen (default)
# @flag --prompt-bottom                          display prompt bottom of the screen
# @flag --result-top-down                        display results top down (default)
# @flag --result-bottom-up                       display results bottom up instead of top down
# @flag --quote                                  whether quote the output line
# @flag --peep                                   exit immediately with doing nothing to cache module files and speed up start-up time
# @arg file

command eval "$(argc --argc-eval "$0" "$@")"