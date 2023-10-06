#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -h                               print this message
# @flag -v                               print version number
# @flag -e                               preprocess with eqn
# @flag -g                               preprocess with grn
# @flag -j                               preprocess with chem
# @flag -k                               preprocess with preconv
# @flag -p                               preprocess with pic
# @flag -s                               preprocess with soelim
# @flag -t                               preprocess with tbl
# @flag -G                               preprocess with grap
# @flag -J                               preprocess with gideal
# @flag -R                               preprocess with refer
# @flag -a                               produce ASCII description of output
# @flag -b                               print backtraces with errors or warnings
# @flag -c                               disable color output
# @option -d- <cs>                       define a string c as s
# @option -f- <fam>                      use fam as the default font family
# @flag -i                               read standard input after named input files
# @flag -l                               spool the output
# @option -m- <name>                     read macros tmac.name
# @option -n- <num>                      number first page n
# @option -o- <list>                     output only pages in list
# @option -r- <cn>                       define a number register c as n
# @option -w- <name>                     enable warning name
# @flag -z                               suppress formatted output
# @flag -C                               enable compatibility mode
# @option -D- <arg>                      use arg as default input encoding.
# @flag -E                               inhibit all errors
# @option -F- <dir>                      search dir for device directories
# @option -I- <dir>                      search dir for soelim, troff, and grops.
# @option -K- <arg>                      use arg as input encoding.
# @option -L- <arg>                      pass arg to the spooler
# @option -M- <dir>                      search dir for macro files
# @flag -N                               don't allow newlines within eqn delimiters
# @option -P- <arg>                      pass arg to the postprocessor
# @flag -S                               enable safer mode (the default)
# @option -T-[`_choice_device`] <dev>    use device dev
# @flag -U                               enable unsafe mode
# @flag -V                               print commands on stdout instead of running them
# @option -W- <name>                     inhibit warning name
# @flag -X                               use X11 previewer rather than usual postprocessor
# @flag -Z                               don't postprocess

_choice_device() {
    cat <<-'EOF'
dvi	TeX DVI format (postprocessor is grodvi).
html	HTML and XHTML output (preprocessors are soelim and pre-grohtml, postprocessor is post-grohtml).
xhtml	HTML and XHTML output (preprocessors are soelim and pre-grohtml, postprocessor is post-grohtml).
lbp	Canon CAPSL printers (LBP-4 and LBP-8 series laser printers; postprocessor is grolbp).
lj4	HP LaserJet4 compatible (or other PCL5 compatible) printers (postprocessor is grolj4).
ps	PostScript output (postprocessor is grops).
pdf	Portable Document Format (PDF) output (postprocessor is gropdf).
ascii	7bit ASCII.
cp1047	Latin-1 character set for EBCDIC hosts.
latin1	ISO 8859-1.
utf8	Unicode character set in UTF-8 encoding.
X75	75dpi resolution, 10pt document base font.
X75-12	75dpi resolution, 12pt document base font.
X100	100dpi resolution, 10pt document base font.
X100-12	100dpi resolution, 12pt document base font.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"