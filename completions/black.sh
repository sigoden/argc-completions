#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --code <TEXT>                  Format the code passed in as a string.
# @option -l --line-length <INTEGER>        How many characters per line to allow.
# @option -t --target-version[py33|py34|py35|py36|py37|py38|py39|py310|py311|py312]  Python versions that should be supported by Black's output.
# @flag --pyi                               Format all input files like typing stubs regardless of file extension (useful when piping source on standard input).
# @flag --ipynb                             Format all input files like Jupyter Notebooks regardless of file extension (useful when piping source on standard input).
# @option --python-cell-magics[capture|prun|pypy|python|python3|time|timeit] <TEXT>  When processing Jupyter Notebooks, add the given magic to the list of known python-magics.
# @flag -x --skip-source-first-line         Skip the first line of the source code.
# @flag -S --skip-string-normalization      Don't normalize string quotes or prefixes.
# @flag -C --skip-magic-trailing-comma      Don't use trailing commas as a reason to split lines.
# @flag --preview                           Enable potentially disruptive style changes that may be added to Black's main functionality in the next major release.
# @flag --check                             Don't write the files back, just return the status.
# @flag --diff                              Don't write the files back, just output a diff for each file on stdout.
# @option --line-ranges <START-END>         When specified, _Black_ will try its best to only format these lines.
# @flag --color                             Show colored diff.
# @flag --no-color                          Show colored diff.
# @flag --fast                              If --fast given, skip temporary sanity checks.
# @flag --safe                              If --fast given, skip temporary sanity checks.
# @option --required-version <TEXT>         Require a specific version of Black to be running (useful for unifying results across many environments e.g. with a pyproject.toml file).
# @option --include[Windows|too] <TEXT>     A regular expression that matches files and directories that should be included on recursive searches.
# @option --exclude <TEXT>                  A regular expression that matches files and directories that should be excluded on recursive searches.
# @option --extend-exclude <TEXT>           Like --exclude, but adds additional files and directories on top of the excluded ones.
# @option --force-exclude <TEXT>            Like --exclude, but files and directories matching this regex will be excluded even when they are passed explicitly as arguments.
# @option --stdin-filename <TEXT>           The name of the file when passing it through stdin.
# @option -W --workers <INTEGER> <RANGE>    Number of parallel workers [default: BLACK_NUM_WORKERS environment variable or number of CPUs in the system]  [x>=1]
# @flag -q --quiet                          Don't emit non-error messages to stderr.
# @flag -v --verbose                        Also emit messages to stderr about files that were not changed or were ignored due to exclusion patterns.
# @flag --version                           Show the version and exit.
# @option --config <FILE>                   Read configuration from FILE path.
# @flag -h --help                           Show this message and exit.
# @arg src_file

command eval "$(argc --argc-eval "$0" "$@")"