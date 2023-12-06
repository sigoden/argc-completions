#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --threshold                minimum level of concern (i.e., number of stars) that should be reported.
# @flag -v --verbose                 report all statistics, whether concerning or not; equivalent to '--threshold=0
# @flag --no-verbose                 equivalent to '--threshold=1'
# @flag --critical                   only report critical statistics; equivalent to '--threshold=30'
# @option --names[none|hash|full]    display names of large objects in the specified style.
# @flag -j --json                    output results in JSON format
# @option --json-version <1|2>       choose which JSON format version to output.
# @flag --progress                   report (don't report) progress to stderr.
# @flag --no-progress                report (don't report) progress to stderr.
# @flag --version                    only report the git-sizer version number
# @flag --branches                   process [don't process] branches
# @flag --no-branches                process [don't process] branches
# @flag --tags                       process [don't process] tags
# @flag --no-tags                    process [don't process] tags
# @flag --remotes                    process [don't process] remote-tracking references
# @flag --no-remotes                 process [don't process] remote-tracking references
# @flag --notes                      process [don't process] git-notes references
# @flag --no-notes                   process [don't process] git-notes references
# @flag --stash                      process [don't process] refs/stash
# @flag --no-stash                   process [don't process] refs/stash
# @option --include <@REFGROUP>      process [don't process] references in the specified reference group (see below)
# @option --exclude <@REFGROUP>      process [don't process] references in the specified reference group (see below)
# @flag --show-refs                  show which refs are being included/excluded

command eval "$(argc --argc-eval "$0" "$@")"