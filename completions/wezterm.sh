#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -n --skip-config                 Skip loading wezterm.lua
# @option --config-file <CONFIG_FILE>    Specify the configuration file to use, overrides the normal configuration file resolution
# @option --config <name=value>          Override specific configuration values
# @flag -h --help                        Print help
# @flag -V --version                     Print version

# {{ wezterm start
# @cmd Start the GUI, optionally running an alternative program [aliases: -e]
# @flag --no-auto-connect          If true, do not connect to domains marked as connect_automatically in your wezterm configuration file
# @flag --always-new-process       If enabled, don't try to ask an existing wezterm GUI instance to start the command.
# @option --cwd <dir>              Specify the current working directory for the initially spawned program
# @option --class                  Override the default windowing system class.
# @option --workspace              Override the default workspace with the provided name.
# @option --position               Override the position for the initial window launched by this process.
# @option --domain                 Name of the multiplexer domain section from the configuration to which you'd like to connect.
# @flag --attach                   When used with --domain, if the domain already has running panes, wezterm will simply attach and will NOT spawn the specified PROG.
# @flag -h --help                  Print help (see a summary with '-h')
# @arg prog~[`_module_os_exec`]    Instead of executing your shell, run PROG.
start() {
    :;
}
# }} wezterm start

# {{ wezterm ssh
# @cmd Establish an ssh session
# @option -o --ssh-option <name=value>    Override specific SSH configuration options.
# @flag -v                                Enable verbose ssh protocol tracing.
# @option --class                         Override the default windowing system class.
# @option --position                      Override the position for the initial window launched by this process.
# @flag -h --help                         Print help (see a summary with '-h')
# @arg user_at_host_and_port![`_module_ssh_host`]  Specifies the remote system using the form: `[username@]host[:port]`.
# @arg prog~[`_module_os_exec`]           Instead of executing your shell, run PROG.
ssh() {
    :;
}
# }} wezterm ssh

# {{ wezterm serial
# @cmd Open a serial port
# @option --baud        Set the baud rate.
# @option --class       Override the default windowing system class.
# @option --position    Override the position for the initial window launched by this process.
# @flag -h --help       Print help (see a summary with '-h')
# @arg port!            Specifies the serial device name.
serial() {
    :;
}
# }} wezterm serial

# {{ wezterm connect
# @cmd Connect to wezterm multiplexer
# @option --class                  Override the default windowing system class.
# @option --workspace              Override the default workspace with the provided name.
# @option --position               Override the position for the initial window launched by this process.
# @flag -h --help                  Print help (see a summary with '-h')
# @arg domain_name!                Name of the multiplexer domain section from the configuration to which you'd like to connect
# @arg prog~[`_module_os_exec`]    Instead of executing your shell, run PROG.
connect() {
    :;
}
# }} wezterm connect

# {{ wezterm ls-fonts
# @cmd Display information about fonts
# @flag --list-system        Whether to list all fonts available to the system
# @option --text             Explain which fonts are used to render the supplied text string
# @option --codepoints       Explain which fonts are used to render the specified unicode code point sequence.
# @flag --rasterize-ascii    Show rasterized glyphs for the text in --text or --codepoints using ascii blocks
# @flag -h --help            Print help
ls-fonts() {
    :;
}
# }} wezterm ls-fonts

# {{ wezterm show-keys
# @cmd Show key assignments
# @flag --lua                        Show the keys as lua config statements
# @option --key-table <KEY_TABLE>    In lua mode, show only the named key table
# @flag -h --help                    Print help
show-keys() {
    :;
}
# }} wezterm show-keys

# {{ wezterm cli
# @cmd Interact with experimental mux server
# @flag --no-auto-start    Don't automatically start the server
# @flag --prefer-mux       Prefer connecting to a background mux server.
# @option --class          When connecting to a gui instance, if you started the gui with `--class SOMETHING`, you should also pass that same value here in order for the client to find the correct gui instance
# @flag -h --help          Print help
cli() {
    :;
}

# {{{ wezterm cli list
# @cmd list windows, tabs and panes
# @option --format    Controls the output format.
# @flag -h --help     Print help
cli::list() {
    :;
}
# }}} wezterm cli list

# {{{ wezterm cli list-clients
# @cmd list clients
# @option --format    Controls the output format.
# @flag -h --help     Print help
cli::list-clients() {
    :;
}
# }}} wezterm cli list-clients

# {{{ wezterm cli proxy
# @cmd start rpc proxy pipe
# @flag -h --help    Print help
cli::proxy() {
    :;
}
# }}} wezterm cli proxy

