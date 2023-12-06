#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -C --colors                          force print with colors
# @flag -e --exit-status                     set exit status if there are no matches or null or false is returned
# @option --expression <string>              forcibly set the expression argument.
# @option --from-file <file>                 Load expression from specified file.
# @option -f --front-matter <string>         (extract|process) first input as yaml front-matter.
# @flag --header-preprocess                  Slurp any header comments and separators before processing expression.
# @flag -h --help                            help for yq
# @option -I --indent <int>                  sets indent level for output (default 2)
# @flag -i --inplace                         update the file in place of first file given.
# @option -p --input-format[auto|a|yaml|y|props|p|xml|x|tsv|t|csv|c|toml] <string>  parse format for input.
# @flag --lua-globals                        output keys as top-level global variables
# @option --lua-prefix <string>              prefix (default "return ")
# @option --lua-suffix <string>              suffix (default ";\n")
# @flag --lua-unquoted                       output unquoted string keys (e.g. {foo="bar"})
# @flag -M --no-colors                       force print with no colors
# @flag -N --no-doc                          Don't print document separators (---)
# @flag -0 --nul-output                      Use NUL char to separate values.
# @flag -n --null-input                      Don't read input, simply evaluate the expression given.
# @option -o --output-format[auto|a|yaml|y|json|j|props|p|xml|x|tsv|t|csv|c] <string>  output format type.
# @flag -P --prettyPrint                     pretty print, shorthand for '... style = ""'
# @option -s --split-exp <string>            print each result (or doc) into a file named (exp).
# @option --split-exp-file <file>            Use a file to specify the split-exp expression.
# @flag -r --unwrapScalar                    unwrap scalar, print the value with no quotes, colors or comments.
# @flag -v --verbose                         verbose mode
# @flag -V --version                         Print version information and quit
# @option --xml-attribute-prefix <string>    prefix for xml attributes (default "+@")
# @option --xml-content-name <string>        name for xml content (if no attribute name is present).
# @option --xml-directive-name <string>      name for xml directives (e.g. <!DOCTYPE thing cat>) (default "+directive")
# @flag --xml-keep-namespace                 enables keeping namespace after parsing attributes (default true)
# @option --xml-proc-inst-prefix <string>    prefix for xml processing instructions (e.g. <?xml version="1"?>) (default "+p_")
# @flag --xml-raw-token                      enables using RawToken method instead Token.
# @flag --xml-skip-directives                skip over directives (e.g. <!DOCTYPE thing cat>)
# @flag --xml-skip-proc-inst                 skip over process instructions (e.g. <?xml version="1"?>)
# @flag --xml-strict-mode                    enables strict parsing of XML.

# {{ yq completion
# @cmd Generate the autocompletion script for the specified shell
# @arg enum[bash|zsh|fish|powershell]
completion() {
    :;
}
# }} yq completion

# {{ yq eval
# @cmd (default) Apply the expression to each document in each yaml file in sequence
# @flag -h --help                            help for eval
# @flag -C --colors                          force print with colors
# @flag -e --exit-status                     set exit status if there are no matches or null or false is returned
# @option --expression <string>              forcibly set the expression argument.
# @option --from-file <file>                 Load expression from specified file.
# @option -f --front-matter <string>         (extract|process) first input as yaml front-matter.
# @flag --header-preprocess                  Slurp any header comments and separators before processing expression.
# @option -I --indent <int>                  sets indent level for output (default 2)
# @flag -i --inplace                         update the file in place of first file given.
# @option -p --input-format[auto|a|yaml|y|props|p|xml|x|tsv|t|csv|c|toml] <string>  parse format for input.
# @flag --lua-globals                        output keys as top-level global variables
# @option --lua-prefix <string>              prefix (default "return ")
# @option --lua-suffix <string>              suffix (default ";\n")
# @flag --lua-unquoted                       output unquoted string keys (e.g. {foo="bar"})
# @flag -M --no-colors                       force print with no colors
# @flag -N --no-doc                          Don't print document separators (---)
# @flag -0 --nul-output                      Use NUL char to separate values.
# @flag -n --null-input                      Don't read input, simply evaluate the expression given.
# @option -o --output-format[auto|a|yaml|y|json|j|props|p|xml|x|tsv|t|csv|c] <string>  output format type.
# @flag -P --prettyPrint                     pretty print, shorthand for '... style = ""'
# @option -s --split-exp <string>            print each result (or doc) into a file named (exp).
# @option --split-exp-file <file>            Use a file to specify the split-exp expression.
# @flag -r --unwrapScalar                    unwrap scalar, print the value with no quotes, colors or comments.
# @flag -v --verbose                         verbose mode
# @option --xml-attribute-prefix <string>    prefix for xml attributes (default "+@")
# @option --xml-content-name <string>        name for xml content (if no attribute name is present).
# @option --xml-directive-name <string>      name for xml directives (e.g. <!DOCTYPE thing cat>) (default "+directive")
# @flag --xml-keep-namespace                 enables keeping namespace after parsing attributes (default true)
# @option --xml-proc-inst-prefix <string>    prefix for xml processing instructions (e.g. <?xml version="1"?>) (default "+p_")
# @flag --xml-raw-token                      enables using RawToken method instead Token.
# @flag --xml-skip-directives                skip over directives (e.g. <!DOCTYPE thing cat>)
# @flag --xml-skip-proc-inst                 skip over process instructions (e.g. <?xml version="1"?>)
# @flag --xml-strict-mode                    enables strict parsing of XML.
# @arg yaml_file1*
eval_() {
    :;
}
# }} yq eval

