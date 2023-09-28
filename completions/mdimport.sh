#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -i                recursively import files at 'path', sending results to Spotlight index (implied if no other option is specified)
# @flag -t                spotlight server will test-import the specific file, but not send the results to the Spotlight index
# @option -d <level>      output information from test-import.
# @option -o <outfile>    save test-import attributes to 'outfile'.
# @flag -p                Print performance information gathered during test-import.
# @flag -A                Print the list of all known attributes and exit
# @flag -X                Print the schema file and exit
# @flag -L                Print the list of known plug-ins which can be used by Spotlight
# @flag -r                Ask the server to reimport files for UTIs claimed by plug-in at 'path'
# @flag -e                Print all the modern importers available
# @flag -m                Import files using modern importers.
# @option -y <type>       Type of the file.
# @option -u <urls>       URLs for the files.
# @arg path*

command eval "$(argc --argc-eval "$0" "$@")"