# {{{ wezterm cli tlscreds
# @cmd obtain tls credentials
# @flag --pem        Output a PEM file encoded copy of the credentials.
# @flag -h --help    Print help (see a summary with '-h')
cli::tlscreds() {
    :;
}
# }}} wezterm cli tlscreds

# {{{ wezterm cli move-pane-to-new-tab
# @cmd Move a pane into a new tab
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the pane that should be moved.
# @option --window-id[`_choice_window`] <WINDOW_ID>  Specify the window into which the new tab will be created.
# @flag --new-window                             Create tab in a new window, rather than the window currently containing the pane
# @option --workspace                            If creating a new window, override the default workspace name with the provided name.
# @flag -h --help                                Print help
cli::move-pane-to-new-tab() {
    :;
}
# }}} wezterm cli move-pane-to-new-tab

# {{{ wezterm cli split-pane
# @cmd split the current pane.
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the pane that should be split.
# @flag --horizontal                             Equivalent to `--right`.
# @flag --left                                   Split horizontally, with the new pane on the left
# @flag --right                                  Split horizontally, with the new pane on the right
# @flag --top                                    Split vertically, with the new pane on the top
# @flag --bottom                                 Split vertically, with the new pane on the bottom
# @flag --top-level                              Rather than splitting the active pane, split the entire window
# @option --cells                                The number of cells that the new split should have.
# @option --percent                              Specify the number of cells that the new split should have, expressed as a percentage of the available space
# @option --cwd <dir>                            Specify the current working directory for the initially spawned program
# @option --move-pane-id <MOVE_PANE_ID>          Instead of spawning a new command, move the specified pane into the newly created split
# @flag -h --help                                Print help
# @arg prog~[`_module_os_exec`]                  Instead of executing your shell, run PROG.
cli::split-pane() {
    :;
}
# }}} wezterm cli split-pane

# {{{ wezterm cli spawn
# @cmd Spawn a command into a new window or tab Outputs the pane-id for the newly created pane on success
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the current pane.
# @option --domain-name <DOMAIN_NAME>
# @option --window-id[`_choice_window`] <WINDOW_ID>  Specify the window into which to spawn a tab.
# @flag --new-window                             Spawn into a new window, rather than a new tab
# @option --cwd <dir>                            Specify the current working directory for the initially spawned program
# @option --workspace                            When creating a new window, override the default workspace name with the provided name.
# @flag -h --help                                Print help
# @arg prog~[`_module_os_exec`]                  Instead of executing your shell, run PROG.
cli::spawn() {
    :;
}
# }}} wezterm cli spawn

# {{{ wezterm cli send-text
# @cmd Send text to a pane as though it were pasted.
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the target pane.
# @flag --no-paste                               Send the text directly, rather than as a bracketed paste
# @flag -h --help                                Print help
# @arg text                                      The text to send.
cli::send-text() {
    :;
}
# }}} wezterm cli send-text

# {{{ wezterm cli get-text
# @cmd Retrieves the textual content of a pane and output it to stdout
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the target pane.
# @option --start-line <START_LINE>              The starting line number.
# @option --end-line <END_LINE>                  The ending line number.
# @flag --escapes                                Include escape sequences that color and style the text.
# @flag -h --help                                Print help
cli::get-text() {
    :;
}
# }}} wezterm cli get-text

# {{{ wezterm cli activate-pane-direction
# @cmd Activate an adjacent pane in the specified direction
# @option --pane-id[`_choice_pane`] <PANE_ID>      Specify the current pane.
# @flag -h --help                                  Print help
# @arg direction![Up|Down|Left|Right|Next|Prev]    The direction to switch to
cli::activate-pane-direction() {
    :;
}
# }}} wezterm cli activate-pane-direction

# {{{ wezterm cli get-pane-direction
# @cmd Determine the adjacent pane in the specified direction
# @option --pane-id[`_choice_pane`] <PANE_ID>      Specify the current pane.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg direction![Up|Down|Left|Right|Next|Prev]    The direction to consider
cli::get-pane-direction() {
    :;
}
# }}} wezterm cli get-pane-direction

# {{{ wezterm cli kill-pane
# @cmd Kill a pane
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the target pane.
# @flag -h --help                                Print help
cli::kill-pane() {
    :;
}
# }}} wezterm cli kill-pane

# {{{ wezterm cli activate-pane
# @cmd Activate (focus) a pane
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the target pane.
# @flag -h --help                                Print help
cli::activate-pane() {
    :;
}
# }}} wezterm cli activate-pane

