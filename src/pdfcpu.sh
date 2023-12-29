_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# annotations/annot - list, remove page annotations
## list <inFile>
## remove <inFile> [value]...
# attachments - list, add, remove, extract embedded file attachments
## list <inFile>
## add <inFile> <file>...
## remove <inFile> [file]...
## extract <inFile> <outDir> [file]...
# booklet - arrange pages onto larger sheets of paper to make a booklet or zine
# bookmarks - list, import, export, remove bookmarks
## list <inFile>
## import <inFile> <inFileJSON> [outFile]
    -r -replace
## export <inFile> [outFileJSON]
## remove <inFile> [outFile]
# boxes/box - list, add, remove page boundaries for selected pages
## list <inFile>
## add <description> <inFile> [outFile]
## remove <boxTypes> <inFile> [outFile]
# changeopw - change owner password
# changeupw - change user password
# collect - create custom sequence of selected pages
# config - print configuration
# create - create PDF content including forms via JSON
# crop - set cropbox for selected pages
# cut - custom cut pages horizontally or vertically
# decrypt - remove password protection
# encrypt - set password protection
# extract - extract images, fonts, content, pages or metadata
# fonts - install, list supported fonts, create cheat sheets
## list
## install <fontFiles>...
## cheatsheet <fontFiles>...
# form - list, remove fields, lock, unlock, reset, export, fill form via JSON or CSV
## list <inFile>...
## remove <inFile> [outFile] <field>...
## lock <inFile> [outFile] [field]...
## unlock <inFile> [outFile] [field]...
## reset <inFile> [outFile] [field]...
## export <inFile> [outFileJSON]
## fill <inFile> <inFileJSON> [outFile]
## multifill  <inFile> <inFileData> <outDir> [outName]
    --m -mode  {single|merge}
# grid - rearrange pages or images for enhanced browsing experience
# images - list images for selected pages
## list <inFile>...
# import - import/convert images to PDF
# info - print file info
# keywords - list, add, remove keywords
## list <inFile>
## add <inFile> <keyword>...
## remove <inFile> [keyword]...
# merge - concatenate PDFs
# ndown - cut selected pages into n pages symmetrically
# nup - rearrange pages or images for reduced number of pages
# optimize - optimize PDF by getting rid of redundant page resources
# pagelayout - list, set, reset page layout for opened document
## list <inFile>
## set <inFile> <value>
## reset <inFile>
# pagemode - list, set, reset page mode for opened document
## list <inFile>
## set <inFile> <value>
## reset <inFile>
# pages - insert, remove selected pages
## insert  <inFile> [outFile]
    -m -mode   {before|after}
## remove  <inFile> [outFile]
# paper - print list of supported paper sizes
# permissions - list, set user access permissions
## list <inFile>...
    -upw  <userpw>
    -opw  <ownerpw>
## set <inFile>
    -perm        {none|print|all|max4Hex|max12Bits}
    -upw  <userpw>
    -opw  <ownerpw>
# portfolio - list, add, remove, extract portfolio entries with optional description
## list <inFile>
## add <inFile> <file[,desc]>...
## remove <inFile> [file]...
## extract <inFile> <outDir> [file]...
# poster - cut selected pages into poster using paper size or dimensions
# properties - list, add, remove document properties
## list <inFile>
## add <inFile> [nameValuePair]...
## remove <inFile> [name]...
# resize - scale selected pages
# rotate - rotate selected pages
# selectedpages - print definition of the -pages flag
# split - split up a PDF by span or bookmark
# stamp - add, remove, update Unicode text, image or PDF stamps for selected pages
## add <string|file> <description> <inFile> [outFile]
    -m -mode     {text|image|pdf}
## update <string|file> <description> <inFile> [outFile]
    -m -mode     {text|image|pdf}
## remove <inFile> [outFile]
# trim - create trimmed version of selected pages
# validate - validate PDF against PDF 32000-1:2008 (PDF 1.7) + basic PDF 2.0 validation
# version - print version
# viewerpref - list, set, reset viewer preferences for opened document
## list <inFile>
    -a -all
    -j -json
## set <inFile> <inFileJSON|JONSstring>
## reset <inFile>
# watermark - add, remove, update Unicode text, image or PDF watermarks for selected pages
## add <string|file> <description> <inFile> [outFile]
    -m -mode {text|image|pdf}
## update <string|file> <description> <inFile> [outFile]
    -m -mode {text|image|pdf}
## remove <inFile> [outFile]
EOF
    if [[ "$*" == "pdfcpu" ]]; then
        pdfcpu grid --help 2>&1
    fi
}

_patch_table() {
    if [[ "$*" == "pdfcpu" ]]; then
        _patch_table_detect_value_type | \
        _patch_table_add_metadata inherit-flag-options

    elif [[ "$*" == "pdfcpu annotations remove" ]]; then
        _patch_table_edit_arguments 'value;[`_choice_annotation_value`]'

    elif [[ "$*" == "pdfcpu boxes remove" ]]; then
        _patch_table_edit_arguments 'boxTypes;*,[`_choice_box_type`]'

    elif [[ "$*" == "pdfcpu pagelayout set" ]]; then
        _patch_table_edit_arguments 'value;[`_choice_pagelayout_value`]'

    elif [[ "$*" == "pdfcpu pagemode set" ]]; then
        _patch_table_edit_arguments 'value;[`_choice_pagemode_value`]'

    else
        cat
    fi
}

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
