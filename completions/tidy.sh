#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -o -output <file>                       write output to the specified <file>
# @option -config <file>                          set configuration options from the specified <file>
# @option -f -file <file>                         write errors and warnings to the specified <file>
# @flag -m -modify                                modify the original input files
# @flag -i -indent                                indent element content
# @option -w -wrap <column>                       wrap text at the specified <column>.
# @flag -u -upper                                 force tags to upper case
# @flag -c -clean                                 replace FONT, NOBR and CENTER tags with CSS
# @flag -b -bare                                  strip out smart quotes and em dashes, etc.
# @flag -g -gdoc                                  produce clean version of html exported by Google Docs
# @flag -n -numeric                               output numeric rather than named entities
# @flag -e -errors                                show only errors and warnings
# @flag -q -quiet                                 suppress nonessential output
# @flag -omit                                     omit optional start tags and end tags
# @flag -xml                                      specify the input is well formed XML
# @flag -asxml                                    convert HTML to well formed XHTML
# @flag -asxhtml                                  convert HTML to well formed XHTML
# @flag -ashtml                                   force XHTML to well formed HTML
# @option -access <level>                         do additional accessibility checks (<level> = 0, 1, 2, 3).
# @flag -raw                                      output values above 127 without conversion to entities
# @flag -ascii                                    use ISO-8859-1 for input, US-ASCII for output
# @flag -latin0                                   use ISO-8859-15 for input, US-ASCII for output
# @flag -latin1                                   use ISO-8859-1 for both input and output
# @flag -iso2022                                  use ISO-2022 for both input and output
# @flag -utf8                                     use UTF-8 for both input and output
# @flag -mac                                      use MacRoman for input, US-ASCII for output
# @flag -win1252                                  use Windows-1252 for input, US-ASCII for output
# @flag -ibm858                                   use IBM-858 (CP850+Euro) for input, US-ASCII for output
# @flag -utf16le                                  use UTF-16LE for both input and output
# @flag -utf16be                                  use UTF-16BE for both input and output
# @flag -utf16                                    use UTF-16 for both input and output
# @flag -big5                                     use Big5 for both input and output
# @flag -shiftjis                                 use Shift_JIS for both input and output
# @flag -v -version                               show the version of Tidy
# @flag -h                                        list the command line options
# @flag -?                                        list the command line options
# @flag -help                                     list the command line options
# @flag -help-config                              list all configuration options
# @flag -help-env                                 show information about the environment and runtime configuration
# @flag -show-config                              list the current configuration settings
# @flag -export-config                            list the current configuration settings, suitable for a config file
# @flag -export-default-config                    list the default configuration settings, suitable for a config file
# @option -help-option <option>                   show a description of the <option>
# @option -language <lang>                        set Tidy's output language to <lang>.
# @flag -xml-help                                 list the command line options in XML format
# @flag -xml-config                               list all configuration options in XML format
# @flag -xml-strings                              output all of Tidy's strings in XML format
# @flag -xml-error-strings                        output error constants and strings in XML format
# @flag -xml-options-strings                      output option descriptions in XML format
# @flag --gnu-emacs                               This option specifies if Tidy should change the format for reporting errors and warnings to a format that is more easily parsed by GNU Emacs.
# @flag --markup                                  This option specifies if Tidy should generate a pretty printed version of the markup.
# @option --mute <String>                         Use this option to prevent Tidy from displaying certain types of report output, for example, for conditions that you wish to ignore.
# @flag --mute-id                                 This option indicates whether or not Tidy should display message ID's with each of its error reports.
# @flag --quiet                                   When enabled, this option limits Tidy's non-document output to report only document warnings and errors.
# @option --show-body-only[no|yes|auto] <Enum>    This option specifies if Tidy should print only the contents of the body tag as an HTML fragment.
# @option --show-errors <Integer>                 This option specifies the number Tidy uses to determine if further errors should be shown.
# @flag --show-info                               This option specifies if Tidy should display info-level messages.
# @flag --show-warnings                           This option specifies if Tidy should suppress warnings.
# @flag --add-meta-charset                        This option, when enabled, adds a <meta> element and sets the charset attribute to the encoding of the document.
# @flag --add-xml-decl                            This option specifies if Tidy should add the XML declaration when outputting XML or XHTML.
# @flag --add-xml-space                           This option specifies if Tidy should add xml:space="preserve" to elements such as <pre>, <style> and <script> when generating XML.
# @option --doctype <String>                      This option specifies the DOCTYPE declaration generated by Tidy.
# @flag --input-xml                               This option specifies if Tidy should use the XML parser rather than the error correcting HTML parser.
# @flag --output-html                             This option specifies if Tidy should generate pretty printed output, writing it as HTML.
# @flag --output-xhtml                            This option specifies if Tidy should generate pretty printed output, writing it as extensible HTML.
# @flag --output-xml                              This option specifies if Tidy should pretty print output, writing it as well-formed XML.
# @option --error-file <String>                   This option specifies the error file Tidy uses for errors and warnings.
# @flag --keep-time                               This option specifies if Tidy should keep the original modification time of files that Tidy modifies in place.
# @option --output-file <String>                  This option specifies the output file Tidy uses for markup.
# @flag --write-back                              This option specifies if Tidy should write back the tidied markup to the same file it read from.
# @option --accessibility-check[`_choice_accessibility_check`]  Enum if unset) This option specifies what level of accessibility checking, if any, that Tidy should perform.
# @flag --force-output                            This option specifies if Tidy should produce output even if errors are encountered.
# @flag --show-meta-change                        This option enables a message whenever Tidy changes the content attribute of a meta charset declaration to match the encoding of the document.
# @flag --warn-proprietary-attributes             This option specifies if Tidy should warn on proprietary attributes.
# @option --char-encoding[`_choice_encoding`] <Encoding>  This option specifies the character encoding Tidy uses for input, and when set, automatically chooses an appropriate character encoding to be used for output.
# @option --input-encoding[`_choice_encoding`] <Encoding>  This option specifies the character encoding Tidy uses for input.
# @option --newline[LF|CRLF|CR] <Enum>            The default is appropriate to the current platform.
# @option --output-bom[no|yes|auto] <Enum>        This option specifies if Tidy should write a Unicode Byte Order Mark character (BOM; also known as Zero Width No-Break Space; has value of U+FEFF) to the beginning of the output, and only applies to UTF-8 and UTF-16 output encodings.
# @option --output-encoding[`_choice_encoding`] <Encoding>  This option specifies the character encoding Tidy uses for output.
# @flag --bare                                    This option specifies if Tidy should strip Microsoft specific HTML from Word 2000 documents, and output spaces rather than non-breaking spaces where they exist in the input.
# @flag --clean                                   This option specifies if Tidy should perform cleaning of some legacy presentational tags (currently <i>, <b>, <center> when enclosed within appropriate inline tags, and <font>).
# @flag --drop-empty-elements                     This option specifies if Tidy should discard empty elements.
# @flag --drop-empty-paras                        This option specifies if Tidy should discard empty paragraphs.
# @flag --drop-proprietary-attributes             This option specifies if Tidy should strip out proprietary attributes, such as Microsoft data binding attributes.
# @flag --gdoc                                    This option specifies if Tidy should enable specific behavior for cleaning up HTML exported from Google Docs.
# @flag --logical-emphasis                        This option specifies if Tidy should replace any occurrence of <i> with <em> and any occurrence of <b> with <strong>.
# @option --merge-divs[no|yes|auto] <Enum>        This option can be used to modify the behavior of clean when set to yes.
# @option --merge-spans[no|yes|auto] <Enum>       This option can be used to modify the behavior of clean when set to yes.
# @flag --word-2000                               This option specifies if Tidy should go to great pains to strip out all the surplus stuff Microsoft Word 2000 inserts when you save Word documents as "Web pages".
# @flag --ascii-chars                             Can be used to modify behavior of the clean option when set to yes.
# @flag --ncr                                     This option specifies if Tidy should allow numeric character references.
# @flag --numeric-entities                        This option specifies if Tidy should output entities other than the built-in HTML entities (&amp;, &lt;, &gt;, and &quot;) in the numeric rather than the named entity form.
# @flag --preserve-entities                       This option specifies if Tidy should preserve well-formed entities as found in the input.
# @flag --quote-ampersand                         This option specifies if Tidy should output unadorned & characters as &amp;.
# @flag --quote-marks                             This option specifies if Tidy should output " characters as &quot; as is preferred by some editing environments.
# @flag --quote-nbsp                              This option specifies if Tidy should output non-breaking space characters as entities, rather than as the Unicode character value 160 (decimal).
# @option --alt-text <String>                     This option specifies the default alt= text Tidy uses for <img> attributes when the alt= attribute is missing.
# @flag --anchor-as-name                          This option controls the deletion or addition of the name attribute in elements where it can serve as anchor.
# @flag --assume-xml-procins                      This option specifies if Tidy should change the parsing of processing instructions to require ?> as the terminator rather than >.
# @flag --coerce-endtags                          This option specifies if Tidy should coerce a start tag into an end tag in cases where it looks like an end tag was probably intended; for example, given
# @option --css-prefix <String>                   This option specifies the prefix that Tidy uses for styles rules.
# @option --custom-tags[no|blocklevel|empty|inline|pre] <Enum>  This option enables the use of tags for autonomous custom elements, e.g. <flag-icon> with Tidy.
# @flag --enclose-block-text                      This option specifies if Tidy should insert a <p> element to enclose any text it finds in any element that allows mixed content for HTML transitional but not HTML strict.
# @flag --enclose-text                            This option specifies if Tidy should enclose any text it finds in the body element within a <p> element.
# @flag --escape-scripts                          This option causes items that look like closing tags, like </g to be escaped to <\/g.
# @flag --fix-backslash                           This option specifies if Tidy should replace backslash characters \ in URLs with forward slashes /.
# @option --fix-bad-comments[no|yes|auto] <Enum>  This option specifies if Tidy should replace unexpected hyphens with = characters when it comes across adjacent hyphens.
# @flag --fix-style-tags                          This option specifies if Tidy should move all style tags to the head of the document.
# @flag --fix-uri                                 This option specifies if Tidy should check attribute values that carry URIs for illegal characters and if such are found, escape them as HTML4 recommends.
# @flag --literal-attributes                      This option specifies how Tidy deals with whitespace characters within attribute values.
# @flag --lower-literals                          This option specifies if Tidy should convert the value of an attribute that takes a list of predefined values to lower case.
# @option --repeated-attributes <Enum>            This option specifies if Tidy should keep the first or last attribute, if an attribute is repeated, e.g. has two align attributes.
# @flag --skip-nested                             This option specifies that Tidy should skip nested tags when parsing script and style data.
# @flag --strict-tags-attributes                  This options ensures that tags and attributes are applicable for the version of HTML that Tidy outputs.
# @option --uppercase-attributes <Enum>           This option specifies if Tidy should output attribute names in upper case.
# @flag --uppercase-tags                          This option specifies if Tidy should output tag names in upper case.
# @flag --decorate-inferred-ul                    This option specifies if Tidy should decorate inferred <ul> elements with some CSS markup to avoid indentation to the right.
# @flag --escape-cdata                            This option specifies if Tidy should convert <![CDATA[]]> sections to normal text.
# @flag --hide-comments                           This option specifies if Tidy should not print out comments.
# @flag --join-classes                            This option specifies if Tidy should combine class names to generate a single, new class name if multiple class assignments are detected on an element.
# @flag --join-styles                             This option specifies if Tidy should combine styles to generate a single, new style if multiple style values are detected on an element.
# @flag --merge-emphasis                          This option specifies if Tidy should merge nested <b> and <i> elements; for example, for the case
# @flag --replace-color                           This option specifies if Tidy should replace numeric values in color attributes with HTML/XHTML color names where defined, e.g. replace ♯ffffff with white.
# @flag --new-blocklevel-tags                     Tag Names This option specifies new block-level tags.
# @flag --new-empty-tags                          Tag Names This option specifies new empty inline tags.
# @flag --new-inline-tags                         Tag Names This option specifies new non-empty inline tags.
# @flag --new-pre-tags                            Tag Names This option specifies new tags that are to be processed in exactly the same way as HTML's <pre> element.
# @flag --break-before-br                         This option specifies if Tidy should output a line break before each <br> element.
# @option --indent[no|yes|auto] <Enum>            This option specifies if Tidy should indent block-level tags.
# @flag --indent-attributes                       This option specifies if Tidy should begin each attribute on a new line.
# @flag --indent-cdata                            This option specifies if Tidy should indent <![CDATA[]]> sections.
# @option --indent-spaces <Integer>               This option specifies the number of spaces or tabs that Tidy uses to indent content when indent is enabled.
# @flag --indent-with-tabs                        This option specifies if Tidy should indent with tabs instead of spaces, assuming indent is yes.
# @flag --keep-tabs                               With the default no Tidy will replace all source tabs with spaces, controlled by the option tab-size, and the current line offset.
# @flag --omit-optional-tags                      This option specifies if Tidy should omit optional start tags and end tags when generating output.
# @flag --priority-attributes                     Attributes Names This option allows prioritizing the writing of attributes in tidied documents, allowing them to written before the other attributes of an element.
# @flag --punctuation-wrap                        This option specifies if Tidy should line wrap after some Unicode or Chinese punctuation characters.
# @option --sort-attributes[none|alpha] <Enum>    This option specifies that Tidy should sort attributes within an element using the specified sort algorithm.
# @option --tab-size <Integer>                    This option specifies the number of columns that Tidy uses between successive tab stops.
# @flag --tidy-mark                               This option specifies if Tidy should add a meta element to the document head to indicate that the document has been tidied.
# @option --vertical-space[no|yes|auto] <Enum>    This option specifies if Tidy should add some extra empty lines for readability.
# @option --wrap <Integer>                        This option specifies the right margin Tidy uses for line wrapping.
# @flag --wrap-asp                                This option specifies if Tidy should line wrap text contained within ASP pseudo elements, which look like: <% ... %>.
# @flag --wrap-attributes                         This option specifies if Tidy should line-wrap attribute values, meaning that if the value of an attribute causes a line to exceed the width specified by wrap, Tidy will add one or more line breaks to the value, causing it to be wrapped into multiple lines.
# @flag --wrap-jste                               This option specifies if Tidy should line wrap text contained within JSTE pseudo elements, which look like: <# ... ♯>.
# @flag --wrap-php                                This option specifies if Tidy should line wrap text contained within PHP pseudo elements, which look like: <?php ... ?>.
# @flag --wrap-script-literals                    This option specifies if Tidy should line wrap string literals that appear in script attributes.
# @flag --wrap-sections                           This option specifies if Tidy should line wrap text contained within <![ ... ]> section tags.
# @arg file*

_choice_accessibility_check() {
    cat <<-'EOF'
0	Tidy Classic
1	Priority 1 Checks
2	Priority 2 Checks
3	Priority 3 Checks
EOF
}

_choice_encoding() {
    printf "%s\n" raw ascii latin0 latin1 utf8 iso2022 mac win1252 ibm858 \
        utf16le utf16be utf16 big5 shiftjis
}

command eval "$(argc --argc-eval "$0" "$@")"