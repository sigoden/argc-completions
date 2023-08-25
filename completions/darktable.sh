#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cachedir <cache directory>      darktable keeps a cache of image thumbnails for fast image preview and of precompiled OpenCL binaries for fast startup.
# @option --conf <<key>=<value>>            darktable supports a rich set of configuration parameters which the user defines in "darktablerc" - darktable's configuration file in the user config directory.
# @option --configdir <config directory>    This option defines the directory where darktable stores the user specific configuration.
# @option -d[`_choice_debug_option`] <debug option>  This option enables debug output to the terminal.
# @option --datadir <data directory>        This option defines the directory where darktable finds its runtime data.
# @flag --disable-opencl                    Prevent darktable from initializing the OpenCL subsystem.
# @flag -h --help                           Show the available command line options and exit.
# @option --library <file:.db>              darktable keeps image information in an sqlite database for fast access.
# @option --localedir <locale directory>    The place where darktable finds its language specific text strings.
# @option --luacmd <lua command>            A string containing lua commands to execute after lua initialization.
# @option --moduledir <module directory>    darktable has a modular structure and organizes its modules as shared libraries for loading at runtime.
# @option --noiseprofiles <file:.json>      darktable's profiled denoise module uses camera specific profile data that gets loaded from an external JSON file.
# @option -t <num openmp threads>           darktable uses OpenMP to parallelize many computation steps and make use of all the available CPU cores.
# @option --tmpdir <tmp directory>          The place where darktable stores its temporary files.
# @flag --version                           Show the darktable version along with some important build options and exit.
# @arg paths*

_choice_debug_option() {
    printf "%s\n" all cache camctl camsupport control dev fswatch input lighttable lua masks memory nan opencl perf pwstorage print sql ioporder imageio
}

command eval "$(argc --argc-eval "$0" "$@")"