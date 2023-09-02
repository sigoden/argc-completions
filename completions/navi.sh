#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --path                          Colon-separated list of paths containing .cheat files
# @flag --print                              Instead of executing a snippet, prints it to stdout
# @flag --best-match                         Returns the best match
# @flag --prevent-interpolation              Prevents variable interpolation
# @option --tldr                             Searches for cheatsheets using the tldr-pages repository
# @option --tag-rules <TAG_RULES>            [Experimental] Comma-separated list that acts as filter for tags.
# @option --cheatsh                          Searches for cheatsheets using the cheat.sh repository
# @option -q --query                         Prepopulates the search field
# @option --fzf-overrides <FZF_OVERRIDES>    Finder overrides for snippet selection
# @option --fzf-overrides-var <FZF_OVERRIDES_VAR>  Finder overrides for variable selection
# @option --finder[fzf|skim]                 Finder application to use
# @flag -h --help                            Print help
# @flag -V --version                         Print version

# {{ navi fn
# @cmd [Experimental] Calls internal functions
# @flag -h --help    Print help
# @arg func![url::open|welcome|widget::last_command|map::expand|temp]  Function name (example: "url::open")
# @arg args*         List of arguments (example: "https://google.com")
fn() {
    :;
}
# }} navi fn

# {{ navi repo
# @cmd Manages cheatsheet repositories
# @flag -h --help    Print help
repo() {
    :;
}

# {{{ navi repo add
# @cmd Imports cheatsheets from a repo
# @flag -h --help    Print help
# @arg uri!          A URI to a git repository containing .cheat files ("user/repo" will download cheats from github.com/user/repo)
repo::add() {
    :;
}
# }}} navi repo add

# {{{ navi repo browse
# @cmd Browses for featured cheatsheet repos
# @flag -h --help    Print help
repo::browse() {
    :;
}
# }}} navi repo browse
# }} navi repo

# {{ navi widget
# @cmd Outputs shell widget source code
# @flag -h --help                     Print help
# @arg shell[bash|zsh|fish|elvish]    [default: bash]
widget() {
    :;
}
# }} navi widget

# {{ navi info
# @cmd Shows info
# @flag -h --help    Print help
# @arg info![cheats-example|cheats-path|config-path|config-example]
info() {
    :;
}
# }} navi info

command eval "$(argc --argc-eval "$0" "$@")"