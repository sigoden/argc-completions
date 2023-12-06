#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -2
# @flag -C
# @flag -D
# @flag -l
# @flag -N
# @flag -u
# @flag -v
# @flag -V
# @option -c <shell-command>
# @option -f <file>
# @option -L <socket-name>
# @option -S <socket-path>
# @option -T <features>

# {{ tmux attach-session
# @cmd
# @alias attach
# @flag -d
# @flag -E
# @flag -r
# @flag -x
# @option -c <working-directory>
# @option -f <flags>
# @option -t <target-session>
attach-session() {
    :;
}
# }} tmux attach-session

# {{ tmux bind-key
# @cmd
# @alias bind
# @flag -n
# @flag -r
# @option -T <key-table>
# @option -N <note>
# @arg key
# @arg command
bind-key() {
    :;
}
# }} tmux bind-key

# {{ tmux break-pane
# @cmd
# @alias breakp
# @flag -a
# @flag -b
# @flag -d
# @flag -P
# @option -F <format>
# @option -n <window-name>
# @option -s <src-pane>
# @option -t <dst-window>
break-pane() {
    :;
}
# }} tmux break-pane

# {{ tmux capture-pane
# @cmd
# @alias capturep
# @flag -a
# @flag -C
# @flag -e
# @flag -J
# @flag -N
# @flag -p
# @flag -P
# @flag -q
# @option -b <buffer-name>
# @option -E <end-line>
# @option -S <start-line>
# @option -t <target-pane>
capture-pane() {
    :;
}
# }} tmux capture-pane

# {{ tmux choose-buffer
# @cmd
# @flag -N
# @flag -r
# @flag -Z
# @option -F <format>
# @option -f <filter>
# @option -K <key-format>
# @option -O <sort-order>
# @option -t <target-pane>
# @arg template
choose-buffer() {
    :;
}
# }} tmux choose-buffer

# {{ tmux choose-client
# @cmd
# @flag -N
# @flag -r
# @flag -Z
# @option -F <format>
# @option -f <filter>
# @option -K <key-format>
# @option -O <sort-order>
# @option -t <target-pane>
# @arg template
choose-client() {
    :;
}
# }} tmux choose-client

# {{ tmux choose-tree
# @cmd
# @flag -G
# @flag -N
# @flag -r
# @flag -s
# @flag -w
# @flag -Z
# @option -F <format>
# @option -f <filter>
# @option -K <key-format>
# @option -O <sort-order>
# @option -t <target-pane>
# @arg template
choose-tree() {
    :;
}
# }} tmux choose-tree

# {{ tmux clear-history
# @cmd
# @alias clearhist
# @option -t <target-pane>
clear-history() {
    :;
}
# }} tmux clear-history

# {{ tmux clear-prompt-history
# @cmd
# @alias clearphist
# @option -T <type>
clear-prompt-history() {
    :;
}
# }} tmux clear-prompt-history

# {{ tmux clock-mode
# @cmd
# @option -t <target-pane>
clock-mode() {
    :;
}
# }} tmux clock-mode

# {{ tmux confirm-before
# @cmd
# @alias confirm
# @flag -b
# @option -p <prompt>
# @option -t <target-client>
# @arg command
confirm-before() {
    :;
}
# }} tmux confirm-before

# {{ tmux copy-mode
# @cmd
# @flag -e
# @flag -H
# @flag -M
# @flag -u
# @flag -q
# @option -s <src-pane>
# @option -t <target-pane>
copy-mode() {
    :;
}
# }} tmux copy-mode

# {{ tmux customize-mode
# @cmd
# @flag -N
# @flag -Z
# @option -F <format>
# @option -f <filter>
# @option -t <target-pane>
customize-mode() {
    :;
}
# }} tmux customize-mode

# {{ tmux delete-buffer
# @cmd
# @alias deleteb
# @option -b <buffer-name>
delete-buffer() {
    :;
}
# }} tmux delete-buffer

# {{ tmux detach-client
# @cmd
# @alias detach
# @flag -a
# @flag -P
# @option -E <shell-command>
# @option -s <target-session>
# @option -t <target-client>
detach-client() {
    :;
}
# }} tmux detach-client

# {{ tmux display-menu
# @cmd
# @alias menu
# @flag -O
# @option -c <target-client>
# @option -t <target-pane>
# @option -T <title>
# @option -x <position>
# @option -y <position>
# @arg name
# @arg key
# @arg command*
display-menu() {
    :;
}
# }} tmux display-menu

