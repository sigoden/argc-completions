#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --export-pdf                        Export the presentation as a PDF rather than displaying it
# @flag --generate-config-file-schema          Generate a JSON schema for the configuration file
# @flag -p --present                           Use presentation mode
# @option -t --theme                           The theme to use
# @flag --list-themes                          List all supported themes
# @flag --acknowledgements                     Display acknowledgements
# @option --image-protocol <IMAGE_PROTOCOL>    The image protocol to use
# @flag --validate-overflows                   Validate that the presentation does not overflow the terminal screen
# @flag -x --enable-snippet-execution          Enable code snippet execution
# @option -c --config-file <CONFIG_FILE>       The path to the configuration file
# @flag -h --help                              Print help (see a summary with '-h')
# @flag -V --version                           Print version
# @arg path                                    The path to the markdown file that contains the presentation

command eval "$(argc --argc-eval "$0" "$@")"