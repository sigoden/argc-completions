#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose                              Be verbose, includes emitting access logs
# @option --index                                 The name of a directory index file to serve, like "index.html"
# @flag --spa                                     Activate SPA (Single Page Application) mode
# @option -p --port                               Port to use
# @option -i --interfaces                         Interface to listen on
# @option -a --auth                               Set authentication.
# @option --route-prefix <ROUTE_PREFIX>           Use a specific route prefix
# @flag --random-route                            Generate a random 6-hexdigit route
# @flag -P --no-symlinks                          Hide symlinks in listing and prevent them from being followed
# @flag -H --hidden                               Show hidden files
# @option -c --color-scheme[squirrel|archlinux|zenburn|monokai] <COLOR_SCHEME>  Default color scheme
# @option -d --color-scheme-dark[squirrel|archlinux|zenburn|monokai] <COLOR_SCHEME_DARK>  Default color scheme
# @flag -q --qrcode                               Enable QR code display
# @option -u --upload-files <ALLOWED_UPLOAD_DIR>  Enable file uploading (and optionally specify for which directory)
# @flag -U --mkdir                                Enable creating directories
# @option -m --media-type[image|audio|video] <MEDIA_TYPE>  Specify uploadable media types
# @option -M --raw-media-type <MEDIA_TYPE_RAW>    Directly specify the uploadable media type expression
# @flag -o --overwrite-files                      Enable overriding existing files during file upload
# @flag -r --enable-tar                           Enable uncompressed tar archive generation
# @flag -g --enable-tar-gz                        Enable gz-compressed tar archive generation
# @flag -z --enable-zip                           Enable zip archive generation
# @flag -D --dirs-first                           List directories first
# @option -t --title                              Shown instead of host in page title and heading
# @option --header                                Set custom header for responses
# @flag -l --show-symlink-info                    Visualize symlinks in directory listing
# @flag -F --hide-version-footer                  Hide version footer
# @flag --hide-theme-selector                     Hide theme selector
# @flag -W --show-wget-footer                     If enabled, display a wget command to recursively download the current directory
# @option --print-completions[bash|elvish|fish|powershell|zsh] <shell>  Generate completion file for a shell
# @flag --print-manpage                           Generate man page
# @option --tls-cert <TLS_CERT>                   TLS certificate to use
# @option --tls-key <TLS_KEY>                     TLS private key to use
# @flag --readme                                  Enable README.md rendering in directories
# @flag -h --help                                 Print help (see a summary with '-h')
# @flag -V --version                              Print version
# @arg path                                       Which path to serve

command eval "$(argc --argc-eval "$0" "$@")"