#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --autohide_time                           Automatically hides the time scale in graphs after being shown for a brief moment when zoomed in/out.
# @flag -b --basic                                Hides graphs and uses a more basic look, largely inspired by htop's design.
# @option -C --config_location <PATH>             Sets the location of the config file.
# @option -t --default_time_value <TIME>          Default time value for graphs.
# @option --default_widget_count <N>              Sets the N'th selected widget type to use as the default widget.
# @option --default_widget_type[cpu|mem|net|network|proc|process|processes|temp|temperature|disk|batt|battery] <WIDGET>  Sets which widget type to use as the default widget.
# @flag --disable_click                           Disables mouse clicks from interacting with bottom.
# @flag -m --dot_marker                           Uses a dot marker for graphs as opposed to the default braille marker.
# @flag -e --expanded                             Expand the default widget upon starting the app.
# @flag --hide_table_gap                          Hides spacing between table headers and entries.
# @flag --hide_time                               Hides the time scale from being shown.
# @option -r --rate <TIME>                        Sets how often data is refreshed.
# @option --retention <TIME>                      How far back data will be stored up to.
# @flag --show_table_scroll_position              Shows the list scroll position tracker in the widget title for table widgets.
# @option -d --time_delta <TIME>                  The amount of time changed when zooming in/out.
# @flag -S --case_sensitive                       Enables case sensitivity by default when searching for a process.
# @flag -u --current_usage                        Calculates process CPU usage as a percentage of current usage rather than total usage.
# @flag --disable_advanced_kill                   Hides additional stopping options Unix-like systems.
# @flag -g --group_processes                      Groups processes with the same name by default.
# @flag --process_memory_as_value                 Defaults to showing process memory usage by value.
# @flag --process_command                         Shows the full command name instead of the process name by default.
# @flag -R --regex                                Enables regex by default while searching.
# @flag -T --tree                                 Makes the process widget use tree mode by default.
# @flag -n --unnormalized_cpu                     Show process CPU% usage without averaging over the number of CPU cores.
# @flag -W --whole_word                           Enables whole-word matching by default while searching.
# @flag -c --celsius                              Use Celsius as the temperature unit.
# @flag -f --fahrenheit                           Use Fahrenheit as the temperature unit.
# @flag -k --kelvin                               Use Kelvin as the temperature unit.
# @flag -l --cpu_left_legend                      Puts the CPU chart legend on the left side.
# @option --default_cpu_entry[all|avg] <ENTRY>    Sets which CPU entry type is selected by default.
# @flag -a --hide_avg_cpu                         Hides the average CPU usage entry.
# @option --memory_legend[none|top-left|top|top-right|left|right|bottom-left|bottom|bottom-right] <POSITION>  Where to place the legend for the memory chart widget.
# @flag --enable_cache_memory                     Enables collecting and displaying cache and buffer memory.
# @option --network_legend[none|top-left|top|top-right|left|right|bottom-left|bottom|bottom-right] <POSITION>  Where to place the legend for the network chart widget.
# @flag --network_use_bytes                       Displays the network widget using bytes.
# @flag --network_use_binary_prefix               Displays the network widget with binary prefixes (e.g. kibibits, mebibits) rather than a decimal prefixes (e.g. kilobits, megabits).
# @flag --network_use_log                         Displays the network widget with a log scale.
# @flag --use_old_network_legend                  (DEPRECATED) Uses separate network widget legend.
# @flag --battery                                 Shows the battery widget in default or basic mode, if there is as battery available.
# @flag --enable_gpu                              Enable collecting and displaying GPU usage.
# @option --theme <SCHEME>                        Use a pre-defined color theme.
# @flag -h --help                                 Prints help info (for more details use '--help'.
# @flag -V --version                              Prints version information.

command eval "$(argc --argc-eval "$0" "$@")"