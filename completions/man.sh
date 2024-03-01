#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C --config-file <FILE>        use this user configuration file
# @flag -d --debug                       emit debugging messages
# @flag -D --default                     reset all options to their default values
# @option --warnings                     enable warnings from groff
# @flag -f --whatis                      equivalent to whatis
# @flag -k --apropos                     equivalent to apropos
# @flag -K --global-apropos              search for text in all pages
# @flag -l --local-file                  interpret PAGE argument(s) as local filename(s)
# @flag -w                               print physical location of man page(s)
# @flag --where                          print physical location of man page(s)
# @flag --path                           print physical location of man page(s)
# @flag --location                       print physical location of man page(s)
# @flag -W                               print physical location of cat file(s)
# @flag --where-cat                      print physical location of cat file(s)
# @flag --location-cat                   print physical location of cat file(s)
# @flag -c --catman                      used by catman to reformat out of date cat pages
# @option -R --recode <ENCODING>         output source page encoded in ENCODING
# @option -L --locale                    define the locale for this particular man search
# @option -m --systems <SYSTEM>          use manual pages from other systems
# @option -M --manpath <PATH>            set search path for manual pages to PATH
# @option -S <LIST>                      use colon separated section list
# @option -s <LIST>                      use colon separated section list
# @option --sections <LIST>              use colon separated section list
# @option -e --extension                 limit search to extension type EXTENSION
# @flag -i --ignore-case                 look for pages case-insensitively (default)
# @flag -I --match-case                  look for pages case-sensitively
# @flag --regex                          show all pages matching regex
# @flag --wildcard                       show all pages matching wildcard
# @flag --names-only                     make --regex and --wildcard match page names only, not descriptions
# @flag -a --all                         find all matching manual pages
# @flag -u --update                      force a cache consistency check
# @flag --no-subpages                    don't try subpages, e.g. 'man foo bar' => 'man foo-bar'
# @option -P --pager <PATH>              use program PAGER to display output
# @option -r --prompt <STRING>           provide the `less' pager with a prompt
# @flag -7 --ascii                       display ASCII translation of certain latin1 chars
# @option -E --encoding                  use selected output encoding
# @flag --no-hyphenation                 turn off hyphenation
# @flag --nh                             turn off hyphenation
# @flag --no-justification               turn off justification
# @flag --nj                             turn off justification
# @option -p --preprocessor <STRING>     STRING indicates which preprocessors to run: e - [n]eqn, p - pic, t - tbl,
# @flag -t --troff                       use groff to format pages
# @option -T --troff-device <DEVICE>     use groff with selected device
# @option -H --html <BROWSER>            use BROWSER to display HTML output
# @option -X --gxditview <RESOLUTION>    use groff and display through gxditview (X11): -X = -TX75, -X100 = -TX100, -X100-12 = -TX100-12
# @flag -Z --ditroff                     use groff and force it to produce ditroff
# @flag -? --help                        give this help list
# @flag --usage                          give a short usage message
# @flag -V --version                     print program version
# @arg pages*[`_choice_page`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_page() {
    if _argc_util_has_path_prefix || [[ -n $argc_local_file ]]; then
        _argc_util_comp_path
    else
        len=${#argc__positionals[@]}
        if [[ $len -gt 1 ]]; then
            prefix=$(printf "%s-" "${argc__positionals[@]:0:$((len-1))}")
        else
            prefix=""
        fi
        search="^$prefix$ARGC_CWORD"
        man -k "$search" | sed 's/^'$prefix'\(\S\+\) \?(.*) \+- \(.*\)$/\1\t\2/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"