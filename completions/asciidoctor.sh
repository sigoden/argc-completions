#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --backend[html5|xhtml5|docbook5|manpage]  set backend output format: (default: html5) additional backends are supported via extended converters (e.g., pdf, epub3)
# @option -d --doctype[article|book|manpage|inline]  document type to use when converting document: (default: article)
# @flag -e --embedded                      suppress enclosing document structure and output an embedded document (default: false)
# @option -o --out-file <FILE>             output file (default: based on path of input file); use - to output to STDOUT
# @flag --safe                             set safe mode level to safe (default: unsafe) enables include directives, but prevents access to ancestor paths of source file provided for compatibility with the asciidoc command
# @option -S --safe-mode[unsafe|safe|server|secure] <SAFE_MODE>  set safe mode level explicitly: (default: unsafe) disables potentially dangerous macros in source files, such as include::[]
# @flag -s --no-header-footer              suppress enclosing document structure and output an embedded document (default: false)
# @flag -n --section-numbers               auto-number section titles in the HTML backend; disabled by default
# @option --eruby[erb|erubi|erubis]        specify eRuby implementation to use when rendering custom ERB templates: (default: erb)
# @option -a --attribute <name[=value]>    a document attribute to set in the form of name, name!, or name=value pair this attribute takes precedence over the same attribute defined in the source document unless either the name or value ends in @ (i.e., name@=value or name=value@)
# @option -T --template-dir <DIR>          a directory containing custom converter templates that override the built-in converter (requires tilt gem) may be specified multiple times
# @option -E --template-engine <NAME>      template engine to use for the custom converter templates (loads gem on demand)
# @option -B --base-dir <DIR>              base directory containing the document and resources (default: directory of source file)
# @option -R --source-dir <DIR>            source root directory (used for calculating path in destination directory)
# @option -D --destination-dir <DIR>       destination output directory (default: directory of source file)
# @option -I --load-path <DIRECTORY>       add a directory to the $LOAD_PATH may be specified more than once
# @option -r --require <LIBRARY>           require the specified library before executing the processor (using require) may be specified more than once
# @option --failure-level[INFO|WARN|ERROR|FATAL] <LEVEL>  set minimum log level that yields a non-zero exit code: (default: FATAL)
# @flag -q --quiet                         silence application log messages and script warnings (default: false)
# @flag --trace                            include backtrace information when reporting errors (default: false)
# @flag -v --verbose                       directs application messages logged at DEBUG or INFO level to STDERR (default: false)
# @flag -w --warnings                      turn on script warnings (default: false)
# @flag -t --timings                       print timings report (default: false)
# @option -h --help <TOPIC>                print a help message show this usage if TOPIC is not specified or recognized show an overview of the AsciiDoc syntax if TOPIC is syntax dump the Asciidoctor man page (in troff/groff format) if TOPIC is manpage
# @flag -V --version                       display the version and runtime environment (or -v if no other flags or arguments)
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"