#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet            - no error output
# @flag --doc-namespace       - extract namespace bindings from input doc (default)
# @flag --no-doc-namespace    - don't extract namespace bindings from input doc
# @flag --version             - show version
# @flag --help                - show help

# {{ xmlstarlet edit
# @cmd Edit/Update XML document(s)
# @alias ed
# @flag -P                       preserve whitespace nodes.
# @flag -S                       preserve whitespace nodes.
# @flag -O --omit-decl           omit XML declaration (<?xml ...?>)
# @flag -L --inplace             edit file inplace
# @option -N <<name>=<value>>    predefine namespaces (name without 'xmlns:') ex: xsql=urn:oracle-xsql Multiple -N options are allowed.
# @flag --net                    allow network access
# @flag -h --help                display help
edit() {
    :;
}

# {{{ xmlstarlet edit --delete
# @cmd remove element
# @alias -d
# @arg xpath!
edit::--delete() {
    :;
}
# }}} xmlstarlet edit --delete

# {{{ xmlstarlet edit --var
# @cmd declare a variable
# @arg name!
# @arg xpath!
edit::--var() {
    :;
}
# }}} xmlstarlet edit --var

# {{{ xmlstarlet edit --insert
# @cmd add element before node matched by expression
# @alias -i
# @option -t --type[elem|text|attr]    specify type of node
# @option -n --name <name>             specify name of node
# @option -v --value <value>           specify value of node
# @arg xpath!
edit::--insert() {
    :;
}
# }}} xmlstarlet edit --insert

# {{{ xmlstarlet edit --append
# @cmd add element after node matched by expression
# @alias -a
# @option -t --type[elem|text|attr]    specify type of node
# @option -n --name <name>             specify name of node
# @option -v --value <value>           specify value of node
# @arg xpath!
edit::--append() {
    :;
}
# }}} xmlstarlet edit --append

# {{{ xmlstarlet edit --subnode
# @cmd add element as a child of node matched by expression
# @alias -s
# @option -t --type[elem|text|attr]    specify type of node
# @option -n --name <name>             specify name of node
# @option -v --value <value>           specify value of node
# @arg xpath!
edit::--subnode() {
    :;
}
# }}} xmlstarlet edit --subnode

# {{{ xmlstarlet edit --move
# @cmd move element
# @alias -m
# @arg xpath1!
# @arg xpath2!
edit::--move() {
    :;
}
# }}} xmlstarlet edit --move

# {{{ xmlstarlet edit --rename
# @cmd rename element
# @alias -r
# @option -v <new-name>    specify new name
# @arg xpath1!
edit::--rename() {
    :;
}
# }}} xmlstarlet edit --rename

# {{{ xmlstarlet edit --update
# @cmd update element
# @alias -u
# @option -v --value <value>    specify value of node
# @option -x --expr <xpath>     get value from node at xpath
# @arg xpath!
edit::--update() {
    :;
}
# }}} xmlstarlet edit --update
# }} xmlstarlet edit

# {{ xmlstarlet select
# @cmd Select data or query XML document(s) (XPATH, etc)
# @alias sel
# @flag -Q --quiet                  do not write anything to standard output.
# @flag -C --comp                   display generated XSLT
# @flag -R --root                   print root element <xsl-select>
# @flag -T --text                   output is text (default is XML)
# @flag -I --indent                 indent output
# @flag -D --xml-decl               do not omit xml declaration line
# @flag -B --noblanks               remove insignificant spaces from XML tree
# @option -E --encode <encoding>    output in the given encoding (utf-8, unicode...)
# @option -N <<name>=<value>>       predefine namespaces (name without 'xmlns:') ex: xsql=urn:oracle-xsql Multiple -N options are allowed.
# @flag --net                       allow fetch DTDs or entities over network
# @flag --help                      display help
# @option -c --copy-of <xpath>      print copy of XPATH expression
# @option -v --value-of <xpath>     print value of XPATH expression
# @option -o --output <string>      output string literal
# @flag -n --nl                     print new line
# @flag -f --inp-name               print input file name URL
# @option -m --match <xpath>        match XPATH expression
# @option --var <<name>=<value>>    declare a variable (referenced by $name)
# @option -i --if <test-xpath>      check condition <xsl:if test="test-xpath">
# @option --elif <test-xpath>       check condition if previous conditions failed
# @flag --else                      check if previous conditions failed
# @option -e --elem <name>          print out element <xsl:element name="name">
# @option -a --attr <name>          add attribute <xsl:attribute name="name">
# @flag -b --break                  break nesting
# @option -s --sort <op> <xpath>    sort in order (used after -m) where
# @arg template
# @arg xml-file*
select_() {
    :;
}
# }} xmlstarlet select

