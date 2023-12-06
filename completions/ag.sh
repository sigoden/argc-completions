#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --ackmate                            Print results in AckMate-parseable format
# @option -A --after <LINES>                 Print lines after match (Default: 2)
# @option -B --before <LINES>                Print lines before match (Default: 2)
# @flag --break                              Print newlines between matches in different files (Enabled by default)
# @flag --nobreak                            Print newlines between matches in different files (Enabled by default)
# @flag -c --count                           Only print the number of matches in each file.
# @flag --color                              Print color codes in results (Enabled by default)
# @flag --nocolor                            Print color codes in results (Enabled by default)
# @flag --color-line-number                  Color codes for line numbers (Default: 1;33)
# @flag --color-match                        Color codes for result match numbers (Default: 30;43)
# @flag --color-path                         Color codes for path names (Default: 1;32)
# @flag --column                             Print column numbers in results
# @flag --filename                           Print file names (Enabled unless searching a single file)
# @flag --nofilename                         Print file names (Enabled unless searching a single file)
# @flag -H                                   Print file names before each file's matches (Enabled by default)
# @flag --heading                            Print file names before each file's matches (Enabled by default)
# @flag --noheading                          Print file names before each file's matches (Enabled by default)
# @option -C --context <LINES>               Print lines before and after matches (Default: 2)
# @flag --group                              Same as --[no]break --[no]heading
# @flag --nogroup                            Same as --[no]break --[no]heading
# @option -g --filename-pattern <PATTERN>    Print filenames matching PATTERN
# @flag -l --files-with-matches              Only print filenames that contain matches (don't print the matching lines)
# @flag -L --files-without-matches           Only print filenames that don't contain matches
# @flag --print-all-files                    Print headings for all files searched, even those that don't contain matches
# @flag --numbers                            Print line numbers.
# @flag --nonumbers                          Print line numbers.
# @flag -o --only-matching                   Prints only the matching part of the lines
# @flag --print-long-lines                   Print matches on very long lines (Default: >2k characters)
# @flag --passthrough                        When searching a stream, print all lines even if they don't match
# @flag --silent                             Suppress all log messages, including errors
# @flag --stats                              Print stats (files scanned, time taken, etc.)
# @flag --stats-only                         Print stats and nothing else.
# @flag --vimgrep                            Print results like vim's :vimgrep /pattern/g would (it reports every match on the line)
# @flag -0                                   Separate filenames with null (for 'xargs -0')
# @flag --null                               Separate filenames with null (for 'xargs -0')
# @flag --print0                             Separate filenames with null (for 'xargs -0')
# @flag -a --all-types                       Search all files (doesn't include hidden files or patterns from ignore files)
# @flag -D --debug                           Ridiculous debugging (probably not useful)
# @option --depth <NUM>                      Search up to NUM directories deep (Default: 25)
# @flag -f --follow                          Follow symlinks
# @flag -F --fixed-strings                   Alias for --literal for compatibility with grep
# @flag -G --file-search-regex               PATTERN Limit search to filenames matching PATTERN
# @flag --hidden                             Search hidden files (obeys .*ignore files)
# @flag -i --ignore-case                     Match case insensitively
# @option --ignore <PATTERN>                 Ignore files/directories matching PATTERN (literal file/directory names also allowed)
# @option --ignore-dir <NAME>                Alias for --ignore for compatibility with ack.
# @option -m --max-count[10|000] <NUM>       Skip the rest of a file after NUM matches
# @flag --one-device                         Don't follow links to other devices.
# @option -p --path-to-ignore <STRING>       Use .ignore file at STRING
# @flag -Q --literal                         Don't parse PATTERN as a regular expression
# @flag -s --case-sensitive                  Match case sensitively
# @flag -S --smart-case                      Match case insensitively unless PATTERN contains uppercase characters (Enabled by default)
# @flag --search-binary                      Search binary files for matches
# @flag -t --all-text                        Search all text files (doesn't include hidden files)
# @flag -u --unrestricted                    Search all files (ignore .ignore, .gitignore, etc.; searches binary and hidden files as well)
# @flag -U --skip-vcs-ignores                Ignore VCS ignore files (.gitignore, .hgignore; still obey .ignore)
# @flag -v --invert-match
# @flag -w --word-regexp                     Only match whole words
# @option -W --width <NUM>                   Truncate match lines after NUM characters
# @flag -z --search-zip                      Search contents of compressed (e.g., gzip) files
# @flag --actionscript                       Filetype: .as .mxml
# @flag --ada                                Filetype: .ada .adb .ads
# @flag --asciidoc                           Filetype: .adoc .ad .asc .asciidoc
# @flag --apl                                Filetype: .apl
# @flag --asm                                Filetype: .asm .s
# @flag --batch                              Filetype: .bat .cmd
# @flag --bitbake                            Filetype: .bb .bbappend .bbclass .inc
# @flag --bro                                Filetype: .bro .bif
# @flag --cc                                 Filetype: .c .h .xs
# @flag --cfmx                               Filetype: .cfc .cfm .cfml
# @flag --chpl                               Filetype: .chpl
# @flag --clojure                            Filetype: .clj .cljs .cljc .cljx
# @flag --coffee                             Filetype: .coffee .cjsx
# @flag --coq                                Filetype: .coq .g .v
# @flag --cpp                                Filetype: .cpp .cc .C .cxx .m .hpp .hh .h .H .hxx .tpp
# @flag --crystal                            Filetype: .cr .ecr
# @flag --csharp                             Filetype: .cs
# @flag --css                                Filetype: .css
# @flag --cython                             Filetype: .pyx .pxd .pxi
# @flag --delphi                             Filetype: .pas .int .dfm .nfm .dof .dpk .dpr .dproj .groupproj .bdsgroup .bdsproj
# @flag --dlang                              Filetype: .d .di
# @flag --dot                                Filetype: .dot .gv
# @flag --dts                                Filetype: .dts .dtsi
# @flag --ebuild                             Filetype: .ebuild .eclass
# @flag --elisp                              Filetype: .el
# @flag --elixir                             Filetype: .ex .eex .exs
# @flag --elm                                Filetype: .elm
# @flag --erlang                             Filetype: .erl .hrl
# @flag --factor                             Filetype: .factor
# @flag --fortran                            Filetype: .f .f77 .f90 .f95 .f03 .for .ftn .fpp
# @flag --fsharp                             Filetype: .fs .fsi .fsx
# @flag --gettext                            Filetype: .po .pot .mo
# @flag --glsl                               Filetype: .vert .tesc .tese .geom .frag .comp
# @flag --go                                 Filetype: .go
# @flag --groovy                             Filetype: .groovy .gtmpl .gpp .grunit .gradle
# @flag --haml                               Filetype: .haml
# @flag --handlebars                         Filetype: .hbs
# @flag --haskell                            Filetype: .hs .hsig .lhs
# @flag --haxe                               Filetype: .hx
# @flag --hh                                 Filetype: .h
# @flag --html                               Filetype: .htm .html .shtml .xhtml
# @flag --idris                              Filetype: .idr .ipkg .lidr
# @flag --ini                                Filetype: .ini
# @flag --ipython                            Filetype: .ipynb
# @flag --isabelle                           Filetype: .thy
# @flag --j                                  Filetype: .ijs
# @flag --jade                               Filetype: .jade
# @flag --java                               Filetype: .java .properties
# @flag --jinja2                             Filetype: .j2
# @flag --js                                 Filetype: .es6 .js .jsx .vue
# @flag --json                               Filetype: .json
# @flag --jsp                                Filetype: .jsp .jspx .jhtm .jhtml .jspf .tag .tagf
# @flag --julia                              Filetype: .jl
# @flag --kotlin                             Filetype: .kt
# @flag --less                               Filetype: .less
# @flag --liquid                             Filetype: .liquid
# @flag --lisp                               Filetype: .lisp .lsp
# @flag --log                                Filetype: .log
# @flag --lua                                Filetype: .lua
# @flag --m4                                 Filetype: .m4
# @flag --make                               Filetype: .Makefiles .mk .mak
# @flag --mako                               Filetype: .mako
# @flag --markdown                           Filetype: .markdown .mdown .mdwn .mkdn .mkd .md
# @flag --mason                              Filetype: .mas .mhtml .mpl .mtxt
# @flag --matlab                             Filetype: .m
# @flag --mathematica                        Filetype: .m .wl
# @flag --md                                 Filetype: .markdown .mdown .mdwn .mkdn .mkd .md
# @flag --mercury                            Filetype: .m .moo
# @flag --naccess                            Filetype: .asa .rsa
# @flag --nim                                Filetype: .nim
# @flag --nix                                Filetype: .nix
# @flag --objc                               Filetype: .m .h
# @flag --objcpp                             Filetype: .mm .h
# @flag --ocaml                              Filetype: .ml .mli .mll .mly
# @flag --octave                             Filetype: .m
# @flag --org                                Filetype: .org
# @flag --parrot                             Filetype: .pir .pasm .pmc .ops .pod .pg .tg
# @flag --pdb                                Filetype: .pdb
# @flag --perl                               Filetype: .pl .pm .pm6 .pod .t
# @flag --php                                Filetype: .php .phpt .php3 .php4 .php5 .phtml
# @flag --pike                               Filetype: .pike .pmod
# @flag --plist                              Filetype: .plist
# @flag --plone                              Filetype: .pt .cpt .metadata .cpy .py .xml .zcml
# @flag --proto                              Filetype: .proto
# @flag --pug                                Filetype: .pug
# @flag --puppet                             Filetype: .pp
# @flag --python                             Filetype: .py
# @flag --qml                                Filetype: .qml
# @flag --racket                             Filetype: .rkt .ss .scm
# @flag --rake                               Filetype: .Rakefile
# @flag --restructuredtext                   Filetype: .rst
# @flag --rs                                 Filetype: .rs
# @flag --r                                  Filetype: .r .R .Rmd .Rnw .Rtex .Rrst
# @flag --rdoc                               Filetype: .rdoc
# @flag --ruby                               Filetype: .rb .rhtml .rjs .rxml .erb .rake .spec
# @flag --rust                               Filetype: .rs
# @flag --salt                               Filetype: .sls
# @flag --sass                               Filetype: .sass .scss
# @flag --scala                              Filetype: .scala
# @flag --scheme                             Filetype: .scm .ss
# @flag --shell                              Filetype: .sh .bash .csh .tcsh .ksh .zsh .fish
# @flag --smalltalk                          Filetype: .st
# @flag --sml                                Filetype: .sml .fun .mlb .sig
# @flag --sql                                Filetype: .sql .ctl
# @flag --stata                              Filetype: .do .ado
# @flag --stylus                             Filetype: .styl
# @flag --swift                              Filetype: .swift
# @flag --tcl                                Filetype: .tcl .itcl .itk
# @flag --terraform                          Filetype: .tf .tfvars
# @flag --tex                                Filetype: .tex .cls .sty
# @flag --thrift                             Filetype: .thrift
# @flag --tla                                Filetype: .tla
# @flag --tt                                 Filetype: .tt .tt2 .ttml
# @flag --toml                               Filetype: .toml
# @flag --ts                                 Filetype: .ts .tsx
# @flag --twig                               Filetype: .twig
# @flag --vala                               Filetype: .vala .vapi
# @flag --vb                                 Filetype: .bas .cls .frm .ctl .vb .resx
# @flag --velocity                           Filetype: .vm .vtl .vsl
# @flag --verilog                            Filetype: .v .vh .sv
# @flag --vhdl                               Filetype: .vhd .vhdl
# @flag --vim                                Filetype: .vim
# @flag --wix                                Filetype: .wxi .wxs
# @flag --wsdl                               Filetype: .wsdl
# @flag --wadl                               Filetype: .wadl
# @flag --xml                                Filetype: .xml .dtd .xsl .xslt .ent .tld .plist
# @flag --yaml                               Filetype: .yaml .yml
# @arg pattern
# @arg path

command eval "$(argc --argc-eval "$0" "$@")"