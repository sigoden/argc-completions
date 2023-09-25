#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a             auto NNN_FIFO
# @flag -A             no dir auto-select
# @option -b <key>     open bookmark key (trumps -s/S)
# @flag -c             cli-only NNN_OPENER (trumps -e)
# @flag -C             8-color scheme
# @flag -d             detail mode
# @flag -D             dirs in context color
# @flag -e             text in $VISUAL/$EDITOR/vi
# @flag -E             internal edits in EDITOR
# @flag -f             use readline history file
# @option -F <val>     fifo mode [0:preview 1:explore]
# @flag -g             regex filters
# @flag -H             show hidden files
# @flag -J             no auto-proceed on select
# @flag -K             detect key collision
# @option -l <val>     set scroll lines
# @flag -n             type-to-nav mode
# @flag -o             open files only on Enter
# @option -p <file>    selection file [-:stdout]
# @option -P <key>     run plugin key
# @flag -Q             no quit confirmation
# @flag -r             use advcpmv patched cp, mv
# @flag -R             no rollover at edges
# @option -s <name>    load session by name
# @flag -S             persistent session
# @option -t <secs>    timeout to lock
# @option -T <key>     sort order [a/d/e/r/s/t/v]
# @flag -u             use selection (no prompt)
# @flag -U             show user and group
# @flag -V             show version
# @flag -w             place HW cursor on hovered
# @flag -x             notis, selection sync, xterm title
# @flag -h             show help
# @arg path            start dir/file [default: .]

command eval "$(argc --argc-eval "$0" "$@")"