# {{ xmlstarlet transform
# @cmd Transform XML document(s) using XSLT
# @alias tr
# @flag -p                    parameter is XPATH expression ("'string'" to quote string)
# @flag -s                    parameter is a string literal
# @flag -h --help             display help message
# @flag --omit-decl           omit xml declaration <?xml version="1.0"?>
# @flag -E --embed            allow applying embedded stylesheet
# @flag --show-ext            show list of extensions
# @flag --val                 allow validate against DTDs or schemas
# @flag --net                 allow fetch DTDs or entities over network
# @flag --xinclude            do XInclude processing on document input
# @option --maxdepth <val>    increase the maximum depth
# @flag --html                input document(s) is(are) in HTML format
# @arg xsl-file!
# @arg xml-file*
transform() {
    :;
}
# }} xmlstarlet transform

# {{ xmlstarlet validate
# @cmd Validate XML document(s) (well-formed/DTD/XSD/RelaxNG)
# @alias val
# @flag -w --well-formed             validate well-formedness only (default)
# @option -d --dtd <dtd-file>        validate against DTD
# @flag --net                        allow network access
# @option -s --xsd <xsd-file>        validate against XSD schema
# @flag -E --embed                   validate using embedded DTD
# @option -r --relaxng <rng-file>    validate against Relax-NG schema
# @flag -e --err                     print verbose error messages on stderr
# @flag -S --stop                    stop on first error
# @flag -b --list-bad                list only files which do not validate
# @flag -g --list-good               list only files which validate
# @flag -q --quiet                   do not list files (return result code only)
# @arg xml-file-or-uri*
validate() {
    :;
}
# }} xmlstarlet validate

# {{ xmlstarlet format
# @cmd Format XML document(s)
# @alias fo
# @flag -n --noindent                 do not indent
# @flag -t --indent-tab               indent output with tabulation
# @option -s --indent-spaces <num>    indent output with <num> spaces
# @flag -o --omit-decl                omit xml declaration <?xml version="1.0"?>
# @flag --net                         allow network access
# @flag -R --recover                  try to recover what is parsable
# @flag -D --dropdtd                  remove the DOCTYPE of the input docs
# @flag -C --nocdata                  replace cdata section with text nodes
# @flag -N --nsclean                  remove redundant namespace declarations
# @option -e --encode <encoding>      output in the given encoding (utf-8, unicode...)
# @flag -H --html                     input is HTML
# @flag -h --help                     print help
# @arg xml-file!
format() {
    :;
}
# }} xmlstarlet format

# {{ xmlstarlet elements
# @cmd Display element structure of XML document
# @alias el
# @flag -a          show attributes as well
# @flag -v          show attributes and their values
# @flag -u          print out sorted unique lines
# @option -d <n>    print out sorted unique lines up to depth <n>
# @arg xml-file!
elements() {
    :;
}
# }} xmlstarlet elements

# {{ xmlstarlet canonic
# @cmd XML canonicalization
# @alias c14n
# @flag --with-comments           XML file canonicalization w comments (default)
# @flag --without-comments        XML file canonicalization w/o comments
# @flag --exc-with-comments       Exclusive XML file canonicalization w comments
# @flag --exc-without-comments    Exclusive XML file canonicalization w/o comments
# @arg mode!
# @arg xml-file!
# @arg xpath-file
# @arg inclusive-ns-list
canonic() {
    :;
}
# }} xmlstarlet canonic

# {{ xmlstarlet list
# @cmd List directory as XML
# @alias ls
# @arg dir
list() {
    :;
}
# }} xmlstarlet list

# {{ xmlstarlet escape
# @cmd Escape special XML characters
# @alias esc
# @flag --help    print usage
# @arg string
escape() {
    :;
}
# }} xmlstarlet escape

# {{ xmlstarlet unescape
# @cmd Unescape special XML characters
# @alias unesc
# @flag --help    print usage
# @arg string
unescape() {
    :;
}
# }} xmlstarlet unescape

# {{ xmlstarlet xmln
# @cmd Convert XML into PYX format (based on ESIS - ISO 8879)
# @alias pyx
# @arg xml-file
xmln() {
    :;
}
# }} xmlstarlet xmln

# {{ xmlstarlet depyx
# @cmd Convert PYX into XML
# @alias p2x
# @arg pyx-file
depyx() {
    :;
}
# }} xmlstarlet depyx

command eval "$(argc --argc-eval "$0" "$@")"