# {{{ wezterm cli adjust-pane-size
# @cmd Adjust the size of a pane directionally
# @option --pane-id[`_choice_pane`] <PANE_ID>      Specify the target pane.
# @option --amount                                 Specify the number of cells to resize by, defaults to 1
# @flag -h --help                                  Print help
# @arg direction![Up|Down|Left|Right|Next|Prev]    Specify the direction to resize in
cli::adjust-pane-size() {
    :;
}
# }}} wezterm cli adjust-pane-size

# {{{ wezterm cli activate-tab
# @cmd Activate a tab
# @option --tab-id[`_choice_tab`] <TAB_ID>       Specify the target tab by its id
# @option --tab-index <TAB_INDEX>                Specify the target tab by its index within the window that holds the current pane.
# @option --tab-relative <TAB_RELATIVE>          Specify the target tab by its relative offset.
# @flag --no-wrap                                When used with tab-relative, prevents wrapping around and will instead clamp to the left-most when moving left or right-most when moving right
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the current pane.
# @flag -h --help                                Print help (see a summary with '-h')
cli::activate-tab() {
    :;
}
# }}} wezterm cli activate-tab

# {{{ wezterm cli set-tab-title
# @cmd Change the title of a tab
# @option --tab-id[`_choice_tab`] <TAB_ID>       Specify the target tab by its id
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the current pane.
# @flag -h --help                                Print help (see a summary with '-h')
# @arg title!                                    The new title for the tab
cli::set-tab-title() {
    :;
}
# }}} wezterm cli set-tab-title

# {{{ wezterm cli set-window-title
# @cmd Change the title of a window
# @option --window-id[`_choice_window`] <WINDOW_ID>  Specify the target window by its id
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the current pane.
# @flag -h --help                                Print help (see a summary with '-h')
# @arg title!                                    The new title for the window
cli::set-window-title() {
    :;
}
# }}} wezterm cli set-window-title

# {{{ wezterm cli rename-workspace
# @cmd Rename a workspace
# @option --workspace                            Specify the workspace to rename
# @option --pane-id[`_choice_pane`] <PANE_ID>    Specify the current pane.
# @flag -h --help                                Print help (see a summary with '-h')
# @arg new_workspace!                            The new name for the workspace
cli::rename-workspace() {
    :;
}
# }}} wezterm cli rename-workspace
# }} wezterm cli

# {{ wezterm imgcat
# @cmd Output an image to the terminal
# @option --width                     Specify the display width; defaults to "auto" which automatically selects an appropriate size.
# @option --height                    Specify the display height; defaults to "auto" which automatically selects an appropriate size.
# @flag --no-preserve-aspect-ratio    Do not respect the aspect ratio.
# @flag -h --help                     Print help
# @arg file_name                      The name of the image file to be displayed.
imgcat() {
    :;
}
# }} wezterm imgcat

# {{ wezterm set-working-directory
# @cmd Advise the terminal of the current working directory by emitting an OSC 7 escape sequence
# @flag -h --help    Print help
# @arg dir!          The directory to specify.
# @arg host          The hostname to use in the constructed file:// URL.
set-working-directory() {
    :;
}
# }} wezterm set-working-directory

# {{ wezterm record
# @cmd Record a terminal session as an asciicast
# @flag -h --help    Print help
# @arg prog~[`_module_os_exec`]
record() {
    :;
}
# }} wezterm record

# {{ wezterm replay
# @cmd Replay an asciicast terminal session
# @flag --explain         Explain what is being sent/received
# @flag --explain-only    Don't replay, just show the explanation
# @flag --cat             Just emit raw escape sequences all at once, with no timing information
# @flag -h --help         Print help
# @arg cast_file!
replay() {
    :;
}
# }} wezterm replay

# {{ wezterm shell-completion
# @cmd Generate shell completion information
# @option --shell[bash|elvish|fish|power-shell|zsh|fig]  Which shell to generate for
# @flag -h --help    Print help
# @arg shell![bash|elvish|fish|power-shell|zsh|fig]
shell-completion() {
    :;
}
# }} wezterm shell-completion

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_pane() {
    wezterm cli list --format json | \
    yq '.[] | .pane_id + "	" + .title'
}

_choice_window() {
    wezterm cli list --format json | \
    yq 'unique_by(.window_id) | .[] | .window_id + "	" + .window_title'
}

_choice_tab() {
    wezterm cli list --format json | \
    yq '.[] | .tab_id + "	" + .window_title'
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
    fi
}

_module_ssh_host() {
    cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
}

command eval "$(argc --argc-eval "$0" "$@")"