# {{ tmux display-message
# @cmd
# @alias display
# @flag -a
# @flag -I
# @flag -N
# @flag -p
# @flag -v
# @option -c <target-client>
# @option -d <delay>
# @option -F <format>
# @option -t <target-pane>
# @arg message
display-message() {
    :;
}
# }} tmux display-message

# {{ tmux display-popup
# @cmd
# @alias popup
# @flag -B
# @flag -C
# @flag -E
# @option -b <border-lines>
# @option -c <target-client>
# @option -d <start-directory>
# @option -e <environment>
# @option -h <height>
# @option -s <style>
# @option -S <border-style>
# @option -t <target-pane>
# @option -T <title>
# @option -w <width>
# @option -x <position>
# @option -y <position>
# @arg shell-command
display-popup() {
    :;
}
# }} tmux display-popup

# {{ tmux display-panes
# @cmd
# @alias displayp
# @flag -b
# @flag -N
# @option -d <duration>
# @option -t <target-client>
# @arg template
display-panes() {
    :;
}
# }} tmux display-panes

# {{ tmux find-window
# @cmd
# @alias findw
# @flag -C
# @flag -i
# @flag -N
# @flag -r
# @flag -T
# @flag -Z
# @option -t <target-pane>
# @arg match-string
find-window() {
    :;
}
# }} tmux find-window

# {{ tmux has-session
# @cmd
# @alias has
# @option -t <target-session>
has-session() {
    :;
}
# }} tmux has-session

# {{ tmux if-shell
# @cmd
# @alias if
# @flag -b
# @flag -F
# @option -t <target-pane>
# @arg shell-command
# @arg command
if-shell() {
    :;
}
# }} tmux if-shell

# {{ tmux join-pane
# @cmd
# @alias joinp
# @flag -b
# @flag -d
# @flag -f
# @flag -h
# @flag -v
# @option -l <size>
# @option -s <src-pane>
# @option -t <dst-pane>
join-pane() {
    :;
}
# }} tmux join-pane

# {{ tmux kill-pane
# @cmd
# @alias killp
# @flag -a
# @option -t <target-pane>
kill-pane() {
    :;
}
# }} tmux kill-pane

# {{ tmux kill-server
# @cmd
kill-server() {
    :;
}
# }} tmux kill-server

# {{ tmux kill-session
# @cmd
# @flag -a
# @flag -C
# @option -t <target-session>
kill-session() {
    :;
}
# }} tmux kill-session

# {{ tmux kill-window
# @cmd
# @alias killw
# @flag -a
# @option -t <target-window>
kill-window() {
    :;
}
# }} tmux kill-window

# {{ tmux last-pane
# @cmd
# @alias lastp
# @flag -d
# @flag -e
# @flag -Z
# @option -t <target-window>
last-pane() {
    :;
}
# }} tmux last-pane

# {{ tmux last-window
# @cmd
# @alias last
# @option -t <target-session>
last-window() {
    :;
}
# }} tmux last-window

# {{ tmux link-window
# @cmd
# @alias linkw
# @flag -a
# @flag -b
# @flag -d
# @flag -k
# @option -s <src-window>
# @option -t <dst-window>
link-window() {
    :;
}
# }} tmux link-window

# {{ tmux list-buffers
# @cmd
# @alias lsb
# @option -F <format>
# @option -f <filter>
list-buffers() {
    :;
}
# }} tmux list-buffers

# {{ tmux list-clients
# @cmd
# @alias lsc
# @option -F <format>
# @option -t <target-session>
list-clients() {
    :;
}
# }} tmux list-clients

# {{ tmux list-commands
# @cmd
# @alias lscm
# @option -F <format>
# @arg command[`_choice_command`]
list-commands() {
    :;
}
# }} tmux list-commands

# {{ tmux list-keys
# @cmd
# @alias lsk
# @flag -1
# @flag -a
# @flag -N
# @option -P <prefix-string>
# @option -T <key-table>
# @arg key
list-keys() {
    :;
}
# }} tmux list-keys

# {{ tmux list-panes
# @cmd
# @alias lsp
# @flag -a
# @flag -s
# @option -F <format>
# @option -f <filter>
# @option -t <target-window>
list-panes() {
    :;
}
# }} tmux list-panes