# {{ yq eval-all
# @cmd Loads _all_ yaml documents of _all_ yaml files and runs expression once
# @flag -h --help                            help for eval-all
# @flag -C --colors                          force print with colors
# @flag -e --exit-status                     set exit status if there are no matches or null or false is returned
# @option --expression <string>              forcibly set the expression argument.
# @option --from-file <file>                 Load expression from specified file.
# @option -f --front-matter <string>         (extract|process) first input as yaml front-matter.
# @flag --header-preprocess                  Slurp any header comments and separators before processing expression.
# @option -I --indent <int>                  sets indent level for output (default 2)
# @flag -i --inplace                         update the file in place of first file given.
# @option -p --input-format[auto|a|yaml|y|props|p|xml|x|tsv|t|csv|c|toml] <string>  parse format for input.
# @flag --lua-globals                        output keys as top-level global variables
# @option --lua-prefix <string>              prefix (default "return ")
# @option --lua-suffix <string>              suffix (default ";\n")
# @flag --lua-unquoted                       output unquoted string keys (e.g. {foo="bar"})
# @flag -M --no-colors                       force print with no colors
# @flag -N --no-doc                          Don't print document separators (---)
# @flag -0 --nul-output                      Use NUL char to separate values.
# @flag -n --null-input                      Don't read input, simply evaluate the expression given.
# @option -o --output-format[auto|a|yaml|y|json|j|props|p|xml|x|tsv|t|csv|c] <string>  output format type.
# @flag -P --prettyPrint                     pretty print, shorthand for '... style = ""'
# @option -s --split-exp <string>            print each result (or doc) into a file named (exp).
# @option --split-exp-file <file>            Use a file to specify the split-exp expression.
# @flag -r --unwrapScalar                    unwrap scalar, print the value with no quotes, colors or comments.
# @flag -v --verbose                         verbose mode
# @option --xml-attribute-prefix <string>    prefix for xml attributes (default "+@")
# @option --xml-content-name <string>        name for xml content (if no attribute name is present).
# @option --xml-directive-name <string>      name for xml directives (e.g. <!DOCTYPE thing cat>) (default "+directive")
# @flag --xml-keep-namespace                 enables keeping namespace after parsing attributes (default true)
# @option --xml-proc-inst-prefix <string>    prefix for xml processing instructions (e.g. <?xml version="1"?>) (default "+p_")
# @flag --xml-raw-token                      enables using RawToken method instead Token.
# @flag --xml-skip-directives                skip over directives (e.g. <!DOCTYPE thing cat>)
# @flag --xml-skip-proc-inst                 skip over process instructions (e.g. <?xml version="1"?>)
# @flag --xml-strict-mode                    enables strict parsing of XML.
# @arg yaml_file1*
eval-all() {
    :;
}
# }} yq eval-all

# {{ yq shell-completion
# @cmd Generate completion script
shell-completion() {
    :;
}
# }} yq shell-completion

command eval "$(argc --argc-eval "$0" "$@")"