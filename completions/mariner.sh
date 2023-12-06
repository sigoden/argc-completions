#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                           show program's version number and exit
# @flag -v --verbose                        Increase verbosity of output.
# @flag -q --quiet                          Suppress output except warnings and errors.
# @flag -h --help                           Show help message and exit.
# @flag --debug                             Show tracebacks on errors.
# @option --log-file <LOG_FILE>             Specify a file to log output.
# @option -c --config-file <CONFIG_FILE>    Path to config file.

# {{ mariner complete
# @cmd print bash completion command (cliff)
# @flag -h --help                  show this help message and exit
# @option --name <command_name>    Command name to support with command completion
# @option --shell <shell>          Shell being used.
complete() {
    :;
}
# }} mariner complete

# {{ mariner config
# @cmd Show or update configuration.
# @flag -h --help    show this help message and exit
# @flag -s --show    Show the configuration
# @arg key           Option to change
# @arg value         New value
config() {
    :;
}
# }} mariner config

# {{ mariner details
# @cmd Show details about torrent with given ID.
# @flag -h --help                  show this help message and exit
# @option -f --format[json|shell|table|value|yaml]  the output format, defaults to table
# @option -c --column              specify the column(s) to include, can be repeated to show multiple columns
# @flag --noindent                 whether to disable indenting the JSON
# @option --prefix                 add a prefix to all variable names
# @option --max-width <integer>    Maximum display width, <1 to disable.
# @flag --fit-width                Fit the table to the display width.
# @flag --print-empty              Print empty table if there is no data to show.
# @arg id                          ID of the torrent to show
details() {
    :;
}
# }} mariner details

# {{ mariner download
# @cmd Download torrent with given ID.
# @flag -h --help                                 show this help message and exit
# @option -p --path                               Path to downloads torrent files to
# @option -f --format[csv|json|table|value|yaml]  the output format, defaults to table
# @option -c --column                             specify the column(s) to include, can be repeated to show multiple columns
# @option --sort-column <SORT_COLUMN>             specify the column(s) to sort the data (columns specified first have a priority, non-existing columns are ignored), can be repeated
# @flag --sort-ascending                          sort the column(s) in ascending order
# @flag --sort-descending                         sort the column(s) in descending order
# @option --quote[all|minimal|none|nonnumeric]    when to include quotes, defaults to nonnumeric
# @flag --noindent                                whether to disable indenting the JSON
# @option --max-width <integer>                   Maximum display width, <1 to disable.
# @flag --fit-width                               Fit the table to the display width.
# @flag --print-empty                             Print empty table if there is no data to show.
# @arg id                                         ID of the torrent to download
download() {
    :;
}
# }} mariner download

# {{ mariner magnet
# @cmd Copy magnet link with given ID to clipboard.
# @flag -h --help    show this help message and exit
# @arg id            ID of the magnet link to copy
magnet() {
    :;
}
# }} mariner magnet

# {{ mariner open
# @cmd Open torrent in the default torrent application.
# @flag -h --help    show this help message and exit
# @arg id            ID of the torrents to open
open() {
    :;
}
# }} mariner open

# {{ mariner search
# @cmd Search for torrents.
# @flag -h --help                                 show this help message and exit
# @flag -a --all                                  Search all available trackers
# @flag -A --anime                                Search trackers with anime content only
# @option -F --filter[anime|legal]                Filter trackers that should be searched
# @flag -L --legal                                Search trackers with legal content only
# @option -l --limit                              Limit the number of results shown.
# @flag -n --newest                               Sort results by newest
# @option -t --trackers[etree|tokyotosho|tt|nyaa|linuxtracker|limetorrents|lime|archive|nyaapantsu|distrowatch]  Trackers that should be searched
# @option -f --format[csv|json|table|value|yaml]  the output format, defaults to table
# @option -c --column                             specify the column(s) to include, can be repeated to show multiple columns
# @option --sort-column <SORT_COLUMN>             specify the column(s) to sort the data (columns specified first have a priority, non-existing columns are ignored), can be repeated
# @flag --sort-ascending                          sort the column(s) in ascending order
# @flag --sort-descending                         sort the column(s) in descending order
# @option --quote[all|minimal|none|nonnumeric]    when to include quotes, defaults to nonnumeric
# @flag --noindent                                whether to disable indenting the JSON
# @option --max-width <integer>                   Maximum display width, <1 to disable.
# @flag --fit-width                               Fit the table to the display width.
# @flag --print-empty                             Print empty table if there is no data to show.
# @arg title                                      Title to search for
search() {
    :;
}
# }} mariner search

command eval "$(argc --argc-eval "$0" "$@")"