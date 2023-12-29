#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -a
# @flag -all
# @flag -b                   create bookmarks while merging (default true)
# @flag -bookmarks           create bookmarks while merging (default true)
# @option -c <dir>           the config directory path | skip | none
# @option -conf <dir>        the config directory path | skip | none
# @option -config <dir>      the config directory path | skip | none
# @flag -d                   create divider pages while merging
# @flag -dividerPage         create divider pages while merging
# @flag -j                   produce JSON output
# @flag -json                produce JSON output
# @option -k <string>        encrypt: 40|128|256 (default "256")
# @option -key <string>      encrypt: 40|128|256 (default "256")
# @flag -l                   check for broken links
# @flag -links               check for broken links
# @option -m <string>        validate: strict|relaxed; extract: image|font|content|page|meta; encrypt: rc4|aes, stamp:text|image/pdf
# @option -mode <string>     validate: strict|relaxed; extract: image|font|content|page|meta; encrypt: rc4|aes, stamp:text|image/pdf
# @option -opw <string>      owner password
# @option -p <string>        a comma separated list of pages or page ranges, see pdfcpu selectedpages
# @option -pages <string>    a comma separated list of pages or page ranges, see pdfcpu selectedpages
# @option -perm <string>     encrypt, perm set: none|all (default "none")
# @flag -q
# @flag -quiet
# @flag -r                   replace existing bookmarks
# @flag -replace             replace existing bookmarks
# @flag -s                   sort files before merging
# @flag -sort                sort files before merging
# @option -stats <file>      optimize: create a csv file for stats
# @option -u <string>        info: po|in|cm|mm
# @option -unit <string>     info: po|in|cm|mm
# @option -upw <string>      user password
# @flag -v
# @flag -verbose
# @flag -vv

# {{ pdfcpu annotations
# @cmd list, remove page annotations
# @alias annot
annotations() {
    :;
}

# {{{ pdfcpu annotations list
# @cmd
# @arg infile!
annotations::list() {
    :;
}
# }}} pdfcpu annotations list

# {{{ pdfcpu annotations remove
# @cmd
# @arg infile!
# @arg value*[`_choice_annotation_value`]
annotations::remove() {
    :;
}
# }}} pdfcpu annotations remove
# }} pdfcpu annotations

# {{ pdfcpu attachments
# @cmd list, add, remove, extract embedded file attachments
attachments() {
    :;
}

# {{{ pdfcpu attachments list
# @cmd
# @arg infile!
attachments::list() {
    :;
}
# }}} pdfcpu attachments list

# {{{ pdfcpu attachments add
# @cmd
# @arg infile!
# @arg file+
attachments::add() {
    :;
}
# }}} pdfcpu attachments add

# {{{ pdfcpu attachments remove
# @cmd
# @arg infile!
# @arg file*
attachments::remove() {
    :;
}
# }}} pdfcpu attachments remove

# {{{ pdfcpu attachments extract
# @cmd
# @arg infile!
# @arg outdir!
# @arg file*
attachments::extract() {
    :;
}
# }}} pdfcpu attachments extract
# }} pdfcpu attachments

# {{ pdfcpu booklet
# @cmd arrange pages onto larger sheets of paper to make a booklet or zine
booklet() {
    :;
}
# }} pdfcpu booklet

# {{ pdfcpu bookmarks
# @cmd list, import, export, remove bookmarks
bookmarks() {
    :;
}

# {{{ pdfcpu bookmarks list
# @cmd
# @arg infile!
bookmarks::list() {
    :;
}
# }}} pdfcpu bookmarks list

# {{{ pdfcpu bookmarks import
# @cmd
# @flag -r -replace
# @arg infile!
# @arg infilejson!
# @arg outfile
bookmarks::import() {
    :;
}
# }}} pdfcpu bookmarks import

# {{{ pdfcpu bookmarks export
# @cmd
# @arg infile!
# @arg outfilejson
bookmarks::export() {
    :;
}
# }}} pdfcpu bookmarks export

