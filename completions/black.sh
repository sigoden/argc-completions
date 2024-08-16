#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --code <TEXT>                  Format the code passed in as a string.
# @option -l --line-length <INTEGER>        How many characters per line to allow.
# @option -t --target-version[py33|py34|py35|py36|py37|py38|py39|py310|py311|py312|py313]  Python versions that should be supported by Black's output.
# @flag --pyi                               Format all input files like typing stubs regardless of file extension.
# @flag --ipynb                             Format all input files like Jupyter Notebooks regardless of file extension.
# @option --python-cell-magics[capture|prun|pypy|python|python3|time|timeit] <TEXT>  When processing Jupyter Notebooks, add the given magic to the list of known python-magics.
# @flag -x --skip-source-first-line         Skip the first line of the source code.
# @flag -S --skip-string-normalization      Don't normalize string quotes or prefixes.
# @flag -C --skip-magic-trailing-comma      Don't use trailing commas as a reason to split lines.
# @flag --preview                           Enable potentially disruptive style changes that may be added to Black's main functionality in the next major release.
# @flag --unstable                          Enable potentially disruptive style changes that have known bugs or are not currently expected to make it into the stable style Black's next major release.
# @option --enable-unstable-feature[hex_codes_in_unicode_sequences|string_processing|hug_parens_with_braces_and_square_brackets|unify_docstring_detection|no_normalize_fmt_skip_whitespace|wrap_long_dict_values_in_parens|multiline_string_handling|typed_params_trailing_comma|is_simple_lookup_for_doublestar_expression|docstring_check_for_newline|remove_redundant_guard_parens|parens_for_long_if_clauses_in_case_block]  Enable specific features included in the `--unstable` style.
# @flag --check                             Don't write the files back, just return the status.
# @flag --diff                              Don't write the files back, just output a diff to indicate what changes Black would've made.
# @flag --color                             Show (or do not show) colored diff.
# @flag --no-color                          Show (or do not show) colored diff.
# @option --line-ranges <START-END>         When specified, Black will try its best to only format these lines.
# @flag --fast                              By default, Black performs an AST safety check after formatting your code.
# @flag --safe                              By default, Black performs an AST safety check after formatting your code.
# @option --required-version <TEXT>         Require a specific version of Black to be running.
# @option --exclude <TEXT>                  A regular expression that matches files and directories that should be excluded on recursive searches.
# @option --extend-exclude <TEXT>           Like --exclude, but adds additional files and directories on top of the default values instead of overriding them.
# @option --force-exclude <TEXT>            Like --exclude, but files and directories matching this regex will be excluded even when they are passed explicitly as arguments.
# @option --stdin-filename <TEXT>           The name of the file when passing it through stdin.
# @option --include <TEXT>                  A regular expression that matches files and directories that should be included on recursive searches.
# @option -W --workers <INTEGER> <RANGE>    When Black formats multiple files, it may use a process pool to speed up formatting.
# @flag -q --quiet                          Stop emitting all non-critical output.
# @flag -v --verbose                        Emit messages about files that were not changed or were ignored due to exclusion patterns.
# @flag --version                           Show the version and exit.
# @option --config <FILE>                   Read configuration options from a configuration file.
# @flag -h --help                           Show this message and exit.
# @arg src_file

command eval "$(argc --argc-eval "$0" "$@")"