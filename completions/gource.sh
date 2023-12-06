#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                              Help
# @flag -WIDTHxHEIGHT                          Set viewport size
# @flag --viewport                             Set viewport size
# @flag -f --fullscreen                        Fullscreen
# @option --screen                             Screen number
# @flag --multi-sampling                       Enable multi-sampling
# @flag --high-dpi                             Request a high DPI display
# @flag --no-vsync                             Disable vsync
# @option --start-date <YYYY-MM-DD hh:mm:ss +tz>  Start at a date and optional time
# @flag --stop-date                            'YYYY-MM-DD hh:mm:ss +tz'  Stop at a date and optional time
# @option -p --start-position <POSITION>       Start at some position (0.0-1.0 or 'random')
# @flag --stop-position                        POSITION  Stop at some position
# @option -t --stop-at-time <SECONDS>          Stop after a specified number of seconds
# @flag --stop-at-end                          Stop at end of the log
# @flag --dont-stop                            Keep running after the end of the log
# @flag --loop                                 Loop at the end of the log
# @option -a --auto-skip-seconds <SECONDS>     Auto skip to next entry if nothing happens for a number of seconds (default: 3)
# @flag --disable-auto-skip                    Disable auto skip
# @option -s --seconds-per-day <SECONDS>       Speed in seconds per day (default: 10)
# @flag --realtime                             Realtime playback speed
# @flag --no-time-travel                       Use the time of the last commit if the time of a commit is in the past
# @option -c --time-scale <SCALE>              Change simulation time scale (default: 1.0)
# @option -e --elasticity <FLOAT>              Elasticity of nodes (default: 0.0)
# @flag --key                                  Show file extension key
# @option --user-image-dir <DIRECTORY>         Dir containing images to use as avatars
# @option --default-user-image <IMAGE>         Default user image file
# @flag --fixed-user-size                      Use a fixed size throughout
# @flag --colour-images                        Colourize user images
# @option -i --file-idle-time <SECONDS>        Time files remain idle (default: 0)
# @option --file-idle-time-at-end <SECONDS>    Time files remain idle at end (default: 0)
# @option --max-files <NUMBER>                 Max number of files or 0 for no limit
# @option --max-file-lag <SECONDS>             Max time files of a commit can take to appear
# @option --log-command[git|svn|hg|bzr|cvs2cl] <VCS>  Show the VCS log command
# @option --log-format[git|svn|hg|bzr|cvs2cl|custom]  VCS  Specify the log format
# @option --load-config <CONF_FILE>            Load a config file
# @option --save-config <CONF_FILE>            Save a config file with the current options
# @option -o --output-ppm-stream <FILE>        Output PPM stream to a file ('-' for STDOUT)
# @option -r --output-framerate[25|30|60]      FPS  Framerate of output
# @arg path

command eval "$(argc --argc-eval "$0" "$@")"