#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b                                    issue warnings about str(bytes_instance), str(bytearray_instance) and comparing bytes/bytearray with str.
# @flag -B                                    don't write .pyc files on import; also PYTHONDONTWRITEBYTECODE=x
# @option -c <cmd>                            program passed in as string (terminates option list)
# @flag -d                                    turn on parser debugging output (for experts only, only works on debug builds); also PYTHONDEBUG=x
# @flag -E                                    ignore PYTHON* environment variables (such as PYTHONPATH)
# @flag -h                                    print this help message and exit (also -? or --help)
# @flag -i                                    inspect interactively after running script; forces a prompt even if stdin does not appear to be a terminal; also PYTHONINSPECT=x
# @flag -I                                    isolate Python from the user's environment (implies -E and -s)
# @option -m[`_choice_model_cached`] <mod>    run library module as a script (terminates option list)
# @flag -O                                    remove assert and __debug__-dependent statements; add .opt-1 before .pyc extension; also PYTHONOPTIMIZE=x
# @flag -OO                                   do -O changes and also discard docstrings; add .opt-2 before .pyc extension
# @flag -P                                    don't prepend a potentially unsafe path to sys.path; also PYTHONSAFEPATH
# @flag -q                                    don't print version and copyright messages on interactive startup
# @flag -s                                    don't add user site directory to sys.path; also PYTHONNOUSERSITE
# @flag -S                                    don't imply 'import site' on initialization
# @flag -u                                    force the stdout and stderr streams to be unbuffered; this option has no effect on stdin; also PYTHONUNBUFFERED=x
# @flag -v                                    verbose (trace import statements); also PYTHONVERBOSE=x can be supplied multiple times to increase verbosity
# @flag -V                                    print the Python version number and exit (also --version) when given twice, print more information about the build
# @option -W <arg>                            warning control; arg is action:message:category:module:lineno also PYTHONWARNINGS=arg
# @flag -x                                    skip first line of source, allowing use of non-Unix forms of ♯!cmd
# @option -X[`_choice_opt`] <opt>             set implementation-specific option
# @option --check-hash-based-pycs[always|default|never]  control how Python invalidates hash-based .pyc files
# @flag --help-env                            print help about Python environment variables and exit
# @flag --help-xoptions                       print help about implementation-specific -X options and exit
# @flag --help-all                            print complete help information and exit
# @arg file
# @arg args*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_model_cached() {
    _argc_util_cache 86400 _choice_model
}

_choice_opt() {
    cat <<-'EOF' | _argc_util_comp_kv =
faulthandler;;enable faulthandler
oldparser;;enable the traditional LL(1) parser; also PYTHONOLDPARSER
showrefcount;;output the total reference count and number of used memory
tracemalloc;;start tracing Python memory allocations using the tracemalloc module
importtime;;show how long each import takes
dev;;enable CPython's development mode
utf8;;enable UTF-8 mode for operating system interfaces
pycache_prefix=__argc_value=dir;;enable writing .pyc files to a parallel tree
EOF
}

_choice_model() {
    python -c "help('modules')" 2>/dev/null | \
    gawk 'BEGIN {
            split("", LINES)
            LINES_LEN = 0
        }
        {
            LINES_LEN = LINES_LEN + 1
            LINES[LINES_LEN] = $0
        }
        END {
            for (i in LINES) {
                if (i > 3 && i < LINES_LEN - 3) {
                    gsub(/\s+/, "\n", LINES[i])
                    print LINES[i]
                }
            }
        }'
}

command eval "$(argc --argc-eval "$0" "$@")"