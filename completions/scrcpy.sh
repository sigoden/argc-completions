#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --always-on-top                          Make scrcpy window always on top (above other windows).
# @option --audio-bit-rate <value>               Encode the audio at the given bit rate, expressed in bits/s.
# @option --audio-buffer <ms>                    Configure the audio buffering delay (in milliseconds).
# @option --audio-codec[opus|aac|flac|raw] <name>  Select an audio codec (opus, aac, flac or raw).
# @option --audio-codec-options <key[:type]=value[,...]>  Set a list of comma-separated key:type=value options for the device audio encoder.
# @option --audio-encoder <name>                 Use a specific MediaCodec audio encoder (depending on the codec provided by --audio-codec).
# @option --audio-source[output|mic] <source>    Select the audio source (output or mic).
# @option --audio-output-buffer <ms>             Configure the size of the SDL audio output buffer (in milliseconds).
# @option -b --video-bit-rate <value>            Encode the video at the given bit rate, expressed in bits/s.
# @option --camera-ar <ar>                       Select the camera size by its aspect ratio (+/- 10%).
# @option --camera-id <id>                       Specify the device camera id to mirror.
# @option --camera-facing[front|back|external] <facing>  Select the device camera by its facing direction.
# @flag --camera-high-speed                      Enable high-speed camera capture mode.
# @option --camera-size <<width>x<height>>       Specify an explicit camera capture size.
# @option --camera-fps <value>                   Specify the camera capture frame rate.
# @option --crop <width:height:x:y>              Crop the device screen on the server.
# @flag -d --select-usb                          Use USB device (if there is exactly one, like adb -d).
# @flag --disable-screensaver                    Disable screensaver while scrcpy is running.
# @option --display-buffer <ms>                  Add a buffering delay (in milliseconds) before displaying.
# @option --display-id <id>                      Specify the device display id to mirror.
# @option --display-orientation[0|90|180|270|flip0|flip90|flip180|flip270] <value>  Set the initial display orientation.
# @flag -e --select-tcpip                        Use TCP/IP device (if there is exactly one, like adb -e).
# @flag -f --fullscreen                          Start in fullscreen.
# @flag --force-adb-forward                      Do not attempt to use "adb reverse" to connect to the device.
# @flag --forward-all-clicks                     By default, right-click triggers BACK (or POWER on) and middle-click triggers HOME.
# @flag -h --help                                Print this help.
# @flag --kill-adb-on-close                      Kill adb when scrcpy terminates.
# @flag -K --hid-keyboard                        Simulate a physical keyboard by using HID over AOAv2.
# @flag --legacy-paste                           Inject computer clipboard text as a sequence of key events on Ctrl+v (like MOD+Shift+v).
# @flag --list-cameras                           List device cameras.
# @flag --list-camera-sizes                      List the valid camera capture sizes.
# @flag --list-displays                          List device displays.
# @flag --list-encoders                          List video and audio encoders available on the device.
# @option --lock-video-orientation[unlocked|initial|0|90|180|270] <value>  Lock capture video orientation to value.
# @option -m --max-size <value>                  Limit both the width and height of the video to value.
# @flag -M --hid-mouse                           Simulate a physical mouse by using HID over AOAv2.
# @option --max-fps <value>                      Limit the frame rate of screen capture (officially supported since Android 10, but may work on earlier versions).
# @flag -n --no-control                          Disable device control (mirror the device in read-only).
# @flag -N --no-playback                         Disable video and audio playback on the computer (equivalent to --no-video-playback --no-audio-playback).
# @flag --no-audio                               Disable audio forwarding.
# @flag --no-audio-playback                      Disable audio playback on the computer.
# @flag --no-cleanup                             By default, scrcpy removes the server binary from the device and restores the device state (show touches, stay awake and power mode) on exit.
# @flag --no-clipboard-autosync                  By default, scrcpy automatically synchronizes the computer clipboard to the device clipboard before injecting Ctrl+v, and the device clipboard to the computer clipboard whenever it changes.
# @flag --no-downsize-on-error                   By default, on MediaCodec error, scrcpy automatically tries again with a lower definition.
# @flag --no-key-repeat                          Do not forward repeated key events when a key is held down.
# @flag --no-mipmaps                             If the renderer is OpenGL 3.0+ or OpenGL ES 2.0+, then mipmaps are automatically generated to improve downscaling quality.
# @flag --no-power-on                            Do not power on the device on start.
# @flag --no-video                               Disable video forwarding.
# @flag --no-video-playback                      Disable video playback on the computer.
# @option --orientation <value>                  Same as --display-orientation=value --record-orientation=value.
# @flag --otg                                    Run in OTG mode: simulate physical keyboard and mouse, as if the computer keyboard and mouse were plugged directly to the device via an OTG cable.
# @option -p --port <port[:port]>                Set the TCP port (range) used by the client to listen.
# @option --pause-on-exit[true|false|if-error] <mode>  Configure pause on exit.
# @flag --power-off-on-close                     Turn the device screen off when closing scrcpy.
# @flag --prefer-text                            Inject alpha characters and space as text events instead of key events.
# @flag --print-fps                              Start FPS counter, to print framerate logs to the console.
# @option --push-target <path>                   Set the target directory for pushing files to the device by drag & drop.
# @option -r --record <file>                     Record screen to file.
# @flag --raw-key-events                         Inject key events for all input keys, and ignore text events.
# @option --record-format[mp4|mkv|m4a|mka|opus|aac|flac|wav] <format>  Force recording format (mp4, mkv, m4a, mka, opus, aac, flac or wav).
# @option --record-orientation[0|90|180|270] <value>  Set the record orientation.
# @option --render-driver[direct3d|opengl|opengles2|opengles|metal|software] <name>  Request SDL to use the given render driver (this is just a hint).
# @flag --require-audio                          By default, scrcpy mirrors only the video when audio capture fails on the device.
# @option -s --serial[`_choice_serial`] <serial>  The device serial number.
# @flag -S --turn-screen-off                     Turn the device screen off immediately.
# @option --shortcut-mod[lctrl|rctrl|lalt|ralt|lsuper|rsuper] <key[+...][,...]>  Specify the modifiers to use for scrcpy shortcuts.
# @flag -t --show-touches                        Enable "show touches" on start, restore the initial value on exit.
# @option --tcpip <ip[:port]>                    Configure and reconnect the device over TCP/IP.
# @option --time-limit <seconds>                 Set the maximum mirroring time, in seconds.
# @option --tunnel-host <ip>                     Set the IP address of the adb tunnel to reach the scrcpy server.
# @option --tunnel-port <port>                   Set the TCP port of the adb tunnel to reach the scrcpy server.
# @flag -v --version                             Print the version of scrcpy.
# @option -V --verbosity[verbose|debug|info|warn|error] <value>  Set the log level (verbose, debug, info, warn or error).
# @option --v4l2-sink </dev/videoN>              Output to v4l2loopback device.
# @option --v4l2-buffer <ms>                     Add a buffering delay (in milliseconds) before pushing frames.
# @option --video-codec[h264|h265|av1] <name>    Select a video codec (h264, h265 or av1).
# @option --video-codec-options <key[:type]=value[,...]>  Set a list of comma-separated key:type=value options for the device video encoder.
# @option --video-encoder <name>                 Use a specific MediaCodec video encoder (depending on the codec provided by --video-codec).
# @option --video-source[display|camera] <source>  Select the video source (display or camera).
# @flag -w --stay-awake                          Keep the device on while scrcpy is running, when the device is plugged in.
# @flag --window-borderless                      Disable window decorations (display borderless window).
# @option --window-title <text>                  Set a custom window title.
# @option --window-x <value>                     Set the initial window horizontal position.
# @option --window-y <value>                     Set the initial window vertical position.
# @option --window-width <value>                 Set the initial window width.
# @option --window-height <value>                Set the initial window height.

_choice_serial() {
    adb devices | gawk '$2 == "device" {print $1}'
}

command eval "$(argc --argc-eval "$0" "$@")"