#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --width <max width>               This optional parameter allows one to limit the width of the exported image to that number of pixels.
# @option --height <max height>             This optional parameter allows one to limit the height of the exported image to that number of pixels.
# @option --bpp <bpp>                       An optional parameter to define the bit depth of the exported image; allowed values depend on the file format.
# @option --hq[0|1|true|false]              A flag that defines whether to use high quality resampling during export.
# @option --upscale[0|1|true|false]         A flag that defines whether to allow upscaling during export.
# @option --export_masks[0|1|true|false]    A flag that defines whether masks used in the image will be stored as layers in the exported image (provided the format supports it).
# @option --style <style name>              Specify the name of a style to be applied during export.
# @flag --style-overwrite                   The specified style overwrites the history stack instead of being appended to it.
# @flag --apply-custom-presets              With this option you can decide if darktable loads its set of default parameters from data.db and applies them.
# @flag --verbose                           Enables verbose output.
# @option --core <darktable options>        All command line parameters following --core are passed to the darktable core and handled as standard parameters.
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"