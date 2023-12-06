#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug                           Turn on debugging output.
# @flag --debug-logfile                   FILENAME (since 2.3.0) The logfile to write the debugging info to, if --debug is given.
# @option --debug-loglevel[error|debug|data|all]  LEVEL (since 2.5.5) The verbosity of debug logging.
# @flag --hook-script                     FILENAME (new after 2.3.0) Execute the hook script FILENAME every time a certain event happens within gphoto2.
# @flag -q --quiet                        Quiet output (default=verbose).
# @flag -v --version                      Display version and exit.
# @flag -h --help                         Display options and short description.
# @flag --usage                           Display a short usage message.
# @flag --list-cameras                    List supported camera models.
# @flag --list-ports                      List supported port devices.
# @flag --stdout                          Send file to stdout.
# @flag --stdout-size                     Print filesize before data.
# @flag --parsable                        Outputs the filelist in a line based format that could be passed into a shellscript or other filter.
# @flag --auto-detect                     List auto-detected cameras and the ports to which they are connected.
# @option --port <PATH>                   Specify port device.
# @option --speed                         Specify serial transfer speed.
# @option --camera <MODEL>                Specify camera model.
# @option --filename                      When downloading files from the camera, specify the file name or file name pattern to use when storing the downloaded file on the local disk.
# @option --filenumber                    If you specify the filename using the --filename option and use the %n pattern, this pattern usually starts at 1.
# @option --usbid <USBIDS>                (Expert only) Override USB IDs.
# @flag -a --abilities                    Display the camera and driver abilities specified in the libgphoto2 driver.
# @option -f --folder                     Specify camera folder (default="/").
# @flag -R --recurse                      Recursion (default for download).
# @flag --no-recurse                      No recursion (default for deletion).
# @flag -l --list-folders                 List folders in folder.
# @flag -L --list-files                   List files in folder.
# @option -m --mkdir <NAME>               Create a directory.
# @option -r --rmdir <NAME>               Remove a directory.
# @flag -n --num-files                    Display number of files.
# @option -p --get-file <RANGE>           Get files given in range.
# @flag -P --get-all-files                Get all files from folder.
# @option -t --get-thumbnail <RANGE>      Get thumbnails given in range.
# @flag -T --get-all-thumbnails           Get all thumbnails from folder.
# @option --get-raw-data <RANGE>          Get raw data given in range.
# @flag --get-all-raw-data                Get all raw data from folder.
# @option --get-audio-data <RANGE>        Get audio data given in range.
# @flag --get-all-audio-data              Get all audio data from folder.
# @option --upload-metadata <FILENAME>    Upload meta data for the specific file, taken from a file prefix with meta_ .
# @option --get-metadata <RANGE>          Get meta data given in range.
# @flag --get-all-metadata                Get all meta data from folder.
# @flag --force-overwrite                 Overwrite files without asking.
# @flag --skip-existing                   Skip files if they exist already on the local directory.
# @flag --new                             Only get not already downloaded files.
# @option -d --delete-file <RANGE>        Delete files given in range.
# @flag -D --delete-all-files             Delete all files in folder (defaults to --no-recurse).
# @option -u --upload-file <FILENAME>     Upload a file to camera.
# @flag --capture-preview                 Capture a quick preview.
# @option -B--bulb <SECONDS>              Do a bulb capture for the specified amount of seconds.
# @flag --show-preview                    Capture a quick preview and displays it in the terminal using Ascii Art (if aalib was used during build).
# @option -F --frames <COUNT>             Number of frames to capture in one run.
# @option -I --interval <SECONDS>         Time between capture of multiple frames.
# @flag --reset-interval                  Setting this option will reset the time interval to the value given by the -I|--interval option when a SIGUSR1 signal is received in time-lapse mode.
# @flag --capture-image                   Capture an image and keep it on the camera.
# @flag --capture-image-and-download      Capture an image and download it immediately to the computer.
# @flag --trigger-capture                 Triggers the capture an image and return.
# @flag --keep                            When doing --capture-image-and-download or interval capture, this option will keep the images on the memory card of the camera.
# @flag --no-keep                         When doing --capture-image-and-download or interval capture, this option will not keep the images on the memory card of the camera after downloading them during capture.
# @flag --keep-raw                        When doing --capture-image-and-download or interval capture, this option will keep the RAW images on the memory card of the camera, but still download the JPEG images.
# @option --capture-movie <SECONDS>       Capture a movie.
# @flag --capture-sound                   Capture an audio clip.
# @flag --capture-tethered                SECONDS, MILLISECONDS, COUNT or MATCHSTRING Lets gphoto2 wait for notifications from the camera that an object was added.
# @flag --wait-event                      SECONDS, MILLISECONDS, COUNT or MATCHSTRING, --wait-event-and-download SECONDS, MILLISECONDS, COUNT or MATCHSTRING Lets gphoto2 wait for notifications from the camera for various events.
# @option --show-info <RANGE>             Show information for a single or multiple images, like width, height, size and/or the capture time
# @flag --config                          Starts a ncurses based text configuration menu.
# @flag --list-config                     List all configuration entries.
# @flag --list-all-config                 List all configuration entries and their values and choices.
# @option --get-config <CONFIGENTRY>      Get the specified configuration entry.
# @option --set-config <CONFIGENTRY=CONFIGVALUE>  Set the specified configuration entry.
# @option --set-config-index <CONFIGENTRY=CONFIGINDEX>  Set the specified configuration entry by specifying the index into the list of choices for the configuration value.
# @option --set-config-value <CONFIGENTRY=CONFIGVALUE>  Set the specified configuration entry by specifying its new value.
# @flag --reset                           Resets the specified (or autodetected) USB port.
# @flag --storage-info                    Display information about the camera's storage media.
# @flag --summary                         Summary of camera status.
# @flag --manual                          Camera driver manual.
# @flag --about                           About the camera driver.
# @flag --shell                           Start the gphoto2 shell, an interactive environment.

command eval "$(argc --argc-eval "$0" "$@")"