# {{ tmux list-sessions
# @cmd
# @alias ls
# @option -F <format>
# @option -f <filter>
list-sessions() {
    :;
}
# }} tmux list-sessions

# {{ tmux list-windows
# @cmd
# @alias lsw
# @flag -a
# @option -F <format>
# @option -f <filter>
# @option -t <target-session>
list-windows() {
    :;
}
# }} tmux list-windows

# {{ tmux load-buffer
# @cmd
# @alias loadb
# @option -b <buffer-name>
# @option -t <target-client>
# @arg path
load-buffer() {
    :;
}
# }} tmux load-buffer

# {{ tmux lock-client
# @cmd
# @alias lockc
# @option -t <target-client>
lock-client() {
    :;
}
# }} tmux lock-client

# {{ tmux lock-server
# @cmd
# @alias lock
lock-server() {
    :;
}
# }} tmux lock-server

# {{ tmux lock-session
# @cmd
# @alias locks
# @option -t <target-session>
lock-session() {
    :;
}
# }} tmux lock-session

# {{ tmux move-pane
# @cmd
# @alias movep
# @flag -b
# @flag -d
# @flag -f
# @flag -h
# @flag -v
# @option -l <size>
# @option -s <src-pane>
# @option -t <dst-pane>
move-pane() {
    :;
}
# }} tmux move-pane

# {{ tmux move-window
# @cmd
# @alias movew
# @flag -a
# @flag -b
# @flag -d
# @flag -k
# @flag -r
# @option -s <src-window>
# @option -t <dst-window>
move-window() {
    :;
}
# }} tmux move-window

# {{ tmux new-session
# @cmd
# @alias new
# @flag -A
# @flag -d
# @flag -D
# @flag -E
# @flag -P
# @flag -X
# @option -c <start-directory>
# @option -e <environment>
# @option -F <format>
# @option -f <flags>
# @option -n <window-name>
# @option -s <session-name>
# @option -t <target-session>
# @option -x <width>
# @option -y <height>
# @arg shell-command
new-session() {
    :;
}
# }} tmux new-session

# {{ tmux new-window
# @cmd
# @alias neww
# @flag -a
# @flag -b
# @flag -d
# @flag -k
# @flag -P
# @flag -S
# @option -c <start-directory>
# @option -e <environment>
# @option -F <format>
# @option -n <window-name>
# @option -t <target-window>
# @arg shell-command
new-window() {
    :;
}
# }} tmux new-window

# {{ tmux next-layout
# @cmd
# @alias nextl
# @option -t <target-window>
next-layout() {
    :;
}
# }} tmux next-layout

# {{ tmux next-window
# @cmd
# @alias next
# @flag -a
# @option -t <target-session>
next-window() {
    :;
}
# }} tmux next-window

# {{ tmux paste-buffer
# @cmd
# @alias pasteb
# @flag -d
# @flag -p
# @flag -r
# @option -s <separator>
# @option -b <buffer-name>
# @option -t <target-pane>
paste-buffer() {
    :;
}
# }} tmux paste-buffer

# {{ tmux pipe-pane
# @cmd
# @alias pipep
# @flag -I
# @flag -O
# @flag -o
# @option -t <target-pane>
# @arg shell-command
pipe-pane() {
    :;
}
# }} tmux pipe-pane

# {{ tmux previous-layout
# @cmd
# @alias prevl
# @option -t <target-window>
previous-layout() {
    :;
}
# }} tmux previous-layout

# {{ tmux previous-window
# @cmd
# @alias prev
# @flag -a
# @option -t <target-session>
previous-window() {
    :;
}
# }} tmux previous-window

# {{ tmux refresh-client
# @cmd
# @alias refresh
# @flag -c
# @flag -D
# @flag -l
# @flag -L
# @flag -R
# @flag -S
# @flag -U
# @option -A <pane:state>
# @option -B <name:what:format>
# @option -C <XxY>
# @option -f <flags>
# @option -t <target-client>
# @arg adjustment
refresh-client() {
    :;
}
# }} tmux refresh-client

# {{ tmux rename-session
# @cmd
# @alias rename
# @option -t <target-session>
# @arg new-name
rename-session() {
    :;
}
# }} tmux rename-session

# {{ tmux rename-window
# @cmd
# @alias renamew
# @option -t <target-window>
# @arg new-name
rename-window() {
    :;
}
# }} tmux rename-window

