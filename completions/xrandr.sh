#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                               Print out the RandR version reported by the X server and exit.
# @flag --verbose                                  Causes xrandr to be more verbose.
# @flag -q --query                                 When this option is present, or when no configuration changes are requested, xrandr will display the current state of the system.
# @flag --dryrun                                   Performs all the actions specified except that no changes are made.
# @flag --nograb                                   Apply the modifications without grabbing the screen.
# @option -d --display <name>                      This option selects the X display to use.
# @option --screen <snum>                          This option selects which screen to manipulate.
# @flag --q1                                       Forces the usage of the RandR version 1.1 protocol, even if a higher version is available.
# @flag --q12                                      Forces the usage of the RandR version 1.2 protocol, even if the display does not report it as supported or a higher version is available.
# @flag --listmonitors                             Report information about all defined monitors.
# @flag --listactivemonitors                       Report information about currently active monitors.
# @option --setmonitor <name> <geometry> <outputs>  Define a new monitor with the given geometry and associated to the given outputs.
# @option --delmonitor <name>                      Delete the given user-defined monitor.
# @flag --listproviders                            Report information about the providers available.
# @option --setprovideroutputsource <provider> <source>  Set source as the source of display output images for provider.
# @option --setprovideroffloadsink <provider> <sink>  Set provider as a render offload device for sink.
# @flag --current                                  Return the current screen configuration, without polling for hardware changes.
# @flag --noprimary                                Don't define a primary output.
# @option --panning <widthxheight[+x+y[/track_widthxtrack_height+track_x+track_y[/border_left/border_top/border_right/border_bottom]]]>  This option sets the panning parameters.
# @option --transform <a,b,c,d,e,f,g,h,i>          Specifies a transformation matrix to apply on the output.
# @option --filter <filtermode>                    Chooses the scaling filter method to be applied when the screen is scaled or transformed.
# @option --scale <x[xy]>                          Changes the dimensions of the output picture.
# @option --scale-from <wxh>                       Specifies the size in pixels of the area of the framebuffer to be displayed on this output.
# @flag --primary                                  Set the output as primary.
# @flag --prop                                     This option causes xrandr to display the contents of properties for each output.
# @flag --properties                               This option causes xrandr to display the contents of properties for each output.
# @option --fb <widthxheight>                      Reconfigures the screen to the specified size.
# @option --fbmm <widthxheight>                    Sets the value reported as physical size of the X screen as a whole (union of all configured monitors).
# @option --dpi <from-output>                      This also sets the value reported as physical size of the X screen as a whole (union of all configured monitors).
# @option --newmode <name> <mode>                  New modelines can be added to the server and then associated with outputs.
# @option --rmmode <name>                          This removes a mode from the server if it is otherwise unused.
# @option --addmode <output> <name>                Add a mode to the set of valid modes for an output.
# @option --delmode <output> <name>                Remove a mode from the set of valid modes for an output.
# @option --output <output>                        Selects an output to reconfigure.
# @flag --auto                                     For connected but disabled outputs, this will enable them using their first preferred mode (or, something close to 96dpi if they have no preferred mode).
# @option --mode <mode>                            This selects a mode.
# @flag --preferred                                This selects the same mode as --auto, but it doesn't automatically enable or disable the output.
# @option --pos <xxy>                              Position the output within the screen using pixel coordinates.
# @option --reflect[normal|x|y|xy] <reflection>    Reflection can be one of 'normal' 'x', 'y' or 'xy'.
# @option --rotate[normal|left|right|inverted] <rotation>  Rotation can be one of 'normal', 'left', 'right' or 'inverted'.
# @option --left-of <another-output>               Use one of these options to position the output relative to the position of another output.
# @option --right-of <another-output>              Use one of these options to position the output relative to the position of another output.
# @option --above <another-output>                 Use one of these options to position the output relative to the position of another output.
# @option --below <another-output>                 Use one of these options to position the output relative to the position of another output.
# @option --same-as <another-output>               Use one of these options to position the output relative to the position of another output.
# @option --set <property> <value>                 Sets an output property.
# @flag --off                                      Disables the output.
# @option --crtc <crtc>                            Uses the specified crtc (either as an index in the list of CRTCs or XID).
# @option --gamma <red[:green:blue]>               Set the specified floating point values as gamma correction on the crtc currently attached to this output.
# @option --brightness <brightness>                Multiply the gamma values on the crtc currently attached to the output to specified floating value.
# @flag -s --size                                  size-index or --size widthxheight This sets the screen size, either matching by size or using the index into the list of available sizes.
# @option -r <rate>                                This sets the refresh rate closest to the specified value.
# @option --rate <rate>                            This sets the refresh rate closest to the specified value.
# @option --refresh <rate>                         This sets the refresh rate closest to the specified value.
# @option -o --orientation[normal|inverted|left|right] <rotation>  This specifies the orientation of the screen, and can be one of normal, inverted, left or right.
# @flag -x                                         Reflect across the X axis.
# @flag -y                                         Reflect across the Y axis.

command eval "$(argc --argc-eval "$0" "$@")"