# {{{ pdfcpu bookmarks remove
# @cmd
# @arg infile!
# @arg outfile
bookmarks::remove() {
    :;
}
# }}} pdfcpu bookmarks remove
# }} pdfcpu bookmarks

# {{ pdfcpu boxes
# @cmd list, add, remove page boundaries for selected pages
# @alias box
boxes() {
    :;
}

# {{{ pdfcpu boxes list
# @cmd
# @arg infile!
boxes::list() {
    :;
}
# }}} pdfcpu boxes list

# {{{ pdfcpu boxes add
# @cmd
# @arg description!
# @arg infile!
# @arg outfile
boxes::add() {
    :;
}
# }}} pdfcpu boxes add

# {{{ pdfcpu boxes remove
# @cmd
# @arg boxtypes*,[`_choice_box_type`]
# @arg infile!
# @arg outfile
boxes::remove() {
    :;
}
# }}} pdfcpu boxes remove
# }} pdfcpu boxes

# {{ pdfcpu changeopw
# @cmd change owner password
changeopw() {
    :;
}
# }} pdfcpu changeopw

# {{ pdfcpu changeupw
# @cmd change user password
changeupw() {
    :;
}
# }} pdfcpu changeupw

# {{ pdfcpu collect
# @cmd create custom sequence of selected pages
collect() {
    :;
}
# }} pdfcpu collect

# {{ pdfcpu config
# @cmd print configuration
config() {
    :;
}
# }} pdfcpu config

# {{ pdfcpu create
# @cmd create PDF content including forms via JSON
create() {
    :;
}
# }} pdfcpu create

# {{ pdfcpu crop
# @cmd set cropbox for selected pages
crop() {
    :;
}
# }} pdfcpu crop

# {{ pdfcpu cut
# @cmd custom cut pages horizontally or vertically
cut() {
    :;
}
# }} pdfcpu cut

# {{ pdfcpu decrypt
# @cmd remove password protection
decrypt() {
    :;
}
# }} pdfcpu decrypt

# {{ pdfcpu encrypt
# @cmd set password protection
encrypt() {
    :;
}
# }} pdfcpu encrypt

# {{ pdfcpu extract
# @cmd extract images, fonts, content, pages or metadata
extract() {
    :;
}
# }} pdfcpu extract

# {{ pdfcpu fonts
# @cmd install, list supported fonts, create cheat sheets
fonts() {
    :;
}

# {{{ pdfcpu fonts list
# @cmd
fonts::list() {
    :;
}
# }}} pdfcpu fonts list

# {{{ pdfcpu fonts install
# @cmd
# @arg fontfiles+
fonts::install() {
    :;
}
# }}} pdfcpu fonts install

# {{{ pdfcpu fonts cheatsheet
# @cmd
# @arg fontfiles+
fonts::cheatsheet() {
    :;
}
# }}} pdfcpu fonts cheatsheet
# }} pdfcpu fonts

# {{ pdfcpu form
# @cmd list, remove fields, lock, unlock, reset, export, fill form via JSON or CSV
form() {
    :;
}

# {{{ pdfcpu form list
# @cmd
# @arg infile+
form::list() {
    :;
}
# }}} pdfcpu form list

# {{{ pdfcpu form remove
# @cmd
# @arg infile!
# @arg outfile
# @arg field+
form::remove() {
    :;
}
# }}} pdfcpu form remove

# {{{ pdfcpu form lock
# @cmd
# @arg infile!
# @arg outfile
# @arg field*
form::lock() {
    :;
}
# }}} pdfcpu form lock

# {{{ pdfcpu form unlock
# @cmd
# @arg infile!
# @arg outfile
# @arg field*
form::unlock() {
    :;
}
# }}} pdfcpu form unlock

# {{{ pdfcpu form reset
# @cmd
# @arg infile!
# @arg outfile
# @arg field*
form::reset() {
    :;
}
# }}} pdfcpu form reset