# {{ tmux resize-pane
# @cmd
# @alias resizep
# @flag -D
# @flag -L
# @flag -M
# @flag -R
# @flag -T
# @flag -U
# @flag -Z
# @option -x <width>
# @option -y <height>
# @option -t <target-pane>
# @arg adjustment
resize-pane() {
    :;
}
# }} tmux resize-pane

# {{ tmux resize-window
# @cmd
# @alias resizew
# @flag -a
# @flag -A
# @flag -D
# @flag -L
# @flag -R
# @flag -U
# @option -x <width>
# @option -y <height>
# @option -t <target-window>
# @arg adjustment
resize-window() {
    :;
}
# }} tmux resize-window

# {{ tmux respawn-pane
# @cmd
# @alias respawnp
# @flag -k
# @option -c <start-directory>
# @option -e <environment>
# @option -t <target-pane>
# @arg shell-command
respawn-pane() {
    :;
}
# }} tmux respawn-pane

# {{ tmux respawn-window
# @cmd
# @alias respawnw
# @flag -k
# @option -c <start-directory>
# @option -e <environment>
# @option -t <target-window>
# @arg shell-command
respawn-window() {
    :;
}
# }} tmux respawn-window

# {{ tmux rotate-window
# @cmd
# @alias rotatew
# @flag -D
# @flag -U
# @flag -Z
# @option -t <target-window>
rotate-window() {
    :;
}
# }} tmux rotate-window

# {{ tmux run-shell
# @cmd
# @alias run
# @flag -b
# @flag -C
# @option -d <delay>
# @option -t <target-pane>
# @arg shell-command
run-shell() {
    :;
}
# }} tmux run-shell

# {{ tmux save-buffer
# @cmd
# @alias saveb
# @flag -a
# @option -b <buffer-name>
# @arg path
save-buffer() {
    :;
}
# }} tmux save-buffer

# {{ tmux select-layout
# @cmd
# @alias selectl
# @flag -E
# @flag -n
# @flag -o
# @flag -p
# @option -t <target-pane>
# @arg layout-name
select-layout() {
    :;
}
# }} tmux select-layout

# {{ tmux select-pane
# @cmd
# @alias selectp
# @flag -D
# @flag -d
# @flag -e
# @flag -L
# @flag -l
# @flag -M
# @flag -m
# @flag -R
# @flag -U
# @flag -Z
# @option -T <title>
# @option -t <target-pane>
select-pane() {
    :;
}
# }} tmux select-pane

# {{ tmux select-window
# @cmd
# @alias selectw
# @flag -l
# @flag -n
# @flag -p
# @flag -T
# @option -t <target-window>
select-window() {
    :;
}
# }} tmux select-window

# {{ tmux send-keys
# @cmd
# @alias send
# @flag -F
# @flag -H
# @flag -l
# @flag -M
# @flag -R
# @flag -X
# @option -N <repeat-count>
# @option -t <target-pane>
# @arg key*
send-keys() {
    :;
}
# }} tmux send-keys

# {{ tmux send-prefix
# @cmd
# @flag -2
# @option -t <target-pane>
send-prefix() {
    :;
}
# }} tmux send-prefix

# {{ tmux server-access
# @cmd
# @flag -a
# @flag -d
# @flag -l
# @flag -r
# @flag -w
# @option -t <target-pane>
# @arg user
server-access() {
    :;
}
# }} tmux server-access

# {{ tmux set-buffer
# @cmd
# @alias setb
# @flag -a
# @flag -w
# @option -b <buffer-name>
# @option -n <new-buffer-name>
# @option -t <target-client>
# @arg data
set-buffer() {
    :;
}
# }} tmux set-buffer

# {{ tmux set-environment
# @cmd
# @alias setenv
# @flag -F
# @flag -h
# @flag -g
# @flag -r
# @flag -u
# @option -t <target-session>
# @arg name
# @arg value
set-environment() {
    :;
}
# }} tmux set-environment

# {{ tmux set-hook
# @cmd
# @flag -a
# @flag -g
# @flag -p
# @flag -R
# @flag -u
# @flag -w
# @option -t <target-pane>
# @arg hook
# @arg command
set-hook() {
    :;
}
# }} tmux set-hook

# {{ tmux set-option
# @cmd
# @alias set
# @flag -a
# @flag -F
# @flag -g
# @flag -o
# @flag -p
# @flag -q
# @flag -s
# @flag -u
# @flag -U
# @flag -w
# @option -t <target-pane>
# @arg value
set-option() {
    :;
}
# }} tmux set-option

