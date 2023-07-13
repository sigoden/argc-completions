#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f[`_choice_input_format`] <FORMAT>      Specify input format.
# @option -r[`_choice_input_format`] <FORMAT>      Specify input format.
# @option --from[`_choice_input_format`] <FORMAT>  Specify input format.
# @option --read[`_choice_input_format`] <FORMAT>  Specify input format.
# @option -t[`_choice_output_format`] <FORMAT>     Specify output format.
# @option -w[`_choice_output_format`] <FORMAT>     Specify output format.
# @option --to[`_choice_output_format`] <FORMAT>   Specify output format.
# @option --write[`_choice_output_format`] <FORMAT>  Specify output format.
# @option -o --output[docx|odt|epub2|epub3] <FILE>  Write output to FILE instead of stdout.
# @option --data-dir <DIRECTORY>                   Specify  the user data directory to search for pandoc data files.
# @option -d --defaults <FILE>                     Specify a set of default option settings.
# @flag --bash-completion                          Generate a bash completion script.
# @flag --verbose                                  Give verbose debugging output.
# @flag --quiet                                    Suppress warning messages.
# @flag --fail-if-warnings                         Exit with error status if there are any warnings.
# @option --log <FILE>                             Write  log  messages  in machine-readable JSON format to FILE.
# @flag --list-input-formats                       List supported input formats, one per line.
# @flag --list-output-formats                      List supported output formats, one per line.
# @option --list-extensions[`_choice_format`] <FORMAT>  List supported extensions for FORMAT, one per line, preceded by a + or - indicating whether it  is  enabled  by default in FORMAT.
# @flag --list-highlight-languages                 List supported languages for syntax highlighting, one per line.
# @flag --list-highlight-styles                    List supported styles for syntax highlighting, one per line.
# @flag -v --version                               Print version.
# @flag -h --help                                  Show usage message.
# @option --shift-heading-level-by <NUMBER>        Shift heading levels by a positive or negative integer.
# @option --base-header-level <NUMBER>             Deprecated.
# @flag --strip-empty-paragraphs                   Deprecated.
# @option --indented-code-classes <CLASSES>        Specify  classes  to  use for indented code blocks--for example, perl,numberLines or haskell.
# @option --default-image-extension <EXTENSION>    Specify a default extension to use when image paths/URLs have no extension.
# @option --file-scope[docx|odt|epub]              Parse each file individually before combining for multifile documents.
# @option -F --filter <PROGRAM>                    Specify an executable to be used as a filter transforming the pandoc AST after the input is parsed  and  before the  output is written.
# @option -L --lua-filter <SCRIPT>                 Transform the document in a similar fashion as JSON filters (see --filter), but use pandoc's build-in Lua  filtering  system.
# @option -M --metadata <KEY[:VAL]>                Set the metadata field KEY to the value VAL.
# @option --metadata-file <FILE>                   Read metadata from the supplied YAML (or JSON) file.
# @flag -p --preserve-tabs                         Preserve tabs instead of converting them to spaces.
# @option --tab-stop <NUMBER>                      Specify the number of spaces per tab (default is 4).
# @option --track-changes[accept|reject|all]       Specifies what to do with insertions, deletions, and comments produced by the MS Word "Track Changes"  feature.
# @option --extract-media <DIR>                    Extract  images and other media contained in or linked from the source document to the path DIR, creating it if necessary, and adjust the images references in the document so they point  to  the  extracted  files.
# @option --abbreviations <FILE>                   Specifies a custom abbreviations file, with abbreviations one to a line.
# @flag -s --standalone                            Produce  output  with an appropriate header and footer (e.g.  a standalone HTML, LaTeX, TEI, or RTF file, not a fragment).
# @option --template <FILE|URL>                    Use  the specified file as a custom template for the generated document.
# @option -V --variable <KEY[:VAL]>                Set the template variable KEY to the value VAL when rendering the document in standalone mode.
# @option -D --print-default-template <FORMAT>     Print  the system default template for an output FORMAT.
# @option --print-default-data-file <FILE>         Print a system default data file.
# @option --eol[crlf|lf|native]                    Manually specify line endings: crlf (Windows), lf (macOS/Linux/UNIX), or native (line  endings  appropriate  to the OS on which pandoc is being run).
# @option --dpi <NUMBER>                           Specify  the  default  dpi (dots per inch) value for conversion from pixels to inch/centimeters and vice versa.
# @option --wrap[auto|none|preserve]               Determine  how  text  is wrapped in the output (the source code, not the rendered version).
# @option --columns <NUMBER>                       Specify length of lines in characters.
# @flag --toc                                      Include  an  automatically generated table of contents (or, in the case of latex, context, docx, odt, opendocument, rst, or ms, an instruction to create one) in the output document.
# @flag --table-of-contents                        Include  an  automatically generated table of contents (or, in the case of latex, context, docx, odt, opendocument, rst, or ms, an instruction to create one) in the output document.
# @option --toc-depth <NUMBER>                     Specify  the  number of section levels to include in the table of contents.
# @flag --strip-comments                           Strip out HTML comments in the Markdown or Textile source, rather than passing them on to Markdown, Textile  or HTML  output  as  raw  HTML.
# @flag --no-highlight                             Disables syntax highlighting for code blocks and inlines, even when a language attribute is given.
# @option --highlight-style[`_choice_highlight_style`] <STYLE|FILE>  Specifies the coloring style to be used in highlighted source code.
# @option --print-highlight-style[`_choice_highlight_style`] <STYLE|FILE>  Prints  a  JSON version of a highlighting style, which can be modified, saved with a .theme extension, and used with --highlight-style.
# @option --syntax-definition <FILE>               Instructs pandoc to load a KDE XML syntax definition file, which will be used for syntax highlighting of appropriately marked code blocks.
# @option -H --include-in-header <FILE|URL>        Include  contents  of FILE, verbatim, at the end of the header.
# @option -B --include-before-body <FILE|URL>      Include  contents of FILE, verbatim, at the beginning of the document body (e.g.  after the <body> tag in HTML, or the \begin{document} command in LaTeX).
# @option -A --include-after-body <FILE|URL>       Include contents of FILE, verbatim, at the end of the document body (before the </body> tag  in  HTML,  or  the \end{document}  command in LaTeX).
# @option --resource-path <SEARCHPATH>             List of paths to search for images and other resources.
# @option --request-header <NAME:VAL>              Set the request header NAME to the value VAL when making HTTP requests (for example, when a URL is given on the command line, or when resources used in a document must be downloaded).
# @flag --self-contained                           Produce  a  standalone HTML file with no external dependencies, using data: URIs to incorporate the contents of linked scripts, stylesheets, images, and videos.
# @flag --html-q-tags                              Use <q> tags for quotes in HTML.
# @flag --ascii                                    Use  only ASCII characters in output.
# @flag --reference-links                          Use reference-style links, rather than inline links, in writing Markdown or reStructuredText.
# @option --reference-location <=> <block|section|document>  Specify  whether  footnotes  (and  references,  if reference-links is set) are placed at the end of the current (top-level) block, the current section, or the document.
# @flag --atx-headers                              Use  ATX-style headings in Markdown output.
# @option --top-level-division[default|section|chapter|part]  Treat  top-level headings as the given division type in LaTeX, ConTeXt, DocBook, and TEI output.
# @flag -N --number-sections                       Number  section headings in LaTeX, ConTeXt, HTML, or EPUB output.
# @option --number-offset <NUMBER[,NUMBER,...]>    Offset for section headings in HTML output (ignored in other output formats).
# @flag --listings                                 Use the listings package for LaTeX code blocks.
# @flag -i --incremental                           Make list items in slide shows display incrementally (one by one).
# @option --slide-level <NUMBER>                   Specifies  that  headings  with  the specified level create slides (for beamer, s5, slidy, slideous, dzslides).
# @flag --section-divs                             Wrap  sections  in  <section> tags (or <div> tags for html4), and attach identifiers to the enclosing <section> (or <div>) rather than the heading itself.
# @option --email-obfuscation[none|javascript|references]  Specify a method for obfuscating mailto: links in HTML documents.
# @option --id-prefix <STRING>                     Specify a prefix to be added to all identifiers and internal links in HTML and DocBook output, and to  footnote numbers  in  Markdown  and Haddock output.
# @option -T --title-prefix <STRING>               Specify STRING as a prefix at the beginning of the title that appears in the HTML header (but not in the  title as it appears at the beginning of the HTML body).
# @option -c --css <URL>                           Link to a CSS style sheet.
# @option --reference-doc <FILE>                   Use the specified file as a style reference in producing a docx or ODT file.
# @option --epub-cover-image <FILE>                Use the specified image as the EPUB cover.
# @option --epub-metadata <FILE>                   Look in the specified XML file for metadata for the EPUB.
# @option --epub-embed-font <FILE>                 Embed the specified font in the EPUB.
# @option --epub-chapter-level <NUMBER>            Specify the heading level at which to split the EPUB into separate "chapter" files.
# @option --epub-subdirectory <DIRNAME>            Specify the subdirectory in the OCF container that is to hold the EPUB-specific contents.
# @option --ipynb-output[all|none|best]            Determines how ipynb output cells are treated.
# @option --pdf-engine <PROGRAM>                   Use the specified engine when producing PDF output.
# @option --pdf-engine-opt <STRING>                Use  the given string as a command-line argument to the pdf-engine.
# @option --bibliography <FILE>                    Set  the  bibliography  field in the document's metadata to FILE, overriding any value set in the metadata, and process citations using pandoc-citeproc.
# @option --csl <FILE>                             Set  the  csl  field  in  the  document's metadata to FILE, overriding any value set in the metadata.
# @option --citation-abbreviations <FILE>          Set the citation-abbreviations field in the document's metadata to FILE, overriding any value set in the  metadata.
# @flag --natbib                                   Use natbib for citations in LaTeX output.
# @flag --biblatex                                 Use biblatex for citations in LaTeX output.
# @option --mathjax <URL>                          Use MathJax to display embedded TeX math in HTML output.
# @flag --mathml                                   Convert  TeX  math to MathML (in epub3, docbook4, docbook5, jats, html4 and html5).
# @option --webtex <URL>                           Convert TeX formulas to <img> tags that link to an external script that converts formulas to images.
# @option --katex <URL>                            Use KaTeX to display embedded TeX math in HTML output.
# @flag --gladtex                                  Enclose TeX math in <eq> tags in HTML output.
# @flag --dump-args                                Print information about command-line arguments to stdout, then exit.
# @flag --ignore-args                              Ignore command-line arguments (for use in wrapper scripts).
# @arg files*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_input_format() {
    pandoc --list-input-formats
}

_choice_output_format() {
    pandoc --list-output-formats
}

_choice_highlight_style() {
    _rargc_util_comp_file -exts=.theme
    printf "%s\n" pygments kate monochrome breezeDark espresso zenburn haddock tango
}

_choice_format() {
    _argc_util_parallel _choice_input_format :::  _choice_output_format
}

command eval "$(argc --argc-eval "$0" "$@")"