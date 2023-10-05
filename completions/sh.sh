#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -a <allexport>                  Export all variables assigned to.
# @flag -c                                Read commands from the command_string operand instead of from the standard input.
# @option -C <noclobber>                  Don't overwrite existing files with “>”.
# @option -e <errexit>                    If not interactive, exit immediately if any untested command fails.
# @option -f <noglob>                     Disable pathname expansion.
# @option -n <noexec>                     If not interactive, read commands but do not execute them.
# @option -u <nounset>                    Write a message to standard error when attempting to expand a variable that is not set, and if the shell is not interactive, exit immediately.
# @option -v <verbose>                    The shell writes its input to standard error as it is read.
# @option -x <xtrace>                     Write each command to standard error (preceded by a ‘+ ’) before it is executed.
# @option -I <ignoreeof>                  Ignore EOF's from input when interactive.
# @option -i <interactive>                Force the shell to behave interactively.
# @flag -l                                Make dash act as if it had been invoked as a login shell.
# @option -m <monitor>                    Turn on job control (set automatically when interactive).
# @option -s <stdin>                      Read commands from standard input (set automatically if no file arguments are present).
# @option -V <vi>                         Enable the built-in vi(1) command line editor (disables -E if it has been set).
# @option -E <emacs>                      Enable the built-in emacs(1) command line editor (disables -V if it has been set).
# @option -b <notify>                     Enable asynchronous notification of background job completion.
# @option -p <priviliged>                 Do not attempt to reset effective uid if it does not match uid.
# @option -o*[`_choice_option`] <name>    Set option
# @arg file
# @arg args*

_choice_option() {
    printf "%s\n" allexport errexit ignoreeof monitor noclobber noglob noexec nolog notify nounset verbose vi xtrace
}

command eval "$(argc --argc-eval "$0" "$@")"