# {{ tmux set-window-option
# @cmd
# @alias setw
# @flag -a
# @flag -F
# @flag -g
# @flag -o
# @flag -q
# @flag -u
# @option -t <target-window>
# @arg value
set-window-option() {
    :;
}
# }} tmux set-window-option

# {{ tmux show-buffer
# @cmd
# @alias showb
# @option -b <buffer-name>
show-buffer() {
    :;
}
# }} tmux show-buffer

# {{ tmux show-environment
# @cmd
# @alias showenv
# @flag -h
# @flag -g
# @flag -s
# @option -t <target-session>
# @arg name
show-environment() {
    :;
}
# }} tmux show-environment

# {{ tmux show-hooks
# @cmd
# @flag -g
# @flag -p
# @flag -w
# @option -t <target-pane>
show-hooks() {
    :;
}
# }} tmux show-hooks

# {{ tmux show-messages
# @cmd
# @alias showmsgs
# @flag -J
# @flag -T
# @option -t <target-client>
show-messages() {
    :;
}
# }} tmux show-messages

# {{ tmux show-options
# @cmd
# @alias show
# @flag -A
# @flag -g
# @flag -H
# @flag -p
# @flag -q
# @flag -s
# @flag -v
# @flag -w
# @option -t <target-pane>
show-options() {
    :;
}
# }} tmux show-options

# {{ tmux show-prompt-history
# @cmd
# @alias showphist
# @option -T <type>
show-prompt-history() {
    :;
}
# }} tmux show-prompt-history

# {{ tmux show-window-options
# @cmd
# @alias showw
# @flag -g
# @flag -v
# @option -t <target-window>
show-window-options() {
    :;
}
# }} tmux show-window-options

# {{ tmux source-file
# @cmd
# @alias source
# @flag -F
# @flag -n
# @flag -q
# @flag -v
# @arg path*
source-file() {
    :;
}
# }} tmux source-file

# {{ tmux split-window
# @cmd
# @alias splitw
# @flag -b
# @flag -d
# @flag -f
# @flag -h
# @flag -I
# @flag -P
# @flag -v
# @flag -Z
# @option -c <start-directory>
# @option -e <environment>
# @option -F <format>
# @option -l <size>
# @option -t <target-pane>
# @arg shell-command
split-window() {
    :;
}
# }} tmux split-window

# {{ tmux start-server
# @cmd
# @alias start
start-server() {
    :;
}
# }} tmux start-server

# {{ tmux suspend-client
# @cmd
# @alias suspendc
# @option -t <target-client>
suspend-client() {
    :;
}
# }} tmux suspend-client

# {{ tmux swap-pane
# @cmd
# @alias swapp
# @flag -d
# @flag -D
# @flag -U
# @flag -Z
# @option -s <src-pane>
# @option -t <dst-pane>
swap-pane() {
    :;
}
# }} tmux swap-pane

# {{ tmux swap-window
# @cmd
# @alias swapw
# @flag -d
# @option -s <src-window>
# @option -t <dst-window>
swap-window() {
    :;
}
# }} tmux swap-window

# {{ tmux switch-client
# @cmd
# @alias switchc
# @flag -E
# @flag -l
# @flag -n
# @flag -p
# @flag -r
# @flag -Z
# @option -c <target-client>
# @option -t <target-session>
# @option -T <key-table>
switch-client() {
    :;
}
# }} tmux switch-client

# {{ tmux unbind-key
# @cmd
# @alias unbind
# @flag -a
# @flag -n
# @flag -q
# @option -T <key-table>
# @arg key
unbind-key() {
    :;
}
# }} tmux unbind-key

# {{ tmux unlink-window
# @cmd
# @alias unlinkw
# @flag -k
# @option -t <target-window>
unlink-window() {
    :;
}
# }} tmux unlink-window

# {{ tmux wait-for
# @cmd
# @alias wait
# @flag -L
# @flag -S
# @flag -U
# @arg channel
wait-for() {
    :;
}
# }} tmux wait-for

_choice_command() {
    tmux list-commands | sed 's/^\(\S\+\)\( (\(\S\+\))\)\?\(.*\)$/\1\n\3/'
}

command eval "$(argc --argc-eval "$0" "$@")"