# {{{ pdfcpu form export
# @cmd
# @arg infile!
# @arg outfilejson
form::export() {
    :;
}
# }}} pdfcpu form export

# {{{ pdfcpu form fill
# @cmd
# @arg infile!
# @arg infilejson!
# @arg outfile
form::fill() {
    :;
}
# }}} pdfcpu form fill

# {{{ pdfcpu form multifill
# @cmd
# @option --m[single|merge]
# @option -mode[single|merge]
# @arg infile!
# @arg infiledata!
# @arg outdir!
# @arg outname
form::multifill() {
    :;
}
# }}} pdfcpu form multifill
# }} pdfcpu form

# {{ pdfcpu grid
# @cmd rearrange pages or images for enhanced browsing experience
grid() {
    :;
}
# }} pdfcpu grid

# {{ pdfcpu images
# @cmd list images for selected pages
images() {
    :;
}

# {{{ pdfcpu images list
# @cmd
# @arg infile+
images::list() {
    :;
}
# }}} pdfcpu images list
# }} pdfcpu images

# {{ pdfcpu import
# @cmd import/convert images to PDF
import() {
    :;
}
# }} pdfcpu import

# {{ pdfcpu info
# @cmd print file info
info() {
    :;
}
# }} pdfcpu info

# {{ pdfcpu keywords
# @cmd list, add, remove keywords
keywords() {
    :;
}

# {{{ pdfcpu keywords list
# @cmd
# @arg infile!
keywords::list() {
    :;
}
# }}} pdfcpu keywords list

# {{{ pdfcpu keywords add
# @cmd
# @arg infile!
# @arg keyword+
keywords::add() {
    :;
}
# }}} pdfcpu keywords add

# {{{ pdfcpu keywords remove
# @cmd
# @arg infile!
# @arg keyword*
keywords::remove() {
    :;
}
# }}} pdfcpu keywords remove
# }} pdfcpu keywords

# {{ pdfcpu merge
# @cmd concatenate PDFs
merge() {
    :;
}
# }} pdfcpu merge

# {{ pdfcpu ndown
# @cmd cut selected pages into n pages symmetrically
ndown() {
    :;
}
# }} pdfcpu ndown

# {{ pdfcpu nup
# @cmd rearrange pages or images for reduced number of pages
nup() {
    :;
}
# }} pdfcpu nup

# {{ pdfcpu optimize
# @cmd optimize PDF by getting rid of redundant page resources
optimize() {
    :;
}
# }} pdfcpu optimize

# {{ pdfcpu pagelayout
# @cmd list, set, reset page layout for opened document
pagelayout() {
    :;
}

# {{{ pdfcpu pagelayout list
# @cmd
# @arg infile!
pagelayout::list() {
    :;
}
# }}} pdfcpu pagelayout list

# {{{ pdfcpu pagelayout set
# @cmd
# @arg infile!
# @arg value![`_choice_pagelayout_value`]
pagelayout::set() {
    :;
}
# }}} pdfcpu pagelayout set

# {{{ pdfcpu pagelayout reset
# @cmd
# @arg infile!
pagelayout::reset() {
    :;
}
# }}} pdfcpu pagelayout reset
# }} pdfcpu pagelayout

# {{ pdfcpu pagemode
# @cmd list, set, reset page mode for opened document
pagemode() {
    :;
}

# {{{ pdfcpu pagemode list
# @cmd
# @arg infile!
pagemode::list() {
    :;
}
# }}} pdfcpu pagemode list

# {{{ pdfcpu pagemode set
# @cmd
# @arg infile!
# @arg value![`_choice_pagemode_value`]
pagemode::set() {
    :;
}
# }}} pdfcpu pagemode set

# {{{ pdfcpu pagemode reset
# @cmd
# @arg infile!
pagemode::reset() {
    :;
}
# }}} pdfcpu pagemode reset
# }} pdfcpu pagemode

