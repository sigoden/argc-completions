#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ mdbook init
# @cmd Creates the boilerplate structure and files for a new book
# @flag --theme                          Copies the default theme into your source folder
# @flag --force                          Skips confirmation prompts
# @option --title <title>                Sets the book title
# @option --ignore[none|git] <ignore>    Creates a VCS ignore file (i.e.
# @flag -h --help                        Print help
# @flag -V --version                     Print version
# @arg dir                               Directory to create the book in (Defaults to the current directory when omitted)
init() {
    :;
}
# }} mdbook init

# {{ mdbook build
# @cmd Builds a book from its markdown files
# @option -d --dest-dir <dest-dir>    Output directory for the book Relative paths are interpreted relative to the book's root directory.
# @flag -o --open                     Opens the compiled book in a web browser
# @flag -h --help                     Print help
# @flag -V --version                  Print version
# @arg dir                            Root directory for the book (Defaults to the current directory when omitted)
build() {
    :;
}
# }} mdbook build

# {{ mdbook test
# @cmd Tests that a book's Rust code samples compile
# @option -d --dest-dir <dest-dir>    Output directory for the book Relative paths are interpreted relative to the book's root directory.
# @option -c --chapter <chapter>
# @option -L --library-path <dir>     A comma-separated list of directories to add to the crate search path when building tests
# @flag -h --help                     Print help
# @flag -V --version                  Print version
# @arg dir                            Root directory for the book (Defaults to the current directory when omitted)
test() {
    :;
}
# }} mdbook test

# {{ mdbook clean
# @cmd Deletes a built book
# @option -d --dest-dir <dest-dir>    Output directory for the book Relative paths are interpreted relative to the book's root directory.
# @flag -h --help                     Print help
# @flag -V --version                  Print version
# @arg dir                            Root directory for the book (Defaults to the current directory when omitted)
clean() {
    :;
}
# }} mdbook clean

# {{ mdbook completions
# @cmd Generate shell completions for your shell to stdout
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @arg shell![bash|elvish|fish|powershell|zsh]    the shell to generate completions for
completions() {
    :;
}
# }} mdbook completions

# {{ mdbook watch
# @cmd Watches a book's files and rebuilds it on changes
# @option -d --dest-dir <dest-dir>    Output directory for the book Relative paths are interpreted relative to the book's root directory.
# @flag -o --open                     Opens the compiled book in a web browser
# @flag -h --help                     Print help
# @flag -V --version                  Print version
# @arg dir                            Root directory for the book (Defaults to the current directory when omitted)
watch() {
    :;
}
# }} mdbook watch

# {{ mdbook serve
# @cmd Serves a book at http://localhost:3000, and rebuilds it on changes
# @option -d --dest-dir <dest-dir>    Output directory for the book Relative paths are interpreted relative to the book's root directory.
# @option -n --hostname <hostname>    Hostname to listen on for HTTP connections [default: localhost]
# @option -p --port <port>            Port to use for HTTP connections [default: 3000]
# @flag -o --open                     Opens the compiled book in a web browser
# @flag -h --help                     Print help
# @flag -V --version                  Print version
# @arg dir                            Root directory for the book (Defaults to the current directory when omitted)
serve() {
    :;
}
# }} mdbook serve

command eval "$(argc --argc-eval "$0" "$@")"