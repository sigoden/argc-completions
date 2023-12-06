#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A --action <[flag][[title]]action>     Specify a shell command as an action to perform on the image.
# @option --action1* <[flag][[title]]action>      Extra actions which can be set and triggered using the appropriate number key.
# @option --action9* <[flag][[title]]action>      Extra actions which can be set and triggered using the appropriate number key.
# @flag --auto-reload                             (optional feature, enabled in this build) automatically reload image when the underlying file changes.
# @flag --auto-rotate                             (optional feature, available in this build) (deprecated in favor of Imlib2's auto-orientation support) Automatically rotate images based on EXIF data.
# @flag -Z --auto-zoom                            Zoom pictures to screen size in fullscreen / fixed geometry mode.
# @flag -x --borderless                           Create borderless windows.
# @option --cache-size <size>                     Set imlib2 in-memory cache to size MiB.
# @flag -P --cache-thumbnails                     Enable thumbnail caching.
# @option -K --caption-path <path>                Path to directory containing image captions.
# @option --conversion-timeout <timeout>          feh can use ImageMagick to try converting unloadable files into a supported file format.
# @option --class <class>                         Set the X11 class hint to class.
# @option -L --customlist <format>                Don't display images, print image info according to format instead.
# @flag -G --draw-actions                         Draw the defined actions and what they do at the top-left of the image.
# @flag --draw-exif                               (optional feature, available in this build) display some EXIF information in the bottom left corner, similar to using --info with exiv2 / exifgrep.
# @flag -d --draw-filename                        Draw the file name at the top-left of the image.
# @flag --draw-tinted                             Show overlay texts (as created by --draw-filename et al) on a semi-transparent background to improve their readability.
# @flag --edit                                    Enable basic editing of files.
# @option -f --filelist <file>                    This option is similar to the playlists used by music software.
# @option -e --font <font>                        Set global font.
# @option -C --fontpath <path>                    Specify path as extra directory in which to search for fonts; can be used multiple times to add multiple paths.
# @flag --force-aliasing                          Disable anti-aliasing for zooming, background setting etc.
# @flag -I --fullindex                            Same as index mode, but with additional information below the thumbnails.
# @flag -F --fullscreen                           Make the window fullscreen.
# @flag -g --geometry                             width x height | + x + y | width x height + x + y Use a fixed window size as specified in the X-style geometry string, e.g. 640x480.
# @flag -Y --hide-pointer                         Hide the pointer (useful for slideshows).
# @option -B --image-bg <style>                   Use style as background for transparent image parts and the like.
# @flag -i --index                                Enable Index mode.
# @option --info <[flag]command_line>             Execute command_line and display its output in the bottom left corner of the image.
# @flag --insecure                                When viewing files with HTTPS, this option disables all certificate checks.
# @flag -k --keep-http                            When viewing files using HTTP, feh normally deletes the local copies after viewing, or, if caching, on exit.
# @flag --keep-zoom-vp                            When switching images, keep zoom and viewport settings (zoom level and X, Y offsets)
# @flag -l --list                                 Don't display images.
# @flag -U --loadable                             Don't display images.
# @option --max-dimension <width> <x> <height>    Only show images with width <= width and height <= height.
# @option -M --menu-font <font>                   Use font (truetype, with size, like "yudit/12") as menu font.
# @option --min-dimension <width> <x> <height>    Only show images with width >= width and height >= height.
# @flag -m --montage                              Enable montage mode.
# @flag -w --multiwindow                          Disable slideshow mode.
# @flag --no-conversion-cache                     When loading images via HTTP, ImageMagick or dcraw, feh will only load/convert them once and re-use the cached file on subsequent slideshow passes.
# @flag --no-jump-on-resort                       Don't jump to the first image after resorting the filelist.
# @flag -N --no-menus                             Don't load or show any menus.
# @flag --no-screen-clip                          By default, window sizes are limited to the screen size.
# @flag --no-xinerama                             (optional feature, enabled in this build) Disable Xinerama support.
# @flag --on-last-slide                           hold | quit | resume Select behaviour when trying to select the next image on the last slide (or the previous image on the first slide) in a slide show.
# @option -j --output-dir <directory>             Save files to directory when using --keep-http or the save_image or save_filelist command.
# @flag -p --preload                              Preload images.
# @flag -q --quiet                                Don't report non-fatal errors for failed loads.
# @flag -z --randomize                            When viewing multiple files in a slideshow, randomize the file list before displaying.
# @flag -r --recursive                            Recursively expand any directories in the command line arguments to the content of those directories, all the way down to the bottom level.
# @flag --no-recursive                            Don't recursively expand any directories.
# @option -R --reload <int>                       Reload filelist and current image after int seconds.
# @flag -n --reverse                              Reverse the sort order.
# @flag -. --scale-down                           Scale images to fit window geometry (defaults to screen size when no geometry was specified).
# @option --scroll-step <count>                   Scroll count pixels whenever scroll_up, scroll_down, scroll_left or scroll_right is pressed.
# @option -D --slideshow-delay <float>            For slideshow mode, wait float seconds between automatically changing slides.
# @option -S --sort[name|none|filename|dirname|mtime|width|height|pixels|size|format] <sort_type>  Sort file list according to image parameters.
# @option --start-at <filename>                   Start the filelist at filename.
# @option -T --theme <theme>                      Load options from config file with name theme - see THEMES CONFIG SYNTAX for more info.
# @flag -t --thumbnails                           Same as Index mode, but the thumbnails are clickable image launchers.
# @option -~ --thumb-title <string>               Set title for windows opened from thumbnail mode.
# @option -^ --title <title>                      Set window title.
# @flag -u --unloadable                           Don't display images.
# @flag -V --verbose                              output useful information, progress bars, etc.
# @flag -v --version                              output version information and exit.
# @flag --version-sort                            When combined with --sort name, --sort filename, or --sort dirname: use natural sorting for file and directory names.
# @option --window-id <windowid>                  Draw to an existing X11 window by its ID windowid.
# @option --xinerama-index <monitor>              (optional feature, enabled in this build) Override feh's idea of the active Xinerama monitor.
# @flag --zoom                                    percent | max | fill Zoom images by percent when in full screen mode or when window geometry is fixed.
# @option --zoom-step <percent>                   Zoom images in and out by percent (default: 25) when using the zoom keys and buttons.
# @option -a --alpha <int>                        When drawing thumbnails onto the background, set their transparency level to int (0 - 255).
# @flag -b --bg                                   file | trans Use file as background for your montage.
# @flag -X --ignore-aspect                        By default, the montage thumbnails will retain their aspect ratios, while fitting into thumb-width/-height.
# @option -H --limit-height <pixels>              Limit the height of the montage.
# @option -W --limit-width <pixels>               Limit the width of the montage, defaults to 800 pixels.
# @option -o --output <file>                      Save the created montage to file.
# @option -O --output-only <file>                 Just save the created montage to file without displaying it.
# @flag -s --stretch                              Normally, if an image is smaller than the specified thumbnail size, it will not be enlarged.
# @option -E --thumb-height <pixels>              Set thumbnail height.
# @option -y --thumb-width <pixels>               Set thumbnail width.
# @option --index-info <format>                   Show image information based on format below thumbnails in index / thumbnail mode.
# @option -@ --title-font <font>                  Set font to print a title on the index, if no font is specified, no title will be printed.
# @option -J --thumb-redraw <n>                   Redraw thumbnail window every n images while generating thumbnails.
# @flag --bg-center                               Center the file on the background.
# @flag --bg-fill                                 Like --bg-scale, but preserves aspect ratio by zooming the image until it fits.
# @flag --bg-max                                  Like --bg-fill, but scale the image to the maximum size that fits the screen with borders on one side.
# @flag --bg-scale                                Fit the file into the background without repeating it, cutting off stuff or using borders.
# @flag --bg-tile                                 Tile (repeat) the image in case it is too small for the screen
# @flag --no-fehbg                                Do not write a ~/.fehbg file
# @arg files-directories-urls* <files|directories|URLs>

command eval "$(argc --argc-eval "$0" "$@")"