# {{ pdfcpu pages
# @cmd insert, remove selected pages
pages() {
    :;
}

# {{{ pdfcpu pages insert
# @cmd
# @option -m -mode[before|after]
# @arg infile!
# @arg outfile
pages::insert() {
    :;
}
# }}} pdfcpu pages insert

# {{{ pdfcpu pages remove
# @cmd
# @arg infile!
# @arg outfile
pages::remove() {
    :;
}
# }}} pdfcpu pages remove
# }} pdfcpu pages

# {{ pdfcpu paper
# @cmd print list of supported paper sizes
paper() {
    :;
}
# }} pdfcpu paper

# {{ pdfcpu permissions
# @cmd list, set user access permissions
permissions() {
    :;
}

# {{{ pdfcpu permissions list
# @cmd
# @flag -upw    <userpw>
# @flag -opw    <ownerpw>
# @arg infile+
permissions::list() {
    :;
}
# }}} pdfcpu permissions list

# {{{ pdfcpu permissions set
# @cmd
# @option -perm[none|print|all|max4Hex|max12Bits]
# @flag -upw    <userpw>
# @flag -opw    <ownerpw>
# @arg infile!
permissions::set() {
    :;
}
# }}} pdfcpu permissions set
# }} pdfcpu permissions

# {{ pdfcpu portfolio
# @cmd list, add, remove, extract portfolio entries with optional description
portfolio() {
    :;
}

# {{{ pdfcpu portfolio list
# @cmd
# @arg infile!
portfolio::list() {
    :;
}
# }}} pdfcpu portfolio list

# {{{ pdfcpu portfolio add
# @cmd
# @arg infile!
# @arg file-desc+ <file[,desc]>
portfolio::add() {
    :;
}
# }}} pdfcpu portfolio add

# {{{ pdfcpu portfolio remove
# @cmd
# @arg infile!
# @arg file*
portfolio::remove() {
    :;
}
# }}} pdfcpu portfolio remove

# {{{ pdfcpu portfolio extract
# @cmd
# @arg infile!
# @arg outdir!
# @arg file*
portfolio::extract() {
    :;
}
# }}} pdfcpu portfolio extract
# }} pdfcpu portfolio

# {{ pdfcpu poster
# @cmd cut selected pages into poster using paper size or dimensions
poster() {
    :;
}
# }} pdfcpu poster

# {{ pdfcpu properties
# @cmd list, add, remove document properties
properties() {
    :;
}

# {{{ pdfcpu properties list
# @cmd
# @arg infile!
properties::list() {
    :;
}
# }}} pdfcpu properties list

# {{{ pdfcpu properties add
# @cmd
# @arg infile!
# @arg namevaluepair*
properties::add() {
    :;
}
# }}} pdfcpu properties add

# {{{ pdfcpu properties remove
# @cmd
# @arg infile!
# @arg name*
properties::remove() {
    :;
}
# }}} pdfcpu properties remove
# }} pdfcpu properties

# {{ pdfcpu resize
# @cmd scale selected pages
resize() {
    :;
}
# }} pdfcpu resize

# {{ pdfcpu rotate
# @cmd rotate selected pages
rotate() {
    :;
}
# }} pdfcpu rotate

# {{ pdfcpu selectedpages
# @cmd print definition of the -pages flag
selectedpages() {
    :;
}
# }} pdfcpu selectedpages

# {{ pdfcpu split
# @cmd split up a PDF by span or bookmark
split() {
    :;
}
# }} pdfcpu split

# {{ pdfcpu stamp
# @cmd add, remove, update Unicode text, image or PDF stamps for selected pages
stamp() {
    :;
}

# {{{ pdfcpu stamp add
# @cmd
# @option -m -mode[text|image|pdf]
# @arg string-file! <string|file>
# @arg description!
# @arg infile!
# @arg outfile
stamp::add() {
    :;
}
# }}} pdfcpu stamp add

# {{{ pdfcpu stamp update
# @cmd
# @option -m -mode[text|image|pdf]
# @arg string-file! <string|file>
# @arg description!
# @arg infile!
# @arg outfile
stamp::update() {
    :;
}
# }}} pdfcpu stamp update

# {{{ pdfcpu stamp remove
# @cmd
# @arg infile!
# @arg outfile
stamp::remove() {
    :;
}
# }}} pdfcpu stamp remove
# }} pdfcpu stamp

# {{ pdfcpu trim
# @cmd create trimmed version of selected pages
trim() {
    :;
}
# }} pdfcpu trim

# {{ pdfcpu validate
# @cmd validate PDF against PDF 32000-1:2008 (PDF 1.7) + basic PDF 2.0 validation
validate() {
    :;
}
# }} pdfcpu validate

# {{ pdfcpu version
# @cmd print version
version() {
    :;
}
# }} pdfcpu version

# {{ pdfcpu viewerpref
# @cmd list, set, reset viewer preferences for opened document
viewerpref() {
    :;
}

# {{{ pdfcpu viewerpref list
# @cmd
# @flag -a -all
# @flag -j -json
# @arg infile!
viewerpref::list() {
    :;
}
# }}} pdfcpu viewerpref list

# {{{ pdfcpu viewerpref set
# @cmd
# @arg infile!
# @arg infilejson-jonsstring! <inFileJSON|JONSstring>
viewerpref::set() {
    :;
}
# }}} pdfcpu viewerpref set

# {{{ pdfcpu viewerpref reset
# @cmd
# @arg infile!
viewerpref::reset() {
    :;
}
# }}} pdfcpu viewerpref reset
# }} pdfcpu viewerpref

# {{ pdfcpu watermark
# @cmd add, remove, update Unicode text, image or PDF watermarks for selected pages
watermark() {
    :;
}

# {{{ pdfcpu watermark add
# @cmd
# @arg string-file! <string|file>
# @arg description!
# @arg infile!
# @arg outfile
watermark::add() {
    :;
}
# }}} pdfcpu watermark add

# {{{ pdfcpu watermark update
# @cmd
# @arg string-file! <string|file>
# @arg description!
# @arg infile!
# @arg outfile
watermark::update() {
    :;
}
# }}} pdfcpu watermark update

# {{{ pdfcpu watermark remove
# @cmd
# @arg infile!
# @arg outfile
watermark::remove() {
    :;
}
# }}} pdfcpu watermark remove
# }} pdfcpu watermark

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_annotation_value() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
    else
        _choice_annotation_type
    fi
}

_choice_box_type() {
    printf "%s\n" media crop trim bleed art
}

_choice_pagelayout_value() {
    cat <<-'EOF'
SinglePage	Display one page at a time (default)
TwoColumnLeft	Display the pages in two columns, with odd- numbered pages on the left
TwoColumnRight	Display the pages in two columns, with odd- numbered pages on the right
TwoPageLeft	Display the pages two at a time, with odd-numbered pages on the left
TwoPageRight	Display the pages two at a time, with odd-numbered pages on the right
EOF
}

_choice_pagemode_value() {
    cat <<-'EOF'
UseNone	Neither document outline nor thumbnail images visible (default)
UseOutlines	Document outline visible
UseThumbs	Thumbnail images visible
FullScreen	Full-screen mode, with no menu bar, window controls, or any other window visible
UseOC	Optional content group panel visible (since PDF 1.5)
UseAttachments	Attachments panel visible (since PDF 1.6)
EOF
}

_choice_annotation_type() {
    printf "%s\n" Text Link FreeText Line Square Circle Polygon PolyLine HighLight \
        Underline Squiggly StrikeOut Stamp Caret Ink Popup FileAttachment Sound Movie Widget Screen PrinterMark TrapNet Watermark 3D Redact
}

command eval "$(argc --argc-eval "$0" "$@")"