#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i[on|off]                            Turn indexing on or off.
# @flag -d                                      Disable Spotlight activity for volume (re-enable using -i on).
# @flag -E                                      Erase and rebuild index.
# @flag -s                                      Print indexing status.
# @flag -a                                      Apply command to all stores on all volumes.
# @flag -t                                      Resolve files from file id with an optional volume path or device id.
# @flag -p                                      Publish metadata.
# @option -V[`_choice_volume`] <vol>            Apply command to all stores on the specified volume.
# @flag -v                                      Display verbose information.
# @option -r <plugins>                          Ask the server to reimport files for UTIs claimed by the listed plugin.
# @option -L[`_choice_volume`] <volume-path>    List the directory contents of the Spotlight index on the specified volume.
# @option -P[`_choice_volume`] <volume-path>    Dump the VolumeConfig.plist for the specified volume.
# @option -X[`_choice_volume`] <volume-path>    Remove the Spotlight index directory on the specified volume.
# @arg volume*[`_choice_volume`]

_choice_volume() {
    mdutil -a -s | sed 'N;s/:\n\s*/\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"