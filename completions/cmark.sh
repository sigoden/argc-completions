#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -t --to[html|man|xml|latex|commonmark] <FORMAT>  Specify output format.
# @option --width          Specify a column width to which to wrap the output.
# @flag --hardbreaks       Render soft breaks (newlines inside paragraphs in the CommonMark source) as hard line breaks in the target format.
# @flag --nobreaks         Render soft breaks as spaces.
# @flag --sourcepos        Include source position attribute.
# @flag --validate-utf8    Validate UTF-8, replacing illegal sequences with U+FFFD.
# @flag --smart            Use smart punctuation.
# @flag --safe             Omit raw HTML and potentially dangerous URLs (default).
# @flag --unsafe           Render raw HTML or potentially dangerous URLs, overriding the default (--safe) behavior.
# @flag --help             Print usage information.
# @flag --version          Print version.
# @arg file-md <file:.md>

command eval "$(argc --argc-eval "$0" "$@")"