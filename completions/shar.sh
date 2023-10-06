#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -p --intermix-type                     specify compression for input files.
# @option -C --compactor[`_module_os_command`] <program>  specify compaction (compression) program.
# @option -g --level-of-compression <level>    pass LEVEL for compression.
# @flag -j --bzip2                             bzip2 and uuencode files.
# @flag -z --gzip                              gzip and uuencode files.
# @flag -Z --compress                          compress and uuencode files.
# @flag --level-for-gzip                       This is an alias for the --level-of-compression option.
# @option -b --bits-per-code <bits>            pass bits (default 12) to compress.
# @flag -M --mixed-uuencode                    decide uuencoding for each file.
# @flag -B --uuencode                          treat all files as binary.
# @flag -T --text-files                        treat all files as text.
# @option -o --output-prefix <prefix>          print output to file PREFIX.nn.
# @option -l --whole-size-limit <size>         split archive, not files, to size.
# @option -L --split-size-limit <size>         split archive or files to size.
# @option -I --input-file-list <file>          read file list from a file.
# @flag -S --stdin-file-list                   read file list from standard input.
# @option -n --archive-name <name>             use name to document the archive.
# @option -s --submitter <who@where>           override the submitter name.
# @flag -a --net-headers                       output Submitted-by: & Archive-name: headers.
# @flag -c --cut-mark                          start the shar with a cut line.
# @flag -t --translate                         translate messages in the script.
# @flag --no-character-count                   do not use `wc -c' to check size.
# @flag -D --no-md5-digest                     do not use md5sum digest to verify.
# @flag -F --force-prefix                      apply the prefix character on every line.
# @option -d --here-delimiter <delim>          use delim to delimit the files.
# @flag -V --vanilla-operation                 produce very simple shars.
# @flag -P --no-piping                         use temporary files between programs.
# @flag -x --no-check-existing                 blindly overwrite existing files.
# @flag -X --query-user                        ask user before overwriting files.
# @flag -m --no-timestamp                      do not restore modification times.
# @flag -Q --quiet-unshar                      avoid verbose messages at unshar time.
# @flag -f --basename                          restore in one directory, despite hierarchy.
# @flag --no-i18n                              do not internationalize.
# @flag --print-text-domain-dir                print directory with shar messages.
# @flag -q --quiet                             do not output verbose messages.
# @flag --silent                               This is an alias for the --quiet option.
# @flag -h --help                              Display usage information and exit.
# @flag -! --more-help                         Pass the extended usage information through a pager.
# @option -R --save-opts <cfgfile>             Save the option state to cfgfile.
# @option -r <cfgfile>                         Load options from cfgfile.
# @option --load-opts <cfgfile>                Load options from cfgfile.
# @option --no-load-opts <cfgfile>             Load options from cfgfile.
# @option -v --version[v|c|n]                  Output version of program and exit.
# @arg file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"