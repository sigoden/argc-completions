#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                           output the version number
# @flag -F --force                             Used by `publish` and `export` - bypasses schema testing.
# @option -t --theme <theme name>              Specify theme used by `export` and `serve` or specify a path starting with .
# @option -f --format <file type extension>    Used by `export`.
# @option -r --resume <resume filename>        path to the resume in json format.
# @option -p --port <port>                     Used by `serve` (default: 4000) (default: 4000)
# @flag -s --silent                            Used by `serve` to tell it if open browser auto or not.
# @option -d --dir <path>                      Used by `serve` to indicate a public directory path.
# @option --schema <relativePath>              Used by `validate` to validate against a custom schema.
# @flag -h --help                              display help for command

# {{ resume init
# @cmd Initialize a resume.json file
# @flag -h --help    display help for command
init() {
    :;
}
# }} resume init

# {{ resume validate
# @cmd Validate your resume's schema
# @flag -h --help    display help for command
validate() {
    :;
}
# }} resume validate

# {{ resume export
# @cmd Export locally to .html or .pdf.
# @flag -h --help    display help for command
# @arg filename
export() {
    :;
}
# }} resume export

# {{ resume serve
# @cmd Serve resume at http://localhost:4000/
# @flag -h --help    display help for command
serve() {
    :;
}
# }} resume serve

command eval "$(argc --argc-eval